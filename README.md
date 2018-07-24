# Academic Pandoc template

Write beautiful academic texts with the distraction-free [Pandoc Markdown](http://pandoc.org/MANUAL.html) and [typademic](https://typademic.ch).

## Getting Started

Make sure you have a Markdown editor like [Atom.io](https://atom.io/) and a Bibtex editor like [JabRef](http://www.jabref.org/) installed.

### Use with [typademic](https://typademic.ch) online (BEGINNER)

1. Download the [academic-pandoc-template](https://github.com/maehr/academic-pandoc-template.git)
2. Edit `/template/academic-pandoc-template.md` according to the [Markdown guide](https://github.com/maehr/academic-pandoc-template/blob/master/README_MARKDOWN.md) with your favorite Markdown editor
3. Edit `/template/references.bib` with your favorite Bibtex editor
3. Upload all files in `/template/` to [typademic](https://typademic.ch) and convert it to PDF or Docx
4. Be happy!

### Use with Pandoc and Latex (ADVANCED)

Install all prerequisites

- [Pandoc](http://pandoc.org/installing.html) with [Pandoc Citeproc](https://github.com/jgm/pandoc-citeproc)
- [LaTeX](https://www.latex-project.org/get/)
- [Google Fonts](https://github.com/google/fonts)

Open your command line, navigate to the root of this folder and execute the following commands.

```bash
pandoc academic-pandoc-template.md --output academic-pandoc-template.pdf --from markdown+ascii_identifiers+tex_math_single_backslash+raw_tex+table_captions+yaml_metadata_block+autolink_bare_uris --pdf-engine xelatex --filter pandoc-citeproc --standalone
pandoc academic-pandoc-template.md --output academic-pandoc-template.docx --from markdown+ascii_identifiers+tex_math_single_backslash+raw_tex+table_captions+yaml_metadata_block+autolink_bare_uris --pdf-engine xelatex --filter pandoc-citeproc --standalone
```

### Use with [typademic](https://github.com/maehr/typademic) on [Docker](https://docker.com) (EXPERT)

Install [Docker CE](https://www.docker.com/community-edition) and start a [typademic](https://github.com/maehr/typademic) instance.

#### Mac with [Homebrew](https://brew.sh/index_de)

```bash
brew install docker git
git clone git@github.com:maehr/typademic.git
docker-compose up
```

#### Ubuntu 16.04

```bash
sudo apt-get update
sudo apt-get install docker-ce git
git clone git@github.com:maehr/typademic.git
docker-compose up
```

## Built With

- [Google Fonts](https://github.com/google/fonts)
- [Infoclio Citation Style](https://www.infoclio.ch/de/node/130403)
- [LaTeX](https://www.latex-project.org/)
- [Pandoc](https://pandoc.org/)

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
