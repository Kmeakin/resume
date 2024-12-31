all:
	mkdir -p out out/cover_letters
	typst compile src/resume.typ out/resume.pdf
	typst compile src/cover_letters/compilers.typ out/cover_letters/compilers.pdf
	typst compile src/cover_letters/application_software.typ out/cover_letters/application_software.pdf
	typos

watch:
	typst watch src/resume.typ out/resume.pdf

clean:
	rm -rf out