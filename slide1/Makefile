BASENAME   := slide1
DO_FILES   := $(shell grep -o \.\.\/do_files\/.*do.txt ${BASENAME}.prepare.sh)
EXTENSIONS := .html .pdf .ipynb .md
COMMANDS   := $(addsuffix .commands.sh, ${BASENAME})
TARGETS    := $(addprefix ${BASENAME}, ${EXTENSIONS} )

include ../build.mk

all : ${COMMANDS}

# remove targets - use with care
clean :
	rm ${TARGETS}
