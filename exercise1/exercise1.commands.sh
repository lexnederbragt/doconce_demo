# This file is generated by make, do not edit

# Building html
doconce format html exercise1.do.txt

# Building pdf
doconce format pdflatex exercise1.do.txt --latex_code_style=vrb --execute && \
	pdflatex exercise1.tex

# Building jupyter notebook for exercises with answers and solutions
doconce format ipynb exercise1.do.txt --execute && \
	mv exercise1.ipynb exercise1-solutions.ipynb

# Building jupyter notebook for exercises without answers and solutions
doconce format ipynb exercise1.do.txt --execute --without_solutions --without_answers

# Building markdown
doconce format markdown exercise1.do.txt
