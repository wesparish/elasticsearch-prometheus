# grep the version from the mix file
VERSION=$(shell ./version.sh)


# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help build

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# PYTHON TASKS
build: ## Build the python module
	python setup.py sdist

buildcontainer: ## Build the docker container with the latest sdist
	cp -r dist docker/dist
	cd docker && $(MAKE) build

clean: ## Remove build artifacts
	rm -rf dist

upload: build ## Publish to pypi
	twine upload dist/*
