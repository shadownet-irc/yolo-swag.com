# `yolo-swag.com`

The code that powers https://yolo-swag.com

## Deployment

```console
$ docker build -t shadownet/yolo-swag.com .
$ docker run -e ATHEME_URL=http://foo.bar.baz:8080/xmlrpc -e VIRTUAL_HOST=yolo-swag.com --name yolo-swag_backend -d shadownet/yolo-swag.com
```

Most of this is largely untested and is pretty overkill given it mostly serves 
static files. Use at your own risk, but it works for us (tm)!
