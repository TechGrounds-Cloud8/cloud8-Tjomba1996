# Working with text (CLI)
Every command in Linux has a standard input and output.
The standard input (stdin) is the keyboard. If I run ‘mkdir myfolder’, the mkdir command will know what folder to create, because I typed ‘myfolder’.
The standard output (stdout) is the terminal. The command ‘echo hello’ will write ‘hello’ in the terminal.

## Key Terminology
- CLI = Command Line Interface, refering to the terminal of choice
- input = By default(stdin), what is used a source for certain command
- ouput = By default(stdout), what is used as destination for command
- Redirection = Changing the input or output to something different

## Key commandlines
- echo "text" = Display text in terminal
- \> = Use this to redirect output and overwrite
- <  = Use this to redirect input
- echo "text" >> = Use this to redirect and add instead of overwriting
- grep "filter" file = Use this to display lines that contains the given filter


## Exercise
- Use echo command and output a sentence containing "techgrounds" to an existing textfile with atleast 2 lines
- Use command to write contents of text file to terminal, but use a filter so only the lines with "techgrounds" are displayed
- Use same command as previous exercise, but redirect the output to a new "techgrounds.txt" file

### Sources
https://www.educative.io/edpresso/how-to-do-input-output-redirection-in-linux

https://www.geeksforgeeks.org/filters-in-linux/

https://ryanstutorials.net/linuxtutorial/piping.php

https://stackoverflow.com/questions/6207573/how-to-append-output-to-the-end-of-a-text-file


### Overcome challenges
- Learned how to add text to an existing file with echo command
- Learned how to redirect both input and output

### Results
- TestFile.txt is an existing file with 2 sentences.
- Use **echo >>** to add text to an existing file. Then use **grep** to filter lines containing *techgrounds* and display.
- After that we **grep** and change the output, to put the filtered line into a new text file called **techground.txt**.
- This new file now only contains the line with the *techground* in it.
![](../00_includes/LNX-03/SS_Working_with_Text(CLI).png "Using command echo to add text to an existing file and using grep to filter output into a new text file")
