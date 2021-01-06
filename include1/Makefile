BASENAME   := include1
DO_FILES   := $(shell grep -o \.\.\/do_files\/.*do.txt ${BASENAME}.prepare.sh)
# NOTE: .do.txt must be first target
EXTENSIONS := .do.txt .html .pdf .ipynb .md
COMMANDS   := $(addsuffix .commands.sh, ${BASENAME})
TARGETS    := $(addprefix ${BASENAME}, ${EXTENSIONS} )

include ../build.mk

.PHONY : all

all : ${COMMANDS} ${TARGETS} ../do_files/exp_growth.table.do.txt

# generate table from csv
../do_files/exp_growth.table.do.txt : ../data/exp_growth.csv
	doconce csv2table $< > $@

# remove targets - use with care
clean :
	rm ${COMMANDS} ${TARGETS}
