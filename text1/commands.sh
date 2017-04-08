# html
doconce format html text1.do.txt

# pdf
doconce format pdflatex text1.do.txt --latex_code_style=vrb && \
pdflatex text1.tex

# jupyter notebook
doconce format ipynb text1.do.txt

# markdown
doconce format markdown text1.do.txt
