import Widget from require "lapis.html"

class HelpList extends Widget
  content: =>
    h1 "Help"

    p "Need help with the ircd or services? Check these documentation pages before consulting help from our #help channel. A list of topics is below:"

    ul ->
      li ->
        a href: "/help/chanserv", "ChanServ usage"
      li ->
        a href: "/help/cmode", "Channel modes on ShadowNET"
      li ->
        a href: "/help/nickserv", "NickServ usage"
      li ->
        a href: "/help/roleplay", "Roleplay commands"
      li ->
        a href: "/help/umode", "User modes on ShadowNET"
