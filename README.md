# Academic Pandoc template

Write beautifully typeset academic texts with distraction-free [Markdown](https://daringfireball.net/projects/markdown/syntax) and [Pandoc](http://pandoc.org/MANUAL.html).

[![GitHub issues](https://img.shields.io/github/issues/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/stargazers)
[![GitHub license](https://img.shields.io/github/license/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/blob/master/LICENSE.md)
[![DOI](https://zenodo.org/badge/139726344.svg)](https://zenodo.org/badge/latestdoi/139726344)

![Preview](academic-pandoc-template.png)

## Getting Started

Read the [documentation](https://maehr.github.io/academic-pandoc-template/) and make sure you have a Markdown editor like [Zettlr](https://www.zettlr.com/) and a Bibtex editor like [JabRef](http://www.jabref.org/) installed.

### Use it online

1. [Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) the [academic-pandoc-template](https://github.com/maehr/academic-pandoc-template)
2. Edit `/template/academic-pandoc-template.md` according to the [Markdown guide](https://commonmark.org/help/tutorial/) [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [Zettlr](https://www.zettlr.com/) or with your favorite Markdown editor
3. Edit `/template/references.bib` [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [JabRef](http://www.jabref.org/) or with your favorite Bibtex editor
4. [Commit](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project) your changes
5. [GitHub actions](https://docs.github.com/en/actions/managing-workflow-runs/downloading-workflow-artifacts) will compile an updated PDF and a DOCX document and store these artifacts

### Use it locally

Install all prerequisites

- [Pandoc 2.11 or newer](http://pandoc.org/installing.html)
- [Tectonic](https://tectonic-typesetting.github.io/) or another [LaTeX](https://www.latex-project.org/get/) distribution

Open your command line and execute the following commands.

```bash
pandoc --defaults pdf.yaml
pandoc --defaults docx.yaml
```

## Configuration

### YAML metadata blocks

Pandoc allows to write different [variables](https://pandoc.org/MANUAL.html#variables-for-latex) into the document via YAML metadata blocks in `template/academic-pandoc-template.md`.

```markdown
---
# Front matter
lang: de-CH
---

# Vowort

(...)
```

#### Front matter

```yaml
lang: de-CH # Use language codes like de, de-DE, en, en-UK, en-US, fr, it, ...
title: 'Ein schöner Titel'
subtitle: 'ein wundervoller Untertitel'
author: 'Petra Muster'
date: 30-06-2018
abstract: 'Hier Vorgang ihm als reiße. Ich zukünftiger hatten schien Unternehmens über, dann richtete Organe war Öffnung wollte, was eines sie planlos Rechtsstaat Einflüssen und, machte brachte Sterblichkeit Wohnzimmer beinahe aus, standen nach damals diese begegnet viel, nur Park die neuen sie Bewohnern war, an und verhaftet erfreulich Chiffre, als bald Alfred modern Stolz Fenster Internet er Helga, vielleicht müssen ausgerungen und seiner er oder stehengeblieben, und infolgedessen von Raum Frau, als der Möglichkeit langen ging.'
keywords: 'Schlagworte, Worte'
thanks: 'Herzlichen Dank an Gabriela Muster für die wertvollen Kommentare.'
```

#### Bibliography

```yaml
csl: https://www.zotero.org/styles/chicago-note-bibliography # See https://www.zotero.org/styles for more styles.
bibliography: references.bib # See https://github.com/jgm/pandoc-citeproc/blob/master/man/pandoc-citeproc.1.md for more formats.
suppress-bibliography: false
link-citations: true
color-links: true # See https://ctan.org/pkg/xcolor for colors
linkcolor: black
urlcolor: black
citecolor: black
endnote: false
```

#### Formatting

```yaml
toc-title: 'Inhaltsverzeichnis'
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
mainfont: # See https://tug.org/FontCatalogue/seriffonts.html for fonts
sansfont: # See https://tug.org/FontCatalogue/sansseriffonts.html for fonts
monofont: # See https://tug.org/FontCatalogue/typewriterfonts.html for fonts
mathfont: # See https://tug.org/FontCatalogue/mathfonts.html for fonts
documentclass: report # See https://www.ctan.org/topic/class
classoption: [notitlepage, onecolumn, openany]
geometry: [a4paper, bindingoffset=0mm, inner=30mm, outer=30mm, top=30mm, bottom=30mm] # See https://ctan.org/pkg/geometry for more options
```

### Default files

Pandoc accepts options via [default files](https://pandoc.org/MANUAL.html#default-files) for PDF-files in `pdf.yaml` and for Docx-files in `docx.yaml`.

```yaml
cite-method: citeproc # citeproc, natbib, or biblatex
citeproc: true
file-scope: false # Parse each file individually before combining for multifile documents. This will allow footnotes in different files with the same identifiers to work as expected. If this option is set, footnotes and links will not work across files.
from: markdown
highlight-style: pygments # kate, monochrome, breezeDark, espresso, zenburn, haddock, tango
input-files: [template/academic-pandoc-template.md]
log-file: log/pdf.log.json
output-file: output/academic-pandoc-template.pdf
pdf-engine: tectonic # wkhtmltopdf, weasyprint, prince, pdflatex, lualatex, xelatex, latexmk, pdfroff, context
reference-location: block # block, section, or document
resource-path: [template]
standalone: true
to: pdf
top-level-division: chapter # part, chapter, section, or default:
verbosity: WARNING # ERROR, WARNING, or INFO
```

## LaTeX snippets

````yaml
# LaTeX snippets
header-includes:
  - |
    ```{=latex}
    \linepenalty=10 % the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
    \interlinepenalty=0 % value of the penalty (node) added after each line of a paragraph.
    \hyphenpenalty=50 % the penalty for line breaking at an automatically inserted hyphen
    \exhyphenpenalty=50 % the penalty for line breaking at an explicit hyphen
    \binoppenalty=700 % the penalty for breaking a line at a binary operator
    \relpenalty=500 % the penalty for breaking a line at a relation
    \clubpenalty=150 % extra penalty for breaking after first line of a paragraph
    \widowpenalty=150 % extra penalty for breaking before last line of a paragraph
    \displaywidowpenalty=50 % extra penalty for breaking before last line before a display math
    \brokenpenalty=100 % extra penalty for page breaking after a hyphenated line
    \predisplaypenalty=10000 % penalty for breaking before a display
    \postdisplaypenalty=0 % penalty for breaking after a display
    \floatingpenalty = 20000 % penalty for splitting an insertion (can only be split footnote in standard LaTeX)
    ```
  - |
    ```{=latex}
    \raggedbottom % or \flushbottom
    ```
  - |
    ```{=latex}
    % keep figures where there are in the text
    \usepackage{float}
    \floatplacement{figure}{H}
    ```
  - |
    ```{=latex}
    % add custom hyphentation rules
    \hyphenation{Hyphenate-me-like-this Dontyoueverhyphenateme}
    ```
````

## Linting and formatting

Install the latest version of [Node](https://nodejs.org/) and all dependencies.

```bash
npm install
```

To use linting and formatting, use the following commands.

```bash
npm run check
npm run format
```

## Conventional Commits

Use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) for adding human and machine readable meaning to commit messages. Install [commitizen](https://github.com/commitizen/cz-cli).

```bash
npm install commitizen -g
```

To use Conventional Commits, use the following commands.

```bash
npm run commit
```

## Support

This project is maintained by [@maehr](https://github.com/maehr). Please understand that we won't be able to provide individual support via email. We also believe that help is much more valuable if it's shared publicly, so that more people can benefit from it.

| Type                                  | Platforms                                                                        |
| ------------------------------------- | -------------------------------------------------------------------------------- |
| 🚨 **Bug Reports**                    | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |
| 🎁 **Feature Requests**               | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |
| 🛡 **Report a security vulnerability** | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |

## Built With

- [commitizen](https://github.com/commitizen/cz-cli)
- [git-cliff](https://github.com/orhun/git-cliff)
- [husky](https://github.com/typicode/husky)
- [Pandoc](https://pandoc.org/) a universal document converter and
- [Pandoc GitHub action](https://github.com/pandoc/pandoc-action-example)
- [Prettier](https://prettier.io/) an opinionated code formatter
- [Tectonic](https://tectonic-typesetting.github.io/en-US/) a modernized, complete, self-contained [TeX](https://www.tug.org/)/[LaTeX](https://www.latex-project.org/) engine, powered by [XeTeX](http://xetex.sourceforge.net/) and [TeXLive](https://www.tug.org/texlive/)
- [Tectonic GitHub action](https://github.com/WtfJoke/setup-tectonic)

## Roadmap

No changes are currently planned.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/maehr/academic-pandoc-template/blob/master/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/maehr/academic-pandoc-template/tags).

## Authors

- **Moritz Mähr** - _Initial work_ - [maehr](https://github.com/maehr)

See also the list of [contributors](https://github.com/maehr/academic-pandoc-template/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

- Sarah Simpkin, "Getting Started with Markdown," _Programming Historian_ 4 (2015), [https://doi.org/10.46430/phen0046](https://doi.org/10.46430/phen0046).
- Dennis Tenen and Grant Wythoff, "Sustainable Authorship in Plain Text using Pandoc and Markdown," _Programming Historian_ 3 (2014), [https://doi.org/10.46430/phen0041](https://doi.org/10.46430/phen0041).
