import Widget from require "lapis.html"

class Error extends Widget
  content: =>
    center ->
      h1 "Oops!"

      p "There was an error"

      if @err
        pre @err
