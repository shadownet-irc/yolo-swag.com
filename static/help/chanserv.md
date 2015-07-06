# ChanServ Help

Parts of this are modified Atheme help

## Common Tasks

### Registering a Channel

To register a channel, if you have ops, use the `ChanServ REGISTER` command.
Registration allows you to maintain a channel access list
and other functions that are normally
provided by IRC bots.

Syntax: `REGISTER <#channel>`

#### Examples

    /msg ChanServ REGISTER #lobby

By default on ShadowNET, registering a channel does *not* give you denoted founder
or admin mode. To set this please use flags `+q` for founder or `+a` for admin.
`FLAGS` will be explained in detail below.

### Assigning Channel Operators/Admins/Halfops

Atheme services work in terms of flags set on a user, hostmask or group. Changing
channel flags is done with the `FLAGS` command.

When only the channel argument is given, a listing of
permissions granted to users will be displayed.

Syntax: `FLAGS <#channel>`

Otherwise, an access entry is modified. A modification may be
specified by a template name (changes the access to the
template) or a flags change (starts with + or -). See the
TEMPLATE help entry for more information about templates.

If you are not a founder, you may only manipulate flags you
have yourself, and may not edit users that have flags you
don't have. For this purpose, `+v` grants the ability to grant
`+V`, `+h` grants the ability to grant `+H`, `+o` grants the ability
to grant +O, and `+r` grants the ability to grant `+b`.

If you do not have +f you may still remove your own access
with `-*`.

Syntax: `FLAGS <#channel> [nickname|hostmask|group template]`
Syntax: `FLAGS <#channel> [nickname|hostmask|group flag_changes]`

#### Permissions

    +v - Enables use of the voice/devoice commands.
    +V - Enables automatic voice.
    +h - Enables use of the halfop/dehalfop commands.
    +H - Enables automatic halfop.
    +o - Enables use of the op/deop commands.
    +O - Enables automatic op.
    +a - Enables use of the protect/deprotect commands.
    +q - Enables use of the owner/deowner commands.
    +s - Enables use of the set command.
    +i - Enables use of the invite and getkey commands.
    +r - Enables use of the kick, kickban, ban and unban commands.
    +R - Enables use of the recover, sync and clear commands.
    +f - Enables modification of channel access lists.
    +t - Enables use of the topic and topicappend commands.
    +A - Enables viewing of channel access lists.
    +F - Grants full founder access.
    +b - Enables automatic kickban.
    +e - Exempts from +b and enables unbanning self.

#### Examples

    /msg NickServ FLAGS #foo
    /msg NickServ FLAGS #foo foo!*@bar.com VOP
    /msg NickServ FLAGS #foo foo!*@bar.com -V+oO
    /msg NickServ FLAGS #foo foo!*@bar.com -*
    /msg NickServ FLAGS #foo foo +oOtsi
    /msg NickServ FLAGS #foo TroubleUser!*@*.troubleisp.net +b
    /msg NickServ FLAGS #foo !baz +*

### Automatically Ban Someone

The AKICK command allows you to maintain channel
ban lists.  Users on the AKICK list will be
automatically kickbanned when they join the channel,
removing any matching ban exceptions first. Users
with the +r flag are exempt.

Syntax: `AKICK <#channel> ADD <nickname|hostmask> [!P|!T <minutes>] [reason]`

You may also specify a hostmask (nick!user@host)
for the AKICK list.

The reason is used when kicking and is visible in
AKICK LIST. If the reason contains a '|' character,
everything after it does not appear in kick reasons
but does appear in AKICK LIST.

If the !P token is specified, the AKICK will never
expire (permanent). If the !T token is specified, expire
time must follow, in minutes, hours ("h"), days ("d")
or weeks ("w").

Syntax: `AKICK <#channel> DEL <nickname|hostmask>`

This will remove an entry from the AKICK list. Removing
an entry will remove any matching channel bans unless the
channel is set NOSYNC.

Syntax: `AKICK <#channel> LIST`

This will list all entries in the AKICK list, including
the reason and time left until expiration.

#### Examples

    /msg NickServ AKICK #foo ADD bar you are annoying | private op info
    /msg NickServ AKICK #foo ADD *!*foo@bar.com !T 5d
    /msg NickServ AKICK #foo DEL bar
    /msg NickServ AKICK #foo LIST

