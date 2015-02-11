import Widget from require "lapis.html"

class Index extends Widget
  content: =>
    h1 "ShadowNET IRC"

    p class: "lead", "A friendly and fun IRC network"

    p ->
      text "ShadowNET was created initially so that the main administrator could better keep tabs on the chat that his Minecraft server was running while he was AFK. It has since grown into a globally accessible chat network with at least 90% uptime and a fairly small, tight-knit group of friends talking about random things that come up. It is also the test network of Elemental-IRCd."
