BASENAME   := text1
DO_FILES   := $(shell grep -o \.\.\/do_files\/.*do.txt ../scripts/${BASENAME}.prepare.sh)
DO_IN      := $(addsuffix .do.txt, ${BASENAME})
EXTENSIONS := .html .pdf .ipynb .md
COMMANDS   := $(addsuffix .commands.sh, ${BASENAME})
TARGETS    := $(addprefix ../pub/${BASENAME}, ${EXTENSIONS} )

include build.mk

.PHONY : all

all : ${DO_IN} ${TARGETS} ${COMMANDS}

test:
	@echo DO_FILES: ${DO_FILES}
	@echo DO_IN: ${DO_IN}
	@echo TARGETS: ${TARGETS}

# remove targets - use with care
clean :
	rm ${COMMANDS} ${TARGETS}
