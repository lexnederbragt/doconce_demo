# Building up the doconce file by adding successive doconce files

echo "===== Admonitions ====="
echo "!bwarning Plain text"
echo
cat do_files/code1.do.txt
echo "!ewarning"
echo
echo "!bnotice Explanation"
echo
cat do_files/explain1.do.txt
echo "!enotice"
echo
echo "!bquestion Table"
echo
cat do_files/table1.do.txt
echo
echo "!equestion"
echo
## Moveable stuff cannot be palced in boxes in latex
echo '# #if FORMAT not in ("latex", "pdflatex")'
echo "!bnotice Figure"
echo
cat do_files/figure1.do.txt
echo "!enotice"
echo '# #endif'
echo
echo "!bblock Math"
echo
cat do_files/math1.do.txt
echo "!eblock"
