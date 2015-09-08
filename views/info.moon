import Widget from require "lapis.html"

class UserInfo extends Widget
  content: =>
    h1 "About ShadowNET"

    div class: "row", ->
      div class: "col-md-6", ->
        h2 "Staff"

        p "This list is not exhaustive and is in no particular order."

        h3 ->
          a href: "mailto:xena@yolo-swag.com", "Xena"
        p ->
          text "The founder of ShadowNET, Xe has guided the creation of elemental-ircd and worked hard to make Cod and Atheme work symbiotically with it."

        h3 "Caerdwyn"
        p "The founder of DashNet, an IRC network that merged into ShadowNET, a capable Linux system administrator who is still learning (as we all are), but has proven himself to be ready for the task. Bug him if there's something wrong with the website, a server is down, etc."

        h3 "Quora"
        p "One of the main stakeholders in Elemental-IRCd and Cod."

        h3 "Blackjack"
        p "The maintainer of Cod. Inspired to an Unreal level, Blackjack has helped work stuff out of the Ratbox to Elemental simplicity. We all can't wait for the SQL, it's sure to be Mongo."

        h3 ->
          a href: "mailto:zazie@yolo-swag.com", "Zazie (AKA Melody)"
        p "Some person Xe initially found (and rescued from) slaving at the QA mines of Microsoft Xbox hardware testing. Rescued from this former home of moronic users and, freed from networks past, they now thrive here as a core part of the staff. Experienced in most aspects of IRC operation, with experience in these daemons; Anope, Atheme, Charybdis, Elemental, InspIRCd, and Unreal."

        h3 "Lore"
        p "See one of the DashNet ZNC accounts connected somewhere, or does our Minecraft server intrigue you? Contact him if you want in."

        h3 ->
         a href: "mailto:dusk@dusky.horse", "Dusk"
        p ->
         text "The founder of ctOS.link, an IRC network that merged into ShadowNET. She also hosts her own ZNC bouncer, if you're interested you can contacter her."

      div class: "col-md-6", ->
        h2 "Servers"

        p "Right now ShadowNET has the following client servers available:"

        ul ->
          li ->
            p ->
              code "cyka.yolo-swag.com"
              text " - "
              i "cyka blyat xaxaxa"
              text " - Seattle, WA"

          li ->
            p ->
              code "locutus.yolo-swag.com"
              text " - "
              i "Locotus...of borg"
              text " - Seattle, WA"

          li ->
            p ->
              code "dusky.horse"
              text " - "
              i "The Help network for Dusk's ZNC users"
              text " - France"

          li ->
            p ->
              code "shadow6xku2uei7e.onion"
              text " - "
              i "anonymous client server"
              text " - Location undisclosed"

        p ->
          text "All of our servers are listening on port "
          code "6667"
          text " for plaintext connections. For SSL connections, use port "
          code "6697"
          text "."

        p "Attention bot authors: Please note that we do use TCP defer-accept so please send data before you wait to get any."

        h2 "Services"

        h3 ->
          a href: "http://atheme.net", "Atheme IRC Services"
        p "Atheme is a feature-packed, extremely customizable IRC services daemon that is secure, stable and scalable. Compatible with most IRCv3 compliant daemons and some that aren't, it is one of the most widely known and used services packages today. More information available on their website. Just click the title!"

        h3 ->
          a href: "http://znc.in", "ZNC"
        p "ZNC, an IRC Network Bouncer, keeps your connection online, even when your client is closed. It keeps your channels, PMs, modes and all saved for you until you connect again, making it seem as if you never went offline."
        p "We currently offer several bouncers, please poke either Xe or Lore on IRC to get more information."

        h3 ->
          a href: "https://github.com/Xe/Tetra", "Tetra"
        p "Tetra is our second generation homegrown extended services package. It handles things that both IRC bots and traditional administrative services or statistics services would handle. It is written in Go and uses Lua scripts for all dynamic functionality."
