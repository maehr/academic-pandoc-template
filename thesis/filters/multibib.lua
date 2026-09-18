--[[
multibib – create multiple bibliographies

Copyright © 2018-2024 Albert Krewinkel

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
]]
PANDOC_VERSION:must_be_at_least '2.11'

local pandoc = require 'pandoc'
local List   = require 'pandoc.List'
local utils  = require 'pandoc.utils'
local stringify = utils.stringify
local run_json_filter = utils.run_json_filter

--- get the type of meta object
local metatype = pandoc.utils.type or
  function (v)
    local metatag = type(v) == 'table' and v.t and v.t:gsub('^Meta', '')
    return metatag and metatag ~= 'Map' and metatag or type(v)
  end

--- Collection of all cites in the document
local all_cites = {}
--- Document meta value
local doc_meta = pandoc.Meta{}

--- Div used by citeproc to insert the bibliography.
local refs_div = pandoc.Div({}, pandoc.Attr('refs'))

-- Div filled by citeproc with properties set according to
-- the output format and the attributes of cs:bibliography
local refs_div_with_properties

--- Run citeproc on a pandoc document
--
-- Falls back to the external `pandoc-citeproc` filter if the built-in
-- citeproc processor is not available. Tries to silence all citeproc
-- warnings, which isn't possible in some versions.
local citeproc = utils.citeproc
if pcall(require, 'pandoc.log') and citeproc then
  -- silence all warnings if possible
  local log = require 'pandoc.log'
  citeproc = function (...)
    return select(2, log.silence(utils.citeproc, ...))
  end
elseif not citeproc then
  -- Use pandoc as a citeproc processor
  citeproc = function (doc)
    local opts = {'--from=json', '--to=json', '--citeproc', '--quiet'}
    return run_json_filter(doc, 'pandoc', opts)
  end
end

--- Resolve citations in the document by combining all bibliographies
-- before running citeproc on the full document.
local function resolve_doc_citations (doc)
  -- combine all bibliographies
  local meta = doc.meta
  local bibconf = meta.bibliography; local orig_bib = meta.bibliography; print("BIBTYPE: " .. metatype(bibconf))
  meta.bibliography = pandoc.MetaList{}
  if metatype(bibconf) == 'table' then
    for _, value in pairs(bibconf) do
      table.insert(meta.bibliography, stringify(value))
    end
  end
  -- Also collect bibliography_<name> fields (e.g., bibliography_main, bibliography_sources)
  for name, value in pairs(meta) do
    if name:match('^bibliography_') then
      table.insert(meta.bibliography, value)
    end
  end
  -- add refs div to catch the created bibliography
  table.insert(doc.blocks, refs_div)
  -- resolve all citations
  print("COMBINED BIB:"); for _, v in ipairs(meta.bibliography) do print(v) end; doc = citeproc(doc)
  -- remove catch-all bibliography and keep it for future use
  refs_div_with_properties = table.remove(doc.blocks)
  -- restore bibliography to original value
  doc.meta.bibliography = orig_bib
  return doc
end

--- Explicitly create a new meta object with all fields relevant for
--- pandoc-citeproc.
local function meta_for_pandoc_citeproc (bibliography)
  -- We could just indiscriminately copy all meta fields, but let's be
  -- explicit about what's important.
  local fields = {
    'bibliography', 'references', 'csl', 'citation-style',
    'link-citations', 'citation-abbreviations', 'lang',
    'suppress-bibliography', 'reference-section-title',
    'notes-after-punctuation', 'nocite'
  }
  local new_meta = pandoc.Meta{}
  for _, field in ipairs(fields) do
    new_meta[field] = doc_meta[field]
  end
  new_meta.bibliography = bibliography
  return new_meta
end

local function remove_duplicates(classes)
  local seen = {}
  return classes:filter(function(x)
      if seen[x] then
        return false
      else
        seen[x] = true
        return true
      end
  end)
end

--- Create a bibliography for a given topic. This acts on all divs whose
-- ID starts with "refs", followed by nothing but underscores and
-- alphanumeric characters.
local function create_topic_bibliography (div)
  local name = div.identifier:match('^refs[-_]?([-_%w]*)$')
  local bibfile = name and (doc_meta.bibliography or {})[name]
  if not bibfile then
    -- Fall back to bibliography_<name> format (e.g., bibliography_main, bibliography_sources)
    bibfile = name and doc_meta['bibliography_' .. name]
  end
  if not bibfile then
    return nil
  end
  local tmp_blocks = {pandoc.Para(all_cites), refs_div}
  local tmp_meta = meta_for_pandoc_citeproc(bibfile)
  local tmp_doc = pandoc.Pandoc(tmp_blocks, tmp_meta)
  local res = citeproc(tmp_doc)
  -- First block of the result contains the dummy paragraph, second is
  -- the refs Div filled by citeproc.
  div.content = res.blocks[2].content
  -- Set the classes and attributes as citeproc did it on refs_div
  div.classes = remove_duplicates(refs_div_with_properties.classes)
  div.attributes = refs_div_with_properties.attributes
  if FORMAT == 'odt' or FORMAT == 'docx' then
    -- Pandoc assignes the "Bibliography" to reference sections in Word, so
    -- let's do it here, too, unless it's already set.
    div.attributes['custom-style'] = div.attributes['custom-style']
      or 'Bibliography'
  end

  return div
end

return {
  {
    -- Collect all citations and the doc's Meta value for other filters.
    Cite = function (c) all_cites[#all_cites + 1] = c end,
    Meta = function (m) doc_meta = m end,
  },
  { Pandoc = resolve_doc_citations },
  { Div = create_topic_bibliography },
}
