TYPST_IMAGE := ghcr.io/typst/typst:0.15.1

resume.pdf: resume.typ
	docker run --rm -v $(PWD):/work -w /work $(TYPST_IMAGE) compile $< $@

.PHONY: clean
clean:
	git clean -fdx
