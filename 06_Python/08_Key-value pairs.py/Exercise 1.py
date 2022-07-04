## Create a script with a dictionary. Dictonary has 4 key-pair values. Loop over the dictonary and print every key-value piar in the terminal

dictonary = {'First name' : "Casper", 'Last name' : "Velzen", 'Job Title' : "Lead Learning Coach", 'Company' : "Techgrounds"}       ## Declaring the dictionary.

for key, value in dictonary.items():                                                                                                ## Looping through the dictionary.
    print(key, value)                                                                                                               ## Print every key-pair separatly.
