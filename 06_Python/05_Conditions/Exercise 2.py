## Get input from the user. Give a respons to that input based on if the value is less than, equal to or higher than 100.

solution = False

while solution == False:
    userInput = int(input("Please enter a number:"))
    
    if userInput > 100:                                            ## Checking if the value is higher than 100.
        print(userInput , "is a big number!")
    elif userInput == 100:                                         ## Checking if the value is equal to 100.
        print(userInput ,"! You guessed the magic number!")
        solution = True  
    elif userInput < 100:                                          ## Checking if the value is lower than 100.
        print(userInput , "is kinda small, don't you think?")
    else:
        print("I don't know what to do with this...")              ## Just in case there's an unforeseen input