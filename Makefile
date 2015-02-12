GIT_REV=`git rev-parse HEAD`

.PHONY: build test deploy

build:
	docker build -t shadownet/site .

test: build
	@echo "http://127.0.0.1:5000"
	@echo "press ^C to kill the test server"
	docker run -p 5000:5000 --name shadownet-site-test --rm -it -e GIT_REV=$(GIT_REV) shadownet/site

deploy:
	git push
	git push dokku master
