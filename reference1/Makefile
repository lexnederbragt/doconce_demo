BASENAME   := reference1
DO_FILES   := $(shell grep -o \.\.\/do_files\/.*do.txt ${BASENAME}.prepare.sh)
# NOTE: .do.txt must be first target
EXTENSIONS := .do.txt .html .pdf .ipynb .md
COMMANDS   := $(addsuffix .compile.sh, ${BASENAME})
TARGETS    := $(addprefix ${BASENAME}, ${EXTENSIONS} )

include ../build.mk

.PHONY : all

all : ${COMMANDS} ${TARGETS}

# overrule default for pdf
%.pdf : %.do.txt
	# Building pdf
	doconce format pdflatex $< --latex_code_style=vrb --execute && \
	pdflatex $* && \
	pdflatex $* && \
	makeindex $* && \
	bibtex $* && \
	pdflatex $*

# overrule default for ipynb
%.ipynb : %.do.txt
	# Building jupyter notebook
	doconce format ipynb $< --execute \
	--ipynb_cite=latex-plain

# remove targets - use with care
clean :
	rm ${COMMANDS} ${TARGETS}
