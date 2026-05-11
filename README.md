# Academic Pandoc template

[Quarto](https://quarto.org/) templates for academic articles, presentations, and theses. The repository keeps editable sources and rendered outputs together so users can write in plain text and still commit PDFs, Word files, slide decks, and TeX output.

[![GitHub issues](https://img.shields.io/github/issues/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/stargazers)
[![GitHub license](https://img.shields.io/github/license/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/blob/main/LICENSE.md)
[![DOI](https://zenodo.org/badge/139726344.svg)](https://zenodo.org/badge/latestdoi/139726344)

<!-- prettier-ignore -->
| source | article | presentation | thesis |
| :--- | :-----: | :-----: | :-----: |
| edit | [![](assets/images/article.png)](article/article.md) | [![](assets/images/presentation.png)](presentation/presentation.md) | [![](assets/images/thesis.png)](thesis/index.qmd) |
| html | [![](assets/images/article-html.png)](article/article.html) | [![](assets/images/presentation-html.png)](presentation/presentation.html) | |
| docx | [![](assets/images/article-docx.png)](article/article.docx) | | [![](assets/images/thesis-docx.png)](thesis/thesis.docx) |
| epub | | | [![](assets/images/thesis-epub.png)](thesis/thesis.epub) |
| pdf | [![](assets/images/article-pdf.png)](article/article.pdf) | [![](assets/images/presentation-pdf.png)](presentation/presentation.pdf) | [![](assets/images/thesis-pdf.png)](thesis/thesis.pdf) |
| pptx | | [![](assets/images/presentation-pptx.png)](presentation/presentation.pptx) | |
| tex | [![](assets/images/article-tex.png)](article/article.tex) | [![](assets/images/presentation-tex.png)](presentation/presentation.tex) | [![](assets/images/thesis-tex.png)](thesis/thesis.tex) |

## Getting Started

Use this template, edit one of the document sources, and run the Quarto build. The npm scripts render the root documentation site and each document-specific Quarto project.

### Prerequisites

- [Quarto](https://quarto.org/docs/get-started/)
- [TinyTeX](https://yihui.org/tinytex/) for PDF output: `quarto install tinytex`
- [Make](https://www.gnu.org/software/make/) for the convenience targets
- [Node.js](https://nodejs.org/) and npm for formatting, rendering, and changelog tooling

### Build

```bash
npm run render
```

Preview the documentation site locally:

```bash
npm run preview
```

Document-specific previews are available with `npm run preview:article`, `npm run preview:presentation`, and `npm run preview:thesis`.

Useful targets:

- `make article` renders all article formats.
- `make presentation` renders RevealJS, Beamer PDF, PowerPoint, and TeX outputs.
- `make thesis` renders Word, EPUB, PDF, and TeX thesis outputs.
- `make article-pdf`, `make presentation-pptx`, or `make thesis-docx` render a single format.

The `Makefile` is kept as a thin compatibility layer, so `make all`, `make article`, `make presentation`, and `make thesis` call the corresponding npm scripts.

You can also call Quarto directly:

```bash
quarto render
quarto render article --to pdf
```

## Structure

- `_quarto.yml` defines the root Quarto documentation website.
- `_brand.yml` defines shared branding metadata for the documentation website.
- `article/_quarto.yml`, `presentation/_quarto.yml`, and `thesis/_quarto.yml` define the render targets for each document type.
- `article/_metadata.yml`, `presentation/_metadata.yml`, and `thesis/_metadata.yml` hold document metadata.
- `article/index.qmd` is an ordinary Quarto document entrypoint that includes `article.md`.
- `presentation/index.qmd` renders `presentation.md` to RevealJS, Beamer, PowerPoint, and TeX.
- `thesis/index.qmd` includes chapter files such as `00_Introduction.md` and keeps separate bibliographies for sources and literature.
- `assets/csl/` contains citation styles shared by the examples.

## Configuration

Edit the relevant `_metadata.yml` file to change titles, authors, and bibliographies. Render targets and format options belong in the document-specific `_quarto.yml` files.

Quarto-native cross-reference labels use hyphens:

```markdown
![Caption](image.png){#fig-example}

See @fig-example.
```

## Linting And Formatting

Install dependencies:

```bash
npm install
```

Check or format files:

```bash
npm run check
npm run format
```

## Continuous Integration

The `Quarto` workflow installs npm dependencies, Quarto, and TinyTeX, runs formatting checks, renders all documents with `npm run render`, and commits updated artifacts back to the repository when manually triggered.

## Built With

- [Quarto](https://quarto.org/)
- [TinyTeX](https://yihui.org/tinytex/)
- [Prettier](https://prettier.io/)
- [commitizen](https://github.com/commitizen/cz-cli)
- [git-cliff](https://github.com/orhun/git-cliff)
- [husky](https://github.com/typicode/husky)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on the code of conduct and pull request process.

## License

This project is licensed under the MIT License. See [LICENSE.md](LICENSE.md) for details.

## Acknowledgments

- Sarah Simpkin, "Getting Started with Markdown," _Programming Historian_ 4 (2015), [https://doi.org/10.46430/phen0046](https://doi.org/10.46430/phen0046).
- Dennis Tenen and Grant Wythoff, "Sustainable Authorship in Plain Text using Pandoc and Markdown," _Programming Historian_ 3 (2014), [https://doi.org/10.46430/phen0041](https://doi.org/10.46430/phen0041).
