.PHONY: dist
dist:
	goreleaser --snapshot --skip-publish --rm-dist

.PHONY: run
run:
	./dist/goreleaser-test_darwin_amd64/goreleaser-test

.PHONY: clean
clean:
	rm -rf ./dist