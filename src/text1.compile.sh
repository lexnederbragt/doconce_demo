# This file is generated by make, do not edit

# Building html
doconce format html text1.do.txt --execute && \
	mv text1.html ../pub/text1.html

# Building pdf
doconce format pdflatex text1.do.txt --latex_code_style=vrb --execute && \
	pdflatex text1.tex && \
	mv text1.pdf ../pub/text1.pdf && \
	doconce clean

# Building jupyter notebook
doconce format ipynb text1.do.txt --execute && \
	mv text1.ipynb ../pub/text1.ipynb

# Building markdown
doconce format markdown text1.do.txt && \
	mv text1.md ../pub/text1.md