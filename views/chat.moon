import Widget from require "lapis.html"

class Chat extends Widget
  content: =>
    iframe src: "https://kiwiirc.com/client/irc.yolo-swag.com/?nick=user%7C?#lobby", style: "width:100%; height:600px; border:none;"

    p ->
      text "If you want to make this webchat bigger, click "
      a href: "https://kiwiirc.com/client/irc.yolo-swag.com/?nick=user%7C?#lobby", "here"
      text "."
