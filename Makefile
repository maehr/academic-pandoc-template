
.PHONY: help all article article-docx article-pdf article-tex presentation presentation-html presentation-pdf presentation-pptx presentation-tex thesis thesis-docx thesis-epub thesis-pdf thesis-tex
.DEFAULT_GOAL := help

help:
	head -2 Makefile

all:
	make article presentation thesis

article-docx:
	(cd article && \
	pandoc --defaults=./../defaults.yaml --defaults=docx.yaml)

article-pdf:
	(cd article && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

article-tex:
	(cd article && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)

article:
	make article-docx article-pdf article-tex

presentation-html:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=html.yaml)

presentation-pdf:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

presentation-pptx:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=pptx.yaml)

presentation-tex:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)

presentation:
	make presentation-html presentation-pdf presentation-pptx presentation-tex

thesis-docx:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=docx.yaml)

thesis-epub:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=epub.yaml)

thesis-pdf:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

thesis-tex:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)

thesis:
	make thesis-docx thesis-epub thesis-pdf thesis-tex
