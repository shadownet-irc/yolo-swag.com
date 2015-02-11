# Roleplay Commands

Consists of a number of similar commands
all of which send messages to channel under *'fake'
nicknames.* 

The user!ident@host format of a NPC/Roleplay user will always be as follows:

`Nick!Nick_Of_User@npc.fakeuser.invalid`

Please keep this in mind if you find the need to restrict the use of these commands from an abusive user, you could simply set a ban of +b/q `*!MisbehavingUser1@npc.fakeuser.invalid`

These commands require the target channel to be set +N, and
obey the same restrictions as regular channel messages.

Roleplay commands from normal users have the nick
underlined, to clearly show that the message is a
roleplay message rather than a normal one (with one
exception).

#### `NPC nick channel :message`

   Sends a standard roleplay message to #channel with the
nick specified.

#### `NPCA nick channel :message`

   Sends an ACTION to #channel with the nick and message
specified.

#### `SCENE channel :message`

   The same as NPC, except the message always originates
from the nickname `=Scene=`, which *will not be underlined
like the other commands*.

