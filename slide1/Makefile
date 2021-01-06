BASENAME   := slide1
DO_FILES   := $(shell grep -o \.\.\/do_files\/.*do.txt ${BASENAME}.prepare.sh)
# NOTE: .do.txt must be first target
EXTENSIONS := .do.txt .html .pdf .ipynb .md .reveal.html .deck.html .reveal.pdf .deck.pdf
COMMANDS   := $(addsuffix .commands.sh, ${BASENAME})
TARGETS    := $(addprefix ${BASENAME}, ${EXTENSIONS} )

include ../build.mk

.PHONY : all

all : ${COMMANDS} ${TARGETS}

# remove targets - use with care
clean :
	rm ${COMMANDS} ${TARGETS}
