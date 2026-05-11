function Pandoc(doc)
  -- Inject citeproc definition for LaTeX
  local latex_citeproc = [[
\makeatletter
\newcommand{\citeproc}[2]{#2}
\makeatother
]]
  if doc.meta['header-includes'] then
    table.insert(doc.meta['header-includes'], pandoc.RawBlock('latex', latex_citeproc))
  else
    doc.meta['header-includes'] = pandoc.MetaList{pandoc.RawBlock('latex', latex_citeproc)}
  end
  return doc
end
