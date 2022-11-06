# Academic Pandoc template

[Pandoc](http://pandoc.org/MANUAL.html) [markdown](https://daringfireball.net/projects/markdown/syntax) templates for academic articles, presentations and theses to write distraction-free while maintaining beautiful typesetting.

[![GitHub issues](https://img.shields.io/github/issues/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/stargazers)
[![GitHub license](https://img.shields.io/github/license/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/blob/master/LICENSE.md)
[![DOI](https://zenodo.org/badge/139726344.svg)](https://zenodo.org/badge/latestdoi/139726344)

|      | [article.md](https://maehr.github.io/academic-pandoc-template/#article)      | [presentation.md](https://maehr.github.io/academic-pandoc-template/#presentation)  | [thesis.md](https://maehr.github.io/academic-pandoc-template/#thesis)        |
| :--- | :--------------------------------------------------------------------------- | :--------------------------------------------------------------------------------- | :--------------------------------------------------------------------------- |
| html |                                                                              | ![](https://maehr.github.io/academic-pandoc-template/assets/presentation-html.png) |                                                                              |
| docx | ![](https://maehr.github.io/academic-pandoc-template/assets/paper-docx.png)  |                                                                                    | ![](https://maehr.github.io/academic-pandoc-template/assets/thesis-docx.png) |
| epub |                                                                              |                                                                                    | ![](https://maehr.github.io/academic-pandoc-template/assets/thesis-epub.png) |
| pdf  | ![](https://maehr.github.io/academic-pandoc-template/assets/paper-pdf.png) ) | ![](https://maehr.github.io/academic-pandoc-template/assets/presentation-pdf.png)  | ![](https://maehr.github.io/academic-pandoc-template/assets/thesis-pdf.png)  |
| pptx |                                                                              | ![](https://maehr.github.io/academic-pandoc-template/assets/presentation-pptx.png) |                                                                              |
| tex  | ![](https://maehr.github.io/academic-pandoc-template/assets/paper-tex.png) ) | ![](https://maehr.github.io/academic-pandoc-template/assets/presentation-tex.png)  | ![](https://maehr.github.io/academic-pandoc-template/assets/thesis-tex.png)  |

## Getting Started

Follow the [The Markdown Guide](https://www.markdownguide.org/) and make sure you have a Markdown editor like [Zettlr](https://www.zettlr.com/) and a Bibtex editor like [JabRef](http://www.jabref.org/) installed.

### Use it online

1. [Use this template](https://github.com/maehr/academic-pandoc-template/generate) or [fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repo
2. Edit `/article/article.md`, `/presentation/pressentation.md` or `/thesis/` according to the [The Markdown Guide](https://www.markdownguide.org/) [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [Zettlr](https://www.zettlr.com/) or another [Markdown editor](https://www.markdownguide.org/tools/)
3. Edit `/template/references.bib` [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [JabRef](http://www.jabref.org/) or with your favorite Bibtex editor
4. [Commit](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project) your changes
5. [GitHub actions](https://docs.github.com/en/actions/managing-workflow-runs/downloading-workflow-artifacts) will compile an updated PDF and a DOCX document and store these artifacts

### Use it locally

Install all prerequisites

- [Pandoc](http://pandoc.org/installing.html)
- [Tectonic](https://tectonic-typesetting.github.io/) or another [LaTeX](https://www.latex-project.org/get/) distribution

Open your command line and execute the following commands.

```bash
make all
```

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

- [x] Refactoring of the article template
- [x] Templates for presentation and thesis
- [ ] Improve documentation
- [ ] Change name of master branch to main
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
