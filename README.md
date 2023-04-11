# Academic Pandoc template

[Pandoc](http://pandoc.org/MANUAL.html) [markdown](https://daringfireball.net/projects/markdown/syntax) templates for academic articles, presentations and theses to write distraction-free while maintaining beautiful typesetting.

[![GitHub issues](https://img.shields.io/github/issues/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/stargazers)
[![GitHub license](https://img.shields.io/github/license/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/blob/master/LICENSE.md)
[![DOI](https://zenodo.org/badge/139726344.svg)](https://zenodo.org/badge/latestdoi/139726344)

<!-- prettier-ignore -->
| from md | [article](article/article.md) | [presentation](presentation/presentation.md) | [thesis](thesis/00.md) |
| :--- | :-----: | :-----: | :-----: |
| | [![](assets/images/article.png)](article/article.md) | [![](assets/images/presentation.png)](presentation/presentation.md) | [![](assets/images/thesis.png)](thesis/00.md) |
| to html | | [![](assets/images/presentation-html.png)](presentation/presentation.html) | |
| to docx | [![](assets/images/article-docx.png)](article/article.docx) | | [![](assets/images/thesis-docx.png)](thesis/thesis.pdf) |
| to epub | | | [![](assets/images/thesis-epub.png)](thesis/thesis.epub) |
| to pdf | [![](assets/images/article-pdf.png)](article/article.pdf) | [![](assets/images/presentation-pdf.png)](presentation/presentation.pdf) | [![](assets/images/thesis-pdf.png)](thesis/thesis.pdf) |
| to pptx | | [![](assets/images/presentation-pptx.png)](presentation/presentation.pptx) | |
| to tex | [![](assets/images/article-tex.png)](article/article.tex) | [![](assets/images/presentation-tex.png)](presentation/presentation.tex) | [![](assets/images/thesis-tex.png)](thesis/thesis.tex) |

## Getting Started

Follow the [The Markdown Guide](https://www.markdownguide.org/) and make sure you have a Markdown editor like [Zettlr](https://www.zettlr.com/) and a Bibtex editor like [JabRef](http://www.jabref.org/) installed.

### Use it online

1. [Use this template](https://github.com/maehr/academic-pandoc-template/generate) or [fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repository.[![](assets/images/use-this-template.png)](https://github.com/maehr/academic-pandoc-template/generate)
2. Edit [article/article.md](article/article.md), [presentation/presentation.md](presentation/presentation.md) or [thesis/](thesis) according to the [The Markdown Guide](https://www.markdownguide.org/) [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [Zettlr](https://www.zettlr.com/) or another [Markdown editor](https://www.markdownguide.org/tools/)
3. Edit [article/references.bib](article/references.bib), [presentation/references.bib](presentation/references.bib) or [thesis/references.bib](thesis/references.bib) [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [JabRef](http://www.jabref.org/) or with your favorite Bibtex editor
4. [Commit](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project) your changes
5. Manually run the [Pandoc GitHub actions](https://github.com/maehr/academic-pandoc-template/actions/workflows/pandoc.yml) to build your document. They will be commited to main branch as well. [![](assets/images/workflow_dispatch.png)](https://github.com/maehr/academic-pandoc-template/actions/workflows/pandoc.yml)
   a. Click on [Actions](https://github.com/maehr/academic-pandoc-template/actions) in the top menu
   b. Click on [Pandoc](https://github.com/maehr/academic-pandoc-template/actions/workflows/pandoc.yml) in the left menu
   c. Click on `Run workflow` in the top right corner

### Use it locally

Install all prerequisites

- [Make](https://www.gnu.org/software/make/)
- [Pandoc](http://pandoc.org/installing.html)
- [Tectonic](https://tectonic-typesetting.github.io/) or another [LaTeX](https://www.latex-project.org/get/) distribution

Open your command line and execute on of the following commands.

- `make all` to build all documents
- `make article` to build the article
- `make article-docx article-pdf article-tex` to build the article in different formats
- `make presentation` to build the presentation
- `make presentation-html presentation-pdf presentation-pptx presentation-tex` to build the presentation in different formats
- `make thesis` to build the thesis
- `make thesis-docx thesis-epub thesis-pdf thesis-tex` to build the thesis in different formats
- `make help` to get a list of all available commands

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

## Configuration

Change the [variables](https://pandoc.org/MANUAL.html#variables) in the frontmatter in [article/article.md](article/article.md), [presentation/presentation.md](presentation/presentation.md) or [thesis/00.md](thesis/00.md) to configure your document.

```yaml
author:
  - '[Eleanor Roosevelt](eleanor.eoosevelt@domain.com)'
  - '[John Peters Humphrey](jph@domain.com)'
bibliography: references.bib # bibliography to use for resolving references
csl: https://www.zotero.org/styles/chicago-note-bibliography
date: 1 January 2023
keywords: # list of keywords to be included in HTML, PDF, ODT, pptx, docx and AsciiDoc metadata; repeat as for author, above
lang: en-US
```

Change the [default files](https://pandoc.org/MANUAL.html#defaults-files) to your needs:

- [default.yaml](default.yaml) for the default configuration
- [article/docx.yaml](article/docx.yaml) for the article docx configuration
- [article/pdf.yaml](article/pdf.yaml) for the article pdf configuration
- [article/tex.yaml](article/tex.yaml) for the article tex configuration
- [presentation/html.yaml](presentation/html.yaml) for the presentation html configuration
- [presentation/ppxt.yaml](presentation/ppxt.yaml) for the presentation pptx configuration
- [presentation/pdf.yaml](presentation/pdf.yaml) for the presentation pdf configuration
- [presentation/tex.yaml](presentation/tex.yaml) for the presentation tex configuration
- [thesis/docx.yaml](thesis/docx.yaml) for the thesis docx configuration
- [thesis/epub.yaml](thesis/epub.yaml) for the thesis epub configuration
- [thesis/pdf.yaml](thesis/pdf.yaml) for the thesis pdf configuration
- [thesis/tex.yaml](thesis/tex.yaml) for the thesis tex configuration

## Conventional Commits

Use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) for adding human and machine readable meaning to commit messages. To use [commitizen](https://github.com/commitizen/cz-cli), use the following commands.

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

- [x] Refactoring of the article template
- [x] Templates for presentation and thesis
- [x] Change name of master branch to main
- [ ] Improve documentation
- [ ] Improve caching in `.github/workflows/pandoc.yml`

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
