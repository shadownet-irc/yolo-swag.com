import Widget from require "lapis.html"

class RegisterSuccess extends Widget
  content: =>
    center ->
      h1 "You Have Registered"

      p "You can now log in with the username #{@params.username} and use #{@params.email} for password recovery."
