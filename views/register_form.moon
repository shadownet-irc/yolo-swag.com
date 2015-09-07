import Widget from require "lapis.html"

class RegisterForm extends Widget
  content: =>
    h1 "Register a New Account"

    div ->
      form class: "form-signin", method: "POST", action: "/register", ->
        input type: "hidden", name: "csrf_token", value: @csrf_token

        div class: "form-group", ->
          label for: "name", "Username"
          div class: "input-group", ->
            input type: "text", class: "form-control", name: "username", id: "username", placeholder: "Username", :required

        div class: "form-group", ->
          label for: "email", "Email Address"
          div class: "input-group", ->
            input type: "email", class: "form-control", name: "email", id: "email", placeholder: "Enter Email Address", :required

        div class: "form-group", ->
          label for: "name", "Password"
          div class: "input-group", ->
            input type: "password", class: "form-control", name: "password", id: "password", :required

        input type: "submit", name: "submit", id: "submit", value: "Submit", class: "btn btn-info"
