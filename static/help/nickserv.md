# NickServ Help

Parts of this are modified Atheme help

## Common tasks

### Making An Account

To make an account, use the `NickServ REGISTER` command.
This will register your current nickname with `NickServ`.
This will allow you to assert some form of identity on
the network and to be added to access lists. Furthermore,
`NickServ` will warn users using your nick without
identifying and allow you to kill ghosts.
The password is a case-sensitive password that you make
up. Please write down or memorize your password! You
will need it later to change settings.

Syntax: `REGISTER <password> <email-address>`

Example:

    /msg NickServ REGISTER bar foo@bar.com

### Resetting A Password

To reset a password, join `#help` and ask to reset a password. You will have to
email a staff member from the email address listed on your `NickServ` account.

### Changing Your Password

`NickServ SET PASSWORD` changes the password of an account.

Syntax: `SET PASSWORD <new password>`

Example:

    /msg NickServ SET PASSWORD hunter2

(the above password should just be stars for you)

### Kill Off A Nick Squatter

`NickServ GHOST` disconnects an old user session, or somebody
attempting to use your nickname without authorization.

If you are logged in to the nick's account, you need
not specify a password, otherwise you have to.

Syntax: `GHOST <nick> [password]`

Example:

    /msg NickServ GHOST foo bar

The `REGAIN` command will essentially do the same thing, but it will also change
your nickname to the desired nickname.

---

This is by no means exhaustive and `NickServ` has many more functions. To see 
these in detail, use the following command:

    /msg NickServ HELP

And for more detail on a single command:

    /msg NickServ HELP command

