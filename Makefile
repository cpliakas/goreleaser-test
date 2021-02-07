VERSION=$(shell git describe --tags)

.PHONY: build
build:
	go build -ldflags "-X main.Version=$(VERSION)"

.PHONY: dist
dist:
	goreleaser --rm-dist

.PHONY: dist-local
dist-local:
	goreleaser --snapshot --skip-publish --rm-dist

.PHONY: run
run:
	./dist/goreleaser-test_darwin_amd64/goreleaser-test

.PHONY: tidy
tidy:
	go mod tidy

.PHONY: clean
clean:
	rm -rf ./dist