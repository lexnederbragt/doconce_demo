BASENAME   := slide1
DO_FILES   := $(shell grep -o \.\.\/do_files\/.*do.txt ${BASENAME}.prepare.sh)
EXTENSIONS := .html .pdf .ipynb .md .slides.html
COMMANDS   := $(addsuffix .commands.sh, ${BASENAME})
TARGETS    := $(addprefix ${BASENAME}, ${EXTENSIONS} )

include ../build.mk

.PHONY : all

all : ${COMMANDS} ${TARGETS}

# remove targets - use with care
clean :
	rm ${TARGETS}
