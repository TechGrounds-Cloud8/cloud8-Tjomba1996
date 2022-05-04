# File Permissions

## Key Commandlines
-ls -lah = Use this command to view the permissions for all files in a directory

## Key terminology
- Permissions:
  - D: Indicates if the item is a directory. If "-" then the file is a text file.
  - R: Read permission granted
  - W: Write permission granted
  - X: Execute permission granted

  - Permissions are divided into 3 groups with the initial character indicating file type: - RWX --- ---
    - First set is the owners permissions
    - Second set is the groups permissions
    - Third set is for the "world" or other users, outside group

## Exercise
- Create a text file and make a long listing to view the file's permission. Who's the file's owner and group?
- What permissions does this file have?
- Make this file executable
- Remove the read and write(RW) permission from everyone except the owner and see if you can still read it
- Change owner of the file to a different user and check if you can read it again
- Change group ownership of the file to different group

### Sources
https://kb.iu.edu/d/abdb#:~:text=To%20view%20the%20permissions%20for,in%20a%20directory%20in%20Unix.&text=In%20the%20output%20example%20above,a%20file%20or%20a%20directory.


### Overcome challenges
[Give a short description of your challanges you encountered, and how you solved them.]

### Results
[Describe here the result of the exercise. An image can speak more than a thousand words, include one when this wisdom applies.]
