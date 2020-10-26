NAME=$(shell basename `git rev-parse --show-toplevel`)
OUT=bin/${NAME}


.PHONY: build
build:
	go build -race -o ${OUT} ./... 

.PHONY: test
test:
	go test -cover ./...
