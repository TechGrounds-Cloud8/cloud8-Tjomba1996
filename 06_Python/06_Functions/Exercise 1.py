## Create a script that randomly generates a number between 0 and 100, and displays it 5 times.

import random                               ## Importing the random package
loop = 5                                    ## Declaring the loop variable(not needed, but adds flexibility)

for i in range(loop):                       ## Loop that loops "loop" amount of loops.
    print(random.randint(0,100))            ## Generates a "random" value between 0 and 100.