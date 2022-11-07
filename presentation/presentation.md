---
author:
  - '[Eleanor Roosevelt](eleanor.eoosevelt@domain.com)'
  - '[John Peters Humphrey](jph@domain.com)'
bibliography: references.bib # bibliography to use for resolving references
csl: https://www.zotero.org/styles/chicago-author-date
date: 1 January 2023
documentclass: beamer
keywords: # list of keywords to be included in HTML, PDF, ODT, pptx, docx and AsciiDoc metadata; repeat as for author, above
lang: en-US
nocite: |
  @brown2016
references:
  - id: unitednations1948
    author:
      - literal: United Nations
    citation-key: unitednations1948
    issued:
      - year: 1948
        month: 12
    title: Universal Declaration of Human Rights
    type: book
subtitle: 'Subtitle'
title: 'Title'
toc: true

# Fonts
fontenc: # allows font encoding to be specified through fontenc package (with pdflatex); default is T1 (see LaTeX font encodings guide)
fontfamily: # font package for use with pdflatex: TeX Live includes many options, documented in the LaTeX Font Catalogue. The default is Latin Modern.
fontfamilyoptions: # options for package used as fontfamily; repeat for multiple options.
fontsize: # font size for body text. The standard classes allow 10pt, 11pt, and 12pt. To use another size, set documentclass to one of the KOMA-Script classes, such as scrartcl or scrbook.
mainfont:
sansfont:
monofont:
mathfont:
mainfontoptions:
sansfontoptions:
monofontoptions:
mathfontoptions:

# Beamer slides
aspectratio: 169 #slide aspect ratio (43 for 4:3 [default], 169 for 16:9, 1610 for 16:10, 149 for 14:9, 141 for 1.41:1, 54 for 5:4, 32 for 3:2)
beameroption: #add extra beamer option with \setbeameroption{}
institute: United Nations # author affiliations: can be a list when there are multiple authors
logo: #logo image for slides
navigation: # controls navigation symbols (default is empty for no navigation symbols; other valid values are frame, vertical, and horizontal)
section-titles: # enables “title pages” for new sections (default is true)
theme:
colortheme:
fonttheme:
innertheme:
outertheme:
themeoptions: # options for LaTeX beamer themes (a list).
titlegraphic: # image for title slide

# PowerPoint
monofont: # font to use for code.

# reveal.js
# All reveal.js configuration options are available as variables. To turn off boolean flags that default to true in reveal.js, use 0.
---

# Heading 1

All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights.

::: notes

This is a note visible in PowerPoint.

- It can contain Markdown
- like this list

:::

## Heading 2

All human beings are born free and equal in dignity and rights.

### Heading 3

All human beings are born free and equal in dignity and rights.

#### Heading 4

All human beings are born free and equal in dignity and rights.

## Bold

**All human beings are born free and equal in dignity and rights.** All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.

## Italic

_All human beings are born free and equal in dignity and rights._ All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.

## Bold and italic

**_All human beings are born free and equal in dignity and rights._** All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.

## Struck through

~~All human beings are born free and equal in dignity and rights.~~ All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.All human beings are born free and equal in dignity and rights.

## Numbered lists

1. All human beings are born free and equal in dignity and rights.
1. All human beings are born free and equal in dignity and rights.
1. All human beings are born free and equal in dignity and rights.
1. All human beings are born free and equal in dignity and rights.

## Unnumbered lists

- All human beings are born free and equal in dignity and rights.
  - All human beings are born free and equal in dignity and rights.
- All human beings are born free and equal in dignity and rights.

## Mixed lists

- All human beings are born free and equal in dignity and rights.
  1. All human beings are born free and equal in dignity and rights.
  2. All human beings are born free and equal in dignity and rights.
- All human beings are born free and equal in dignity and rights.

## Figures and captions

![Eleanor Roosevelt hält die englische Version der Allgemeinen Erklärung der Menschenrechte (FDR Presidential Library & Museum, CC BY 2.0 <https://creativecommons.org/licenses/by/2.0>, via Wikimedia Commons)](images/Eleanor_Roosevelt_and_Human_Rights_Declaration.jpeg){height=60%}

## Code

```bash
ping wikipedia.org
```

## URLs and email addresses

[wikipedia.org](https://www.wikipedia.org/), [info@wikipedia.org](mailto:info@wikipedia.org). All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights.

## Tables

| column 1                                                        | column 2                                                        |
| --------------------------------------------------------------- | --------------------------------------------------------------- |
| All human beings are born free and equal in dignity and rights. | All human beings are born free and equal in dignity and rights. |
| All human beings are born free and equal in dignity and rights. | All human beings are born free and equal in dignity and rights. |
| All human beings are born free and equal in dignity and rights. | All human beings are born free and equal in dignity and rights. |
| All human beings are born free and equal in dignity and rights. | All human beings are born free and equal in dignity and rights. |

: Table caption

## Footnotes

All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights.^[All human beings are born free and equal in dignity and rights.]

## Quotes

> All human beings are born free and equal in dignity and rights.

All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights.

## Scientific citations

::: {lang=en}

> All human beings are born free and equal in dignity and rights. They are endowed with reason and conscience and should act towards one another in a spirit of brotherhood. @unitednations1948

:::

All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights. All human beings are born free and equal in dignity and rights.[@unitednations1948]

## Two columns of equal width

::: columns

:::: column

Left column text.

Another text line.

::::

:::: column

- Item 1.
- Item 2.
- Item 3.

::::

:::

## Two columns of with 40:60 split

::: columns

:::: {.column width=40%}

Left column text.

Another text line.

::::

:::: {.column width=60%}

- Item 1.
- Item 2.
- Item 3.

::::

:::

## Three columns with equal split

::: columns

:::: column

Left column text.

Another text line.

::::

:::: column

Middle column list:

1. Item 1.
2. Item 2.

::::

:::: column

Right column list:

- Item 1.
- Item 2.

::::

:::

## Three columns with 30:40:30 split

::: columns

:::: {.column width=30%}

Left column text.

Another text line.

::::

:::: {.column width=40%}

Middle column list:

1. Item 1.
2. Item 2.

::::

:::: {.column width=30%}

Right column list:

- Item 1.
- Item 2.

::::

:::

## Two columns: image and text

::: columns

:::: column

![](images/Eleanor_Roosevelt_and_Human_Rights_Declaration.jpeg){height=50%}

::::

:::: column

Text in the right column.

List from the right column:

- Item 1.
- Item 2.

::::

:::

## Two columns: image and table

::: columns

:::: column

![](images/Eleanor_Roosevelt_and_Human_Rights_Declaration.jpeg){height=50%}

::::

:::: column

| **Item** | **Option** |
| :------- | :--------: |
| Item 1   |  Option 1  |
| Item 2   |  Option 2  |

::::

:::

## Bibliography

::: {#refs}
:::
