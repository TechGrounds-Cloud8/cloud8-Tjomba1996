## Create a script that can display 5 names in a list, using a for loop.

nameList = ["Ab", "Ismail", "Tom", "Casper", "Shikha"]                      ## Creating a list of names.

a = 0                                                                       ## Declaring "a", used in for loop.

for i in nameList:                                                          ## Using a loop that loops the amount of names in the list.
    print(nameList[a])                                                      ## Print the name by index, starting at 0.
    a = a + 1                                                               ## Increasing the index by 1 after the print is done.