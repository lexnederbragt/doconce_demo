### Plain text

Here is some plain text.

Now we add a citation: a Langtangen book [@CaiLangtangen2006]. And a paper [@Chorin1968].

### Explanation

Let's explain some of this code
(setting the code to be unexecutable):

The `for` loop:


~~~
for number in range(10):
   total = total + (number + 1)
~~~

Goes through numbers 0 to 9 and adds 1 more than each number to the `total` variable.

### Table

The data on exponential growth can be found in the table below.


time    count    
----  ---------  
 60     10000    
 90     25587    
120     76327    
150     212715   
180     619511   
210    1940838   
240    4240760   
270    13993730  
300    38971086  
330   105614040  


### Figure

See [figure](#PythonDict) for an illustration that explains the python dictionary concept.

<!-- <img src="../img/PythonDict.jpg" width=400><p><em>Data structure concept of a dictionary in python. From [@PythonDict]. <div id="PythonDict"></div></em></p> -->
![<p><em>Data structure concept of a dictionary in python. From [@PythonDict]. <div id="PythonDict"></div></em></p>](../img/PythonDict.jpg)

### Math

Now we add some mathematical formula:

$$

K_n = rwTK_{n-1}\left (1 - \frac{K_{n-1}}{H}\right ) - K_{n-1}.

$$

### References

 1. <div id="CaiLangtangen2006"></div> **X. Cai and H. P. Langtangen**. 
    Parallelizing PDE Solvers Using the Python Programming Language,
    *Numerical Solution of Partial Differential Equations on Parallel 	Computers*,
    edited by **A. M. Bruaset and A. Tveito**,
    Springer,
    2006.
 2. <div id="Chorin1968"></div> **A. J. Chorin**. 
    Numerical Solution of the Navier-Stokes Equations,
    *Math. Comp.*,
    22,
    pp. 745-762,
    1968.
 3. <div id="PythonDict"></div> Data Structure Concept of a Dictionary in Python. 
    <https://commons.wikimedia.org/wiki/File:GooglePythonClass_Day1_Part3_Pic.jpg>.


