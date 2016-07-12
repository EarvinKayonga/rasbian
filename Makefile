include env_make

NS = earvin
VERSION ?= latest
INSTANCE = rasbianEnv
PROJECT = rasbian

.PHONY: build run run-daemon rm stop

build:
	docker build --rm=true --force-rm -t $(NS)/$(PROJECT):$(VERSION) .

run: build
	docker run --name $(NS)-$(INSTANCE) -it $(VOLUMES)  $(NS)/$(PROJECT):$(VERSION) bash

run-daemon: build
	docker run --name $(NS)-$(INSTANCE) -d $(VOLUMES) $(NS)/$(PROJECT):$(VERSION) bash

rm: stop
	docker rm -f $(NS)-$(INSTANCE)
	docker rmi -f $(NS)/$(PROJECT):$(VERSION)

stop:
	docker stop $(NS)-$(INSTANCE)

default:	run
