import Widget from require "lapis.html"

class Rules extends Widget
  content: =>
    h1 "Rules"

    p "These rules may change at any time with or without warning and it is your job to have read and understand them."

    h2 "ShadowNET User Rules"

    p [[Aka: the 5 "don'ts"]]

    ul ->
      li "Don't be a dick"
      li "Don't try to find holes in the rules"
      li "Don't evade bans/quiets"
      li "Don't creep on people"
      li "Don't flood channels or private messages unless otherwise allowed to"

    p "Depending on the severity of the infraction, measures may be taken at a network level. ShadowNET staff reserve the right to disconnect any client at any time for any reason, formerly stated or not."

    p "Channel owners and/or operators may run their channel as they see fit. They do not have to give justification for any action they take, but doing such a thing is usually a good idea."

    p "Your IP address should remain cloaked unless you remove the cloak or other mitigating circumstances. For logistics reasons, ShadowNET staff will always have the ability to see any client's real IP address."

    h2 "ShadowNET Administrative Policy"

    p "ShadowNET operators and administrators will not get involved in channel matters unless they have flags in that channel. ShadowNET staff will not care about what goes on in channels unless they need to or are talking in them. ShadowNET staff is not any different from normal users except for a star next to their name and a lot of extra work."

    p "K-lines are reserved only for those who truly earn them."

    ul ->
      li "If /ignore solves the problem rather than a kick, /ignore"
      li "Kick if a ban is unneeded"
      li "Ban if a /kill is unwarranted for"
      li "Kill rather than kline if that solves the problem"
      li "Kline when a server ban is really needed."

    p "Please do not ask to be ShadowNET staff. If the current staff body believes in good faith that a user is capable of becoming ShadowNET staff, they will be picked for the role."

    p "ShadowNET staff will never force you to join channels or forcibly change your user modes as the IRC daemon we use does not allow that to be done."

    p ->
      text "ShadowNET staff may kill or kline users with or without reason. ShadowNET staff
    are "
      b "not"
      text" law enforcement."

    h2 "Session Limits"

    p ->
      text "If you are willing to offer a bouncer or have other needs to raise your session limit, please ask an operator in "
      code "#help"
      text ". We will ask (but not require) that you have identd running and that idents are non-user changeable, as well as having a channel on ShadowNET registered in case there is abuse."
