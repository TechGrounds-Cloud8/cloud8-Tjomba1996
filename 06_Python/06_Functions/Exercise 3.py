## Use a script where a function is used to calculate the average between two arguments(x and y).   

def avg(a,b):                                               ## Defining the average function, with 2 arguments.
    average = (a + b)/2                                     ## Adding both the arguments and dividing by 2 to get the average.
    return average                                          ## Returning the average as a "solution" to the function.

x = 128                                                     ## Declaring x.
y = 255                                                     ## Declaring y.
z = avg(x,y)                                                ## Using the function "avg" to get the average of the given arguments.
print ("The average of",x,"and", y, "is", z)                ## Printing the solutions.