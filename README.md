# DocOnce demos

To demonstrate [DocOnce](https://github.com/doconce/doconce) functionality:
write once in DocOnce format, compile to many different output formats:

* `hmtl`
* `pdf` (via LaTex)
* `ipynb` (Jupyter notebook)
* `html` slides (deck.js, reveal.js)
* `md` (regular markdonw)

Note that on <https://lexnederbragt.github.io/doconce_demo/>, the Markdown versions will be rendered as html.

Also check out the files as rendered [on github](https://github.com/lexnederbragt/doconce_demo).

Files written in DocOnce format have `.do.txt` at the end of their name.
To convert these to the different output formats
require DocOnce, and LaTex to PDF conversion software.
To convert slide decks to PDF, [deck2pdf](https://github.com/melix/deck2pdf) is needed.

Note that
* each `.do.txt` and its corresponding `.commands.sh` in the `src` folder are sufficient to create all output files in the `pub` folder
* the output files also can be (re)created using `make`, see below

In the tables below:

* `DocOnce` links to the DocOnce file used to create the different output formats
* `commands` lists the unix commands used to convert the corresponding `.do.txt` file

# Text

Demonstrates a text with Python code, a table and a figure and some math, converted to different formats.

|Subject|DocOnce|commands|html|pdf|ipynb|markdown|
|-------|-------|--------|----|---|-----|--------|
|Text|[DocOnce](src/text1.do.txt)|[commands](pub/text1.commands.sh)|[html](pub/text1.html)|[pdf](pub/text1.pdf)|[ipynb](pub/text1.ipynb)|[markdown](pub/text1.md)|

# Slides

Demonstrates slides with Python code, a table and a figure and some math, converted to different formats, including `reveal.js` and `deck.js` slide sets.
To view the slide `html` files properly, these needs to be opened in the folder with the `deck.js-latest` and `img` folders.

Slides:  

|Type  |html|pdf|
|------|----|---|
|reveal|[html](pub/slide1.reveal.html)|[pdf](pub/slide1.reveal.pdf)|
|deck  |[html](pub/slide1.deck.html)|[pdf](pub/slide1.deck.pdf)

|Subject|DocOnce|commands|html|pdf|ipynb|markdown|
|-------|-------|--------|----|---|-----|--------|
|Slides|[DocOnce](src/slide1.do.txt)|[commands](pub/slide1.commands.sh)|[html](pub/slide1.html)|[pdf](pub/slide1.pdf)|[ipynb](pub/slide1.ipynb)|[markdown](pub/slide1.md)|


# *Include* functionality

Demonstrates how to include other DocOnce files and code from a file. Note how the `.do.txt` file contains only links to other `.do.txt` files (in the `do_files` folder), yet still results in the same outputs as for the **Text** example.
This example also demonstrates the option of including external Python code and comma-separated data files into a DocOnce file. For details, check [this explanation](src/include.README.md).


|Subject|DocOnce|commands|html|pdf|ipynb|markdown|
|-------|-------|--------|----|---|-----|--------|
|Include|[DocOnce](src/include1.do.txt)|[commands](pub/include1.commands.sh)|[html](pub/include1.html)|[pdf](pub/include1.pdf)|[ipynb](pub/include1.ipynb)|[markdown](pub/include1.md)|

-----
## Behind the scenes

Some documents in this repository are generated automatically, under the control of a `Makefile` in each folder, making for a flexible, modular setup:

* in the `scripts` folder, there is a script to build each `.do.txt` file out of individual smaller `.do.txt` files in the `do_files` folder
* the `Makefile` can be used to generate the `.do.txt` file, the corresponding `commands.sh` file with the commands used to generate all output, and all outputs
* one could also execute this `commands.sh` to (re)create all outputs
* running `make clean` removes all generated output in the `pub` folder
* running `make cleanall` removes all generated output in the `pub` folder and intermediate files created by DocOnce
* running `make WHAT=text1` only generates file for the `text1` example
* running `make pdf` creates PDFs of the deck.js and reveal.js slide decks (and if needed, the html slide files first)
* *only* the files `script/*.prepare.sh` and the `Makefile` in the `src` folder are needed to create all necessary files (including the `.do.txt` files) by running `make` in the `src` folder
* run `make -n | grep Target` to see which files will be (re)created
