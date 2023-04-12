.PHONY: install
install:
	nvm use v10 && npm install gitbook-cli -g

.PHONY: dev
dev:
	gitbook serve

.PHONY: build
build:
	gitbook pdf ./ ./_book/optimism-bedrock-specs.pdf
	gitbook epub ./ ./_book/optimism-bedrock-specs.epub
	gitbook mobi ./ ./_book/optimism-bedrock-specs.mobi
