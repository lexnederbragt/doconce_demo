# This file is generated by make, do not edit

# Building html
# Target: ../pub/exercise1.html
doconce format html exercise1.do.txt --execute && \
	mv exercise1.html ../pub/exercise1.html

# Building pdf
# Target: ../pub/exercise1.pdf
doconce format pdflatex exercise1.do.txt --latex_code_style=vrb --execute && \
	pdflatex exercise1.tex && \
	mv exercise1.pdf ../pub/exercise1.pdf

# Building jupyter notebook for exercises with answers and solutions
# Target: ../pub/exercise1.ipynb
doconce format ipynb exercise1.do.txt --execute && \
	mv exercise1.ipynb ../pub/exercise1-solutions.ipynb

# Building jupyter notebook for exercises without answers and solutions
doconce format ipynb exercise1.do.txt --execute --without_solutions --without_answers && \
	mv exercise1.ipynb ../pub/exercise1.ipynb

# Building markdown
# Target: ../pub/exercise1.md
doconce format markdown exercise1.do.txt && \
	mv exercise1.md ../pub/exercise1.md
