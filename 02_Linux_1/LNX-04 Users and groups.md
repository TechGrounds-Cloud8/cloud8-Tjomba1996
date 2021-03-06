# Users and groups
Linux has users, similar to accounts on Windows and MacOS. Every user has their own home directory. Users can also be part of groups.
There is a special user called ‘root’. Root is allowed to do anything.


## Key Terminology
- Root =  The user name/account that by default has access to all commands and files on a Linux system

## Key Commandlines
- Sudo = using this command prior to using any other command, gives you temporary "root permission" in that command.
- useradd = add a new user
- useradd -G "group-name" "username" = Add a new user to a group
- passwd "username" = add/change a password for a user
- usermod -aG sudo "username" = Make user a sudo user
- less /etc/group = List all groups on system
- more /etc/passwd = List all users on system
- sudo usermod -a -G "groupname" "username" = Add an existing user to an existing group

## Exercise
- Create a new user in your VM
  - New user is part of admin group
  - Should have a password
  - Should be able to use "sudo"
- Locate the files that store users, passwords and groups, to see if your new user's data is there

### Sources
https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/

https://www.cyberciti.biz/faq/howto-linux-add-user-to-group/

https://kb.iu.edu/d/abdb#:~:text=To%20change%20file%20and%20directory,%2C%20write%2C%20and%20execute%20permissions.

https://www.cyberciti.biz/faq/where-are-the-passwords-of-the-users-located-in-linux/#:~:text=The%20%2Fetc%2Fpasswd%20is%20the,is%20one%20entry%20per%20line.

https://askubuntu.com/questions/383057/how-to-decode-the-hash-password-in-etc-shadow

### Overcome challenges
- See where all the users are located
- See where all the groups are located
- See what permissions a user has and what group a user is in

### Results
- New user: Tjomba

![Users](../00_includes/LNX-04/SS_Users_Linux.png "All users on the system")

- This list also gives us all the users, but now with the passwords. These passwords are **hashed**, which means the user's password is taken and scrambled with a special key, known by the system.

![Passwords](../00_includes/LNX-04/SS_Passwords_Linux.png "All users with passwords")

- Here are all the groups shown, with the users next to it.

![Groups](../00_includes/LNX-04/SS_Groups_Linux.png "All groups shown, using \"*less /etc/group*\"")
