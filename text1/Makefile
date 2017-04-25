BASENAME   := text1
EXTENSIONS := .html .pdf .ipynb .md
TARGETS     := $(addprefix ${BASENAME}, ${EXTENSIONS} )

all: ${TARGETS}

# html
%.html: %.do.txt
	doconce format html $<

# pdf
%.pdf: %.do.txt
	doconce format pdflatex $< --latex_code_style=vrb && \
	pdflatex $*.tex

# jupyter notebook
%.ipynb: %.do.txt
	doconce format ipynb $<

# markdown
%.md: %.do.txt
	doconce format markdown $<
