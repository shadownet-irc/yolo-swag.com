lapis = require "lapis"

class extends lapis.Application
  layout: require "layout.bootstrap"

  @include "controllers.help"

  [index: "/"]: =>
    render: true

  [rules: "/rules"]: =>
    render: true

  [info: "/info"]: =>
    render: true

  [chat: "/chat"]: =>
    render: true

  handle_404: =>
    status: 404, render: "notfound"
