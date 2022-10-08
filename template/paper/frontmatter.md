---
# Front matter
lang: en-US # Use language codes like de, de-DE, en, en-UK, en-US, fr, it, ...
title: 'Lorem ipsum'
subtitle: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'
author: 'Maria Smith'
date: 01-01-2022
abstract: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas bibendum elementum pellentesque. Donec aliquam suscipit mi, eu tincidunt tellus. Pellentesque tristique turpis lorem. Nunc suscipit non velit a elementum. Etiam vitae dui dolor. Nulla facilisi. In velit tortor, pellentesque vitae scelerisque sagittis, consequat rhoncus diam. Curabitur at odio quis felis tincidunt blandit. Cras ultricies nibh nec enim eleifend, quis tincidunt ante luctus. Suspendisse potenti. Cras pretium sagittis nisi ut congue. In hac habitasse platea dictumst. In laoreet leo eu urna pulvinar egestas at at tellus. Sed rutrum nulla tortor, non efficitur ex gravida luctus. Cras semper arcu sed elit imperdiet, at blandit mi fringilla.'
keywords: 'Pandoc, Markdown, template'
thanks: 'Many thanks to James Johnson Muster for his valuable comments.'

# Bibliography
csl: https://www.zotero.org/styles/chicago-note-bibliography # See https://www.zotero.org/styles for more styles.
bibliography: references.bib
suppress-bibliography: false
link-citations: true
color-links: true # See https://ctan.org/pkg/xcolor for colors
linkcolor: black
urlcolor: black
citecolor: black
endnote: false

# Formatting
toc-title: 'Contents'
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
mainfont: 'Crimson Text' # See https://tug.org/FontCatalogue/seriffonts.html for fonts
sansfont: 'IBM Plex Sans' # See https://tug.org/FontCatalogue/sansseriffonts.html for fonts
monofont: 'IBM Plex Mono' # See https://tug.org/FontCatalogue/typewriterfonts.html for fonts
mathfont: # See https://tug.org/FontCatalogue/mathfonts.html for fonts
documentclass: scrartcl # See https://www.ctan.org/topic/class
classoption: [notitlepage]
geometry: [a4paper, bindingoffset=0mm, inner=30mm, outer=30mm, top=30mm, bottom=30mm] # See https://ctan.org/pkg/geometry for more options

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
    \hyphenation
    {%
      Hyphenate-me-like-this
      Dontyoueverhyphenateme
    }%
    ```
---
