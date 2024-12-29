all:
	typst compile src/resume.typ out/resume.pdf

format:
	typstfmt src/resume.typ

watch:
	typst watch src/resume.typ out/resume.pdf

clean:
	rm -rf out