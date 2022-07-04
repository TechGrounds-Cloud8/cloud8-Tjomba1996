## Get an input from the user, compare it to your name. If it is your name, print a welcome message. Otherwise print a different message.

input = input()                                                    ## Get input from the user.

if input == "Tom":                                                 ## Check to see if the user is me.
    print("Welcome " + input + "! Glad you could make it!")
else:                                                              ## If the user is not me, do the following.
    print("Intruder alert! Get rid of " + input + "!")