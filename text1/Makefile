include config.mk

BASENAME   := text1
DOCONCE    := $(addprefix ${BASENAME}, .do.txt )
EXTENSIONS := .html .pdf .ipynb .md
TARGETS    := $(addprefix ${BASENAME}, ${EXTENSIONS} )

all : ${DOCONCE} ${TARGETS}

# doconce file

# Building up the doconce file by adding successive doconce files
${DOCONCE} : ${DO_FILES}
	source ${BASENAME}.prepare.sh > $@

# html
%.html : %.do.txt
	doconce format html $<

# pdf
%.pdf : %.do.txt
	doconce format pdflatex $< --latex_code_style=vrb && \
	pdflatex $*.tex

# jupyter notebook
%.ipynb : %.do.txt
	doconce format ipynb $<

# markdown
%.md : %.do.txt
	doconce format markdown $<

# remove targets - use with care
clean :
	rm ${TARGETS}
