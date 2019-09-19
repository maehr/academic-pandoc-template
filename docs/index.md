---
layout: default
---

## Getting Started

Make sure you have a Markdown editor like [Atom.io](https://atom.io/) and a Bibtex editor like [JabRef](http://www.jabref.org/) installed.

### Use with [typademic](https://typademic.ch) online (BEGINNER)

1. Download the [academic-pandoc-template](https://github.com/maehr/academic-pandoc-template/archive/master.zip)
2. Edit `/template/academic-pandoc-template.md` according to the [Markdown guide](https://maehr.github.io/academic-pandoc-template/markdown.html) with your favorite Markdown editor
3. Edit `/template/references.bib` with your favorite Bibtex editor
3. Upload all files in `/template/` to [typademic](https://typademic.ch) and convert it to PDF or Docx
4. Be happy!

If you need help with the GitHub check [this](./github.html) out.

### Use with Pandoc and Latex (ADVANCED)

Install all prerequisites

- [Pandoc](http://pandoc.org/installing.html) with [Pandoc Citeproc](https://github.com/jgm/pandoc-citeproc)
- [LaTeX](https://www.latex-project.org/get/)
- [Google Fonts](https://github.com/google/fonts)

Open your command line, navigate to `/template/` and execute the following commands.

```bash
pandoc academic-pandoc-template.md --output academic-pandoc-template.pdf --from markdown+ascii_identifiers+tex_math_single_backslash+raw_tex+table_captions+yaml_metadata_block+autolink_bare_uris --pdf-engine xelatex --filter pandoc-citeproc --standalone
pandoc academic-pandoc-template.md --output academic-pandoc-template.docx --from markdown+ascii_identifiers+tex_math_single_backslash+raw_tex+table_captions+yaml_metadata_block+autolink_bare_uris --pdf-engine xelatex --filter pandoc-citeproc --standalone
```
