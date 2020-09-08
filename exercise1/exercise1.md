<!-- --- begin exercise --- -->

### Exercise 1: my first exercise

Here goes a general introduction to the exercise.


*a)*
Predict what this code will do


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~{.Python}
a = 2
b = 3
for i in range(a, b):
    print(i)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<!-- --- begin answer of exercise --- -->
*Answer.*
Prints `2`

<!-- --- end answer of exercise --- -->

*b)*
Modify the program so that it prints 2, 3 and 4.


<!-- --- begin answer of exercise --- -->
*Answer.*
There are many ways to do this. We will show two of them.

<!-- --- end answer of exercise --- -->


<!-- --- begin solution of exercise --- -->
*Solution.*

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~{.Python}
a = 2
b = 5
for i in range(a, b):
    print(i)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An alternative:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~{.Python}
a = 1
b = 4
for i in range(a, b):
    print(i + 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<!-- --- end solution of exercise --- -->

<!-- --- end exercise --- -->




<!-- --- begin exercise --- -->

### Exercise 2: my second exercise

Here goes a general introduction to the exercise.


*a)*
Implement this difference equation in Python
and generate a plot for values of $x$ from 1 to 10.

$$
\begin{equation}
x_{n+1} = 1.5 x_n -20
x_0 = 20
\end{equation}
$$

Question without code anser:
Can you think of an example case that has this difference equation as model?


<!-- --- begin answer of exercise --- -->
*Answer.*
Not really

<!-- --- end answer of exercise --- -->


<!-- --- begin solution of exercise --- -->
*Solution.*

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~{.Python}
from matplotlib import pyplot as plt
x = [20]
i = 1
while i < 10:
    x.append(1.5 * x[i-1] - 20)

plt.plot(x)
plt.show()
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<!-- --- end solution of exercise --- -->

*b)*
Another question without code answer.

<!-- --- end exercise --- -->


