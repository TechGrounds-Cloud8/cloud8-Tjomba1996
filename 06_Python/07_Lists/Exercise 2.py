## Create a script that has the following:
## - List with numbers.
## - for loop that does the following with every number: print the value of the number and the next number in the list added.
##   When printing the last number, the number added is the first number in the list. 

list = [9, 80, 16, 67, 35, 26]                              ## Declaring the list of numbers.

print("My list:", list)                                     ## Printing the list

for i in range(len(list)):                                  ## Loop that loops the length of the list amount of times.
    if i < (len(list)-1):                                   ## Condition to check if the numbers position in the list is not the last one in the list of numbers.
        outcome = list[i] + list[i+1]                       ## Add the current and next number in the list.
        print(outcome)                                      ## Print the outcome.
    else:                                                   ## "Condition" to check if the number is the last in the list.
        outcome = list[i] + list[0]                         ## Add the current(last) number and the first number in the list.
        print(outcome)                                      ## Print the outcome.
