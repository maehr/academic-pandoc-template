---
layout: default
---

# Write Markdown

## Heading

```markdown
# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5
```

## Emphasis

```markdown
Emphasis, aka italics, with *asterisks* or _underscores_.

Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two tildes. ~~Scratch this.~~
```

## Lists

```markdown
1. First ordered list item
2. Another item
⋅⋅* Unordered sub-list.
1. Actual numbers don't matter, just that it's a number
⋅⋅1. Ordered sub-list
4. And another item.

⋅⋅⋅You can have properly indented paragraphs within list items. Notice the blank line above, and the leading spaces (at least one, but we'll use three here to also align the raw Markdown).

⋅⋅⋅To have a line break without a paragraph, you will need to use two trailing spaces.⋅⋅
⋅⋅⋅Note that this line is separate, but within the same paragraph.⋅⋅
⋅⋅⋅(This is contrary to the typical GFM line break behaviour, where trailing spaces are not required.)

* Unordered list can use asterisks
- Or minuses
+ Or pluses
```

## Links

```markdown
[I'm an inline-style link](https://www.google.com)

[I'm an inline-style link with title](https://www.google.com "Google's Homepage")

[I'm a relative reference to a repository file](../blob/master/LICENSE.md)

[You can use numbers for reference-style link definitions][1]

Or leave it empty and use the [link text itself].

URLs and URLs in angle brackets will automatically get turned into links.
http://www.example.com or <http://www.example.com> and sometimes
example.com (but not on Github, for example).
```

## Images

```markdown
Save your image (jpg or png format only) to `template/` and insert it like this:

![Figure caption text](template/cat.jpg "Logo Title Text 1")
```

## Tables

```markdown
Colons can be used to align columns.

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

Table: Table captions are done like this.

There must be at least 3 dashes separating each header cell.
The outer pipes (|) are optional, and you don't need to make the
raw Markdown line up prettily. You can also use inline Markdown.

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3
```

## Blockquotes

```markdown
> Blockquotes are very handy in email to emulate reply text.
> This line is part of the same quote.

Quote break.

> This is a very long line that will still be quoted properly when it wraps. Oh boy let's keep writing to make sure this is long enough to actually wrap for everyone. Oh, you can *put* **Markdown** into a blockquote.
```

## Footnotes

```markdown
Footnotes are best placed right after the paragraph first used.[^footnote]

[^footnote]: But you can also put them at the end of the document.
```

If you want to use endnotes instead turn them on in document options.

## Comments

```markdown
<!-- Comments are not shown in the final PDF. -->
```

# Citations and bibliographies

## Citations JabRef

