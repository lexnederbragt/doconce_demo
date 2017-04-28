BASENAME   := text1
DO_FILES   := $(shell grep -o \.\.\/do_files\/.*do.txt ${BASENAME}.prepare.sh)
EXTENSIONS := .html .pdf .ipynb .md
COMMANDS   := $(addsuffix .commands.sh, ${BASENAME})
TARGETS    := $(addprefix ${BASENAME}, ${EXTENSIONS} )

all : ${COMMANDS}

# commands used
%.commands.sh : %.do.txt
		make -n ${TARGETS} > $@ && \
		make ${TARGETS}

# Building up the doconce file by adding successive doconce files
%.do.txt : %.prepare.sh ${DO_FILES}
	source ${BASENAME}.prepare.sh > $@

# html
%.html : %.do.txt
	# Building html
	doconce format html $<

# pdf
%.pdf : %.do.txt
	# Building pdf
	doconce format pdflatex $< --latex_code_style=vrb && \
	pdflatex $*.tex

# jupyter notebook
%.ipynb : %.do.txt
	# Building jupyter notebook
	doconce format ipynb $<

# markdown
%.md : %.do.txt
	# Building markdown
	doconce format markdown $<

# remove targets - use with care
clean :
	rm ${TARGETS}
