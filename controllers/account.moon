lapis = require "lapis"
csrf = require "lapis.csrf"
http = require "lapis.nginx.http"
mime = require "mime"

require "xmlrpc.http"

import respond_to from require "lapis.application"
import assert_valid from require "lapis.validate"

class Account extends lapis.Application
  "/register": respond_to {
    GET: =>
      @title = "Register"
      @csrf_token = csrf.generate_token
      return render: "register_form"

    POST: =>
      csrf.assert_token @

      assert_valid @params, {
        { "username", exists: true, min_length: 3 }
        { "password", exists: true, min_length: 6 }
        { "email", exists: true, min_length: 6 }
      }

      ok, res = xmlrpc.http.call os.getenv("ATHEME_URL"), "atheme.command", "*", "*", "*", "NickServ", "REGISTER", @params.username, @params.password, @params.email

      if not ok
        @title = "Registration Failed"
        @err = "#{ok}: #{res}"
        return render: "error", status: 500

      @title = "Register Success"
      return render: "register_success"
  }
