## Create a script that takes userinput, stores the input in a dictionary and appends this to a .csv file

import csv                                                                               ## Importing csv 'toolset'.

info = {                                                                                 ## Declaring info dictionary that ask the user for input.
    'First name' :input("Enter first name:"),
    'Last name' :input("Enter last name:"),
    'Job title' : input("Enter Job title:"),
    'Company' :input("Enter company:")
    }

with open("06_Python/08_Key-value pairs.py/data.csv", 'a', newline= "") as file:         ## Opening the data.csv file and giving append permissions.
    writer = csv.DictWriter(file, fieldnames = info.keys())                              ## 
    writer.writerow(info)                                                                ## Writes every input info to a new line.