
.PHONY: help all article article-docx article-html article-pdf article-tex presentation presentation-html presentation-pdf presentation-pptx presentation-tex thesis thesis-docx thesis-epub thesis-pdf thesis-tex
.DEFAULT_GOAL := help

help:
	head -2 Makefile

all:
	npm run render

article-html:
	npm run render:article:html

article-docx:
	npm run render:article:docx

article-pdf:
	npm run render:article:pdf

article-tex:
	npm run render:article:tex

article:
	npm run render:article

presentation-html:
	npm run render:presentation:html

presentation-pdf:
	npm run render:presentation:pdf

presentation-pptx:
	npm run render:presentation:pptx

presentation-tex:
	npm run render:presentation:tex

presentation:
	npm run render:presentation

thesis-docx:
	npm run render:thesis:docx

thesis-epub:
	npm run render:thesis:epub

thesis-pdf:
	npm run render:thesis:pdf

thesis-tex:
	npm run render:thesis:tex

thesis:
	npm run render:thesis