1. Open `template/references.bib` with [JabRef](https://www.jabref.org/).

2. Insert, delete or modify references (set the CiteKey and memorize it for later use)

3. Save the file

![JabRef](jab-ref.png)

## Add citations to your document

```markdown
Citations go inside square brackets and are separated by semicolons. Each citation must have a key, composed of ‘@’ + the citation identifier from the database, and may optionally have a prefix, a locator, and a suffix. Here are some examples:

Blah blah [see @doe99, pp. 33-35; also @smith04, ch. 1].

Blah blah [@doe99, pp. 33-35, 38-39 and *passim*].

Blah blah [@smith04; @doe99].

A minus sign (-) before the @ will suppress mention of the author in the citation. This can be useful when the author is already mentioned in the text:

Smith says blah [-@smith04].

You can also write an in-text citation, as follows:

@smith04 says blah.

@smith04 [p. 33] says blah.
```

## Change citations style

Choose a style from the list [CSL-Repository](https://www.zotero.org/styles) (or its corresponding [GitHub Repo](https://github.com/citation-style-language/styles)) and overwrite `template/style.csl`.

## Bibliography

The last heading without any text following will be the heading for the bibliography.

# Advanced Formatting [(Taken from Pandoc Manual)](http://pandoc.org/MANUAL.html#variables-for-latex)

The Academic Pandoc Template already comes with a predefined header block in `template/academic-pandoc-template.md` which looks like this:

```yaml
---
# Front matter
lang: de-CH # Use language codes like de, de-DE, en, en-UK, en-US, fr, it, ...
title: "Ein schöner Titel"
subtitle: "ein wundervoller Untertitel"
author: "Petra Muster"
date: 30-06-2018
abstract: "Hier Vorgang ihm als reiße. Ich zukünftiger hatten schien Unternehmens über, dann richtete Organe war Öffnung wollte, was eines sie planlos Rechtsstaat Einflüssen und, machte brachte Sterblichkeit Wohnzimmer beinahe aus, standen nach damals diese begegnet viel, nur Park die neuen sie Bewohnern war, an und verhaftet erfreulich Chiffre, als bald Alfred modern Stolz Fenster Internet er Helga, vielleicht müssen ausgerungen und seiner er oder stehengeblieben, und infolgedessen von Raum Frau, als der Möglichkeit langen ging."
keywords: "Schlagworte, Worte"
thanks: "Herzlichen Dank an Gabriela Muster für die wertvollen Kommentare."

# Bibliography
csl: https://www.zotero.org/styles/chicago-note-bibliography # See https://www.zotero.org/styles for more styles.
bibliography: references.bib # See https://github.com/jgm/pandoc-citeproc/blob/master/man/pandoc-citeproc.1.md for more formats.
suppress-bibliography: false
link-citations: true
color-links: true # See https://ctan.org/pkg/xcolor for colors
linkcolor: black
urlcolor: black
citecolor: black
endnote: false

# Formatting
toc-title: "Inhaltsverzeichnis"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
# Uncomment and check https://tug.org/FontCatalogue/ and https://fonts.google.com/ for fonts
# mainfont: "Merriweather"
# sansfont: "Raleway"
# monofont: "IBM Plex Mono"
# mathfont:
documentclass: report # See https://en.wikibooks.org/wiki/LaTeX/Document_Structure#Document_classes for more classes and options
classoption: [notitlepage, onecolumn, openany]
geometry: [a4paper, bindingoffset=0mm, inner=30mm, outer=30mm, top=30mm, bottom=30mm] # See https://ctan.org/pkg/geometry for more options
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
# if you use RStudio uncomment these lines
# output:
#   word_document:
#     path: academic-pandoc-template.docx
#   pdf_document:
#     path: academic-pandoc-template.pdf
---
```

You can easily add, remove or modify these variables by editing the corresponding value.

## Variables

### Metadata variables

`title`, `author`, `date`

allow identification of basic aspects of the document. Included in PDF metadata through LaTeX and ConTeXt. These can be set through a [pandoc title block](https://pandoc.org/MANUAL.html#extension-pandoc_title_block), which allows for multiple authors, or through a [YAML metadata block](https://pandoc.org/MANUAL.html#extension-yaml_metadata_block):

```
---
author:
- Aristotle
- Peter Abelard
...
```

Note that if you just want to set PDF or HTML metadata, without including a title block in the document itself, you can set the `title-meta`, `author-meta`, and `date-meta` variables. (By default these are set automatically, based on `title`, `author`, and `date`.) The page title in HTML is set by `pagetitle`, which is equal to `title` by default.

`subtitle`

document subtitle, included in HTML, EPUB, LaTeX, ConTeXt, and docx documents

`abstract`

document summary, included in LaTeX, ConTeXt, AsciiDoc, and docx documents

`keywords`

list of keywords to be included in HTML, PDF, ODT, pptx, docx and AsciiDoc metadata; repeat as for `author`, above

`subject`

document subject, included in ODT, PDF, docx and pptx metadata

`description`

document description, included in ODT, docx and pptx metadata. Some applications show this as `Comments` metadata.

`category`

document category, included in docx and pptx metadata

Additionally, any root-level string metadata, not included in ODT, docx or pptx metadata is added as a *custom property*. The following [YAML](https://yaml.org/spec/1.2/spec.html "YAML v1.2 Spec") metadata block for instance:

```
---
title:  'This is the title'
subtitle: "This is the subtitle"
author:
- Author One
- Author Two
description: |
    This is a long
    description.

    It consists of two paragraphs
...
```

will include `title`, `author` and `description` as standard document properties and `subtitle` as a custom property when converting to docx, ODT or pptx.

### Language variables

`lang`

identifies the main language of the document using IETF language tags (following the [BCP 47](https://tools.ietf.org/html/bcp47) standard), such as `en` or `en-GB`. The [Language subtag lookup](https://r12a.github.io/app-subtags/) tool can look up or verify these tags. This affects most formats, and controls hyphenation in PDF output when using LaTeX (through [`babel`](https://ctan.org/pkg/babel) and [`polyglossia`](https://ctan.org/pkg/polyglossia)) or ConTeXt.

Use native pandoc [Divs and Spans](https://pandoc.org/MANUAL.html#divs-and-spans) with the `lang` attribute to switch the language:

```
---
lang: en-GB
...

Text in the main document language (British English).

::: {lang=fr-CA}
> Cette citation est écrite en français canadien.
:::

More text in English. ['Zitat auf Deutsch.']{lang=de}
```

`dir`

the base script direction, either `rtl` (right-to-left) or `ltr` (left-to-right).

For bidirectional documents, native pandoc `span`s and `div`s with the `dir` attribute (value `rtl` or `ltr`) can be used to override the base direction in some output formats. This may not always be necessary if the final renderer (e.g. the browser, when generating HTML) supports the [Unicode Bidirectional Algorithm](https://www.w3.org/International/articles/inline-bidi-markup/uba-basics).

When using LaTeX for bidirectional documents, only the `xelatex` engine is fully supported (use [`--pdf-engine=xelatex`](https://pandoc.org/MANUAL.html#option--pdf-engine)).

### Variables for LaTeX

Pandoc uses these variables when [creating a PDF](https://pandoc.org/MANUAL.html#creating-a-pdf) with a LaTeX engine.

#### Layout

`block-headings`

make `\paragraph` and `\subparagraph` (fourth- and fifth-level headings, or fifth- and sixth-level with book classes) free-standing rather than run-in; requires further formatting to distinguish from `\subsubsection` (third- or fourth-level headings). Instead of using this option, [KOMA-Script](https://ctan.org/pkg/koma-script) can adjust headings more extensively:

```
---
documentclass: scrartcl
header-includes: |
  \RedeclareSectionCommand[
    beforeskip=-10pt plus -2pt minus -1pt,
    afterskip=1sp plus -1sp minus 1sp,
    font=\normalfont\itshape]{paragraph}
  \RedeclareSectionCommand[
    beforeskip=-10pt plus -2pt minus -1pt,
    afterskip=1sp plus -1sp minus 1sp,
    font=\normalfont\scshape,
    indent=0pt]{subparagraph}
...
```

`classoption`

option for document class, e.g. `oneside`; repeat for multiple options:

```
---
classoption:
- twocolumn
- landscape
...
```

`documentclass`

document class: usually one of the standard classes, [`article`](https://ctan.org/pkg/article), [`book`](https://ctan.org/pkg/book), and [`report`](https://ctan.org/pkg/report); the [KOMA-Script](https://ctan.org/pkg/koma-script) equivalents, `scrartcl`, `scrbook`, and `scrreprt`, which default to smaller margins; or [`memoir`](https://ctan.org/pkg/memoir)

`geometry`

option for [`geometry`](https://ctan.org/pkg/geometry) package, e.g. `margin=1in`; repeat for multiple options:

```
---
geometry:
- top=30mm
- left=20mm
- heightrounded
...
```

`hyperrefoptions`

option for [`hyperref`](https://ctan.org/pkg/hyperref) package, e.g. `linktoc=all`; repeat for multiple options:

```
---
hyperrefoptions:
- linktoc=all
- pdfwindowui
- pdfpagemode=FullScreen
...
```

`indent`

if true, pandoc will use document class settings for indentation (the default LaTeX template otherwise removes indentation and adds space between paragraphs)

`linestretch`

adjusts line spacing using the [`setspace`](https://ctan.org/pkg/setspace) package, e.g. `1.25`, `1.5`

`margin-left`, `margin-right`, `margin-top`, `margin-bottom`

sets margins if `geometry` is not used (otherwise `geometry` overrides these)

`pagestyle`

control `\pagestyle{}`: the default article class supports `plain` (default), `empty` (no running heads or page numbers), and `headings` (section titles in running heads)

`papersize`

paper size, e.g. `letter`, `a4`

`secnumdepth`

numbering depth for sections (with [`--number-sections`](https://pandoc.org/MANUAL.html#option--number-sections) option or `numbersections` variable)

#### Fonts

`fontenc`

allows font encoding to be specified through `fontenc` package (with `pdflatex`); default is `T1` (see [LaTeX font encodings guide](https://ctan.org/pkg/encguide))

`fontfamily`

font package for use with `pdflatex`: [TeX Live](https://www.tug.org/texlive/) includes many options, documented in the [LaTeX Font Catalogue](https://tug.org/FontCatalogue/). The default is [Latin Modern](https://ctan.org/pkg/lm).

`fontfamilyoptions`

options for package used as `fontfamily`; repeat for multiple options. For example, to use the Libertine font with proportional lowercase (old-style) figures through the [`libertinus`](https://ctan.org/pkg/libertinus) package:

```
---
fontfamily: libertinus
fontfamilyoptions:
- osf
- p
...
```

`fontsize`

font size for body text. The standard classes allow 10pt, 11pt, and 12pt. To use another size, set `documentclass` to one of the [KOMA-Script](https://ctan.org/pkg/koma-script) classes, such as `scrartcl` or `scrbook`.

`mainfont`, `sansfont`, `monofont`, `mathfont`, `CJKmainfont`

font families for use with `xelatex` or `lualatex`: take the name of any system font, using the [`fontspec`](https://ctan.org/pkg/fontspec) package. `CJKmainfont` uses the [`xecjk`](https://ctan.org/pkg/xecjk) package.

`mainfontoptions`, `sansfontoptions`, `monofontoptions`, `mathfontoptions`, `CJKoptions`

options to use with `mainfont`, `sansfont`, `monofont`, `mathfont`, `CJKmainfont` in `xelatex` and `lualatex`. Allow for any choices available through [`fontspec`](https://ctan.org/pkg/fontspec); repeat for multiple options. For example, to use the [TeX Gyre](http://www.gust.org.pl/projects/e-foundry/tex-gyre) version of Palatino with lowercase figures:

```
---
mainfont: TeX Gyre Pagella
mainfontoptions:
- Numbers=Lowercase
- Numbers=Proportional
...
```

`microtypeoptions`

options to pass to the microtype package

#### Links

`colorlinks`

add color to link text; automatically enabled if any of `linkcolor`, `filecolor`, `citecolor`, `urlcolor`, or `toccolor` are set

`linkcolor`, `filecolor`, `citecolor`, `urlcolor`, `toccolor`

color for internal links, external links, citation links, linked URLs, and links in table of contents, respectively: uses options allowed by [`xcolor`](https://ctan.org/pkg/xcolor), including the `dvipsnames`, `svgnames`, and `x11names` lists

`links-as-notes`

causes links to be printed as footnotes

#### Front matter

`lof`, `lot`

include list of figures, list of tables

`thanks`

contents of acknowledgments footnote after document title

`toc`

include table of contents (can also be set using [`--toc/--table-of-contents`](https://pandoc.org/MANUAL.html#option--toc))

`toc-depth`

level of section to include in table of contents

#### BibLaTeX Bibliographies

These variables function when using BibLaTeX for [citation rendering](https://pandoc.org/MANUAL.html#citation-rendering).

`biblatexoptions`

list of options for biblatex

`biblio-style`

bibliography style, when used with [`--natbib`](https://pandoc.org/MANUAL.html#option--natbib) and [`--biblatex`](https://pandoc.org/MANUAL.html#option--biblatex).

`biblio-title`

bibliography title, when used with [`--natbib`](https://pandoc.org/MANUAL.html#option--natbib) and [`--biblatex`](https://pandoc.org/MANUAL.html#option--biblatex).

`bibliography`

bibliography to use for resolving references

`natbiboptions`

list of options for natbib

### Variables set automatically

Pandoc sets these variables automatically in response to [options](https://pandoc.org/MANUAL.html#options) or document contents; users can also modify them. These vary depending on the output format, and include the following:

`body`

body of document

`date-meta`

the `date` variable converted to ISO 8601 YYYY-MM-DD, included in all HTML based formats (dzslides, epub, html, html4, html5, revealjs, s5, slideous, slidy). The recognized formats for `date` are: `mm/dd/yyyy`, `mm/dd/yy`, `yyyy-mm-dd` (ISO 8601), `dd MM yyyy` (e.g. either `02 Apr 2018` or `02 April 2018`), `MM dd, yyyy` (e.g. `Apr. 02, 2018` or `April 02, 2018),`yyyy[mm[dd]]]`(e.g.`20180402, `201804` or `2018`).

`header-includes`

contents specified by [`-H/--include-in-header`](https://pandoc.org/MANUAL.html#option--include-in-header) (may have multiple values)

`include-before`

contents specified by [`-B/--include-before-body`](https://pandoc.org/MANUAL.html#option--include-before-body) (may have multiple values)

`include-after`

contents specified by [`-A/--include-after-body`](https://pandoc.org/MANUAL.html#option--include-after-body) (may have multiple values)

`meta-json`

JSON representation of all of the document’s metadata. Field values are transformed to the selected output format.

`numbersections`

non-null value if [`-N/--number-sections`](https://pandoc.org/MANUAL.html#option--number-sections) was specified

`sourcefile`, `outputfile`

source and destination filenames, as given on the command line. `sourcefile` can also be a list if input comes from multiple files, or empty if input is from stdin. You can use the following snippet in your template to distinguish them:

```
$if(sourcefile)$
$for(sourcefile)$
$sourcefile$
$endfor$
$else$
(stdin)
$endif$
```

Similarly, `outputfile` can be `-` if output goes to the terminal.

If you need absolute paths, use e.g. `$curdir$/$sourcefile$`.

`curdir`

working directory from which pandoc is run.

`toc`

non-null value if [`--toc/--table-of-contents`](https://pandoc.org/MANUAL.html#option--toc) was specified

`toc-title`

title of table of contents (works only with EPUB, HTML, opendocument, odt, docx, pptx, beamer, LaTeX)

[back](./)
