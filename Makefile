all:
	mkdir -p out out/cover_letters
	typst compile src/resume.typ out/resume.pdf
	typst compile src/cover_letters/compilers.typ out/cover_letters/compilers.pdf

format:
	typstfmt src/resume.typ
	typstfmt src/cover_letters/compilers.typ

watch:
	typst watch src/resume.typ out/resume.pdf

clean:
	rm -rf out