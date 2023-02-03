# Building up the quarto file by adding successive doconce files
cat qmd_files/include.yml
echo
echo "## Plain text"
echo
echo '{{< include qmd_files/code1_nocode.qmd >}}'
echo
echo "## Explanation"
echo
echo '{{< include qmd_files/explain1.qmd >}}'
echo
echo "## Table"
echo
echo '{{< include qmd_files/table1_nodata.qmd >}}'
echo
echo "## Figure"
echo
echo '{{< include qmd_files/figure1.qmd >}}'
echo
echo "## Math"
echo
echo '{{< include qmd_files/math1.qmd >}}'
echo
