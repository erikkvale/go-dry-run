# Makefile to handle pre-commit checks

.DEFAULT_GOAL := build

make-me-pretty:
	go fmt ./...
.PHONY:make-me-pretty

lint-me-broh: make-me-pretty
	golint ./...
.PHONY:lint-me-broh

vet: make-me-pretty
	go vet ./...
.PHONY:vet

run-tests: vet
	go test .
.PHONY:run-tests

build: run-tests
	go build adder.go
.PHONY:build


