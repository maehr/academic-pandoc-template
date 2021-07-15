# Academic Pandoc template

Write beautiful academic texts with the distraction-free [Pandoc Markdown](http://pandoc.org/MANUAL.html) and [typademic](https://typademic.ch).

[![GitHub issues](https://img.shields.io/github/issues/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/stargazers)
[![GitHub license](https://img.shields.io/github/license/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/blob/master/LICENSE.md)

![Preview](academic-pandoc-template.png)

## Getting Started

Read the [documentation](https://maehr.github.io/academic-pandoc-template/) and make sure you have a Markdown editor like [Zettlr](https://www.zettlr.com/) and a Bibtex editor like [JabRef](http://www.jabref.org/) installed.

### Use with [GitHub actions](https://docs.github.com/en/actions)

1. [Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) the [academic-pandoc-template](https://github.com/maehr/academic-pandoc-template)
2. Edit `/template/academic-pandoc-template.md` according to the [Markdown guide](https://maehr.github.io/academic-pandoc-template/markdown.html) [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [Zettlr](https://www.zettlr.com/) or with your favorite Markdown editor
3. Edit `/template/references.bib` [online](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-your-repository), with [JabRef](http://www.jabref.org/) or with your favorite Bibtex editor
4. [Commit](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project) your changes
5. GitHub will compile an updated PDF and a DOCX document for you

### Use with [typademic](https://typademic.ch) online

1. [Clone](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github/cloning-a-repository) or download the [academic-pandoc-template](https://github.com/maehr/academic-pandoc-template/archive/master.zip)
2. Edit `/template/academic-pandoc-template.md` according to the [Markdown guide](https://maehr.github.io/academic-pandoc-template/markdown.html) with [Zettlr](https://www.zettlr.com/) or your favorite Markdown editor
3. Edit `/template/references.bib` with [JabRef](http://www.jabref.org/) or your favorite Bibtex editor
4. Upload all files in `/template/` to [typademic](https://typademic.ch) and convert it to PDF or Docx

### Use with Pandoc and Latex

Install all prerequisites

- [Pandoc 2.11 or newer](http://pandoc.org/installing.html)
- [LaTeX](https://www.latex-project.org/get/)

Open your command line and execute the following commands.

```bash
pandoc -d pdf.yaml
pandoc -d docx.yaml
```

## Support

This project is maintained by [@maehr](https://github.com/maehr). Please understand that we won't be able to provide individual support via email. We also believe that help is much more valuable if it's shared publicly, so that more people can benefit from it.

| Type                                  | Platforms                                                                        |
| ------------------------------------- | -------------------------------------------------------------------------------- |
| 🚨 **Bug Reports**                    | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |
| 🎁 **Feature Requests**               | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |
| 🛡 **Report a security vulnerability** | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |

## Built With

- [Chicago Manual of Style 17th edition (note)](https://www.zotero.org/styles?q=chicago)
- [LaTeX](https://www.latex-project.org/)
- [Pandoc](https://pandoc.org/)

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

- [John Gruber](https://daringfireball.net/projects/markdown/)
- [John MacFarlane](http://johnmacfarlane.net/)
- [Sarah Simpkin, "Getting Started with Markdown," The Programming Historian 4 (2015)](https://programminghistorian.org/en/lessons/getting-started-with-markdown)
- [Dennis Tenen and Grant Wythoff, "Sustainable Authorship in Plain Text using Pandoc and Markdown," The Programming Historian 3 (2014)](https://programminghistorian.org/en/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown)
