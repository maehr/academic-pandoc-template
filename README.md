# Academic Pandoc template

Write beautiful academic texts with the distraction-free [Pandoc Markdown](http://pandoc.org/MANUAL.html) and [typademic](https://typademic.ch).

[![GitHub issues](https://img.shields.io/github/issues/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/stargazers)
[![GitHub license](https://img.shields.io/github/license/maehr/academic-pandoc-template.svg)](https://github.com/maehr/academic-pandoc-template/blob/master/LICENSE.md)

![Preview](academic-pandoc-template.png)

## Getting Started

Read the [documentation](https://maehr.github.io/academic-pandoc-template/) and make sure you have a Markdown editor like [Zettlr](https://www.zettlr.com/) and a Bibtex editor like [JabRef](http://www.jabref.org/) installed.

### Use with [typademic](https://typademic.ch) online (BEGINNER)

1. Download the [academic-pandoc-template](https://github.com/maehr/academic-pandoc-template/archive/master.zip)
2. Edit `/template/academic-pandoc-template.md` according to the [Markdown guide](https://maehr.github.io/academic-pandoc-template/markdown.html) with your favorite Markdown editor
3. Edit `/template/references.bib` with your favorite Bibtex editor
3. Upload all files in `/template/` to [typademic](https://typademic.ch) and convert it to PDF or Docx
4. Be happy!

### Use with Pandoc and Latex (ADVANCED)

Install all prerequisites

- [Pandoc](http://pandoc.org/installing.html) with [Pandoc Citeproc](https://github.com/jgm/pandoc-citeproc)
- [LaTeX](https://www.latex-project.org/get/)
- [Google Fonts](https://github.com/google/fonts)

Open your command line, navigate to `/template/` and execute the following commands.

```bash
pandoc -d pdf.yaml academic-pandoc-template.md
pandoc -d docx.yaml academic-pandoc-template.md
```

## Support

This project is maintained by [@maehr](https://github.com/maehr). Please understand that we won't be able to provide individual support via email. We also believe that help is much more valuable if it's shared publicly, so that more people can benefit from it.

| Type                   | Platforms                                                    |
| ---------------------- | ------------------------------------------------------------ |
| 🚨 **Bug Reports**      | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |
| 🎁 **Feature Requests** | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |
| 🛡 **Report a security vulnerability**      | [GitHub Issue Tracker](https://github.com/maehr/academic-pandoc-template/issues) |

## Built With

- [Google Fonts](https://github.com/google/fonts)
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
