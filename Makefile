resume.pdf: resume.typ
	docker run -it -v $(PWD):/root ghcr.io/pmmccorm/typst-cli:latest compile /root/$^ /root/$@

.PHONY: clean
clean:
	git clean -fdx
