What is GPGstore?
=================

GPGstore is a front-end script for managing the storage of passwords with GnuPG.
The script is intentionally simple, so that it is easy to verify.

For the security you are dependent on GnuPG, your editor and the shell.


How do I use GPGstore?
======================

Creating a key pair
-------------------

First, you need to create a public/secret key pair if you want to use a separate key for storing your passwords. You can do this with the command:

gpg --gen-key

This will ask you some questions. You can answer this in whatever way you prefer. What is important however, is the name that is associated with the key. The shell script defines this in the variable GPG_USER and defaults to "gpgstore".


Changing the settings
---------------------

Once you have generated the key, edit the script and change the variables, depending on your operating system, environment and/or personal preferences.


Creating the storage directory
------------------------------

When you start the program, the program will warn you if the storage directory does not exist. You should create it. For example with:

mkdir ~/.gpgstore

Adding a password
-----------------

To add a password, use:

gpgstore --add <identity>

This will launch an editor. Now you can type the information that you want to store. This can be a password, but also other information. After you have saved and quit your editor, the program will ask for your passphrase, and will save the information in the gpgstore directory as <identity>.pwd.

If you use gpg-agent, you will not be asked for your password every time.


Viewing a password
------------------

To view your password, use the command:

gpgstore --view <identity>

This will ask your passphrase and shows the password information that was added
earlier. It outputs the information to standard output, so that you can use the output in other programs.

Editing a password
------------------

Editing a password works like adding a password, except that the program will ask your passphrase twice: once to decrypt, and once to encrypt the changed data. The command to use is:

gpgstore --edit <identity>

Deleting a password
-------------------

If you want to remove a password, use:

gpgstore --delete identity

The program will ask you to confirm the deletion. After you confirmed, the file in the gpgstorage will be removed.


Listing the passwords
---------------------

To see the identities for which we have stored passwords, use:

gpgstore --list


