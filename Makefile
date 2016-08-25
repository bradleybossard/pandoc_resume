resume-basename = resume-of-bradley-bossard

all: html pdf docx rtf

pdf: resume.pdf
resume.pdf: resume.md
	pandoc --standalone --template style.tex \
	--from markdown --to context \
	-V papersize=A4 \
	-o $(resume-basename).tex resume.md; \
	context $(resume-basename).tex

html: resume.html
resume.html: style.css resume.md
	pandoc --standalone -H style.css \
        --from markdown --to html \
        -o index.html resume.md

docx: resume.docx
resume.docx: resume.md
	pandoc -s -S resume.md -o $(resume-basename).docx

rtf: resume.rtf
resume.rtf: resume.md
	pandoc -s -S resume.md -o $(resume-basename).rtf

clean:
	rm index.html
	rm $(resume-basename).tex
	rm $(resume-basename).tuc
	rm $(resume-basename).log
	rm $(resume-basename).pdf
	rm $(resume-basename).docx
	rm $(resume-basename).rtf
