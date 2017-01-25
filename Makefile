BASE_PATH ?= $(PWD)
VERSION ?= dev
SOURCE_BRANCH ?= master
GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD 2>/dev/null)

organisation_name := sample_app
project_name := hello_world
project_namespace := $(organisation_name)/$(project_name)

## Porcelain ##################################################################
include tasks/*.mk
default: install

install: app-install
test: app-test
deploy: release-deploy
