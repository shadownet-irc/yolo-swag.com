lapis = require "lapis"

require "markdown"

class Help extends lapis.Application
  [help_list: "/help"]: =>
    render: true

  [helppage: "/help/:topic"]: =>
    fin = io.open "static/help/" .. @params.topic .. ".md", "r"
    if not fin
      return render: "notfound", status: 404

    @pagecode = markdown fin\read "*a"

    render: true
