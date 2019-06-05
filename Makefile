path = docs/
resume-basename = resume-of-bradley-bossard

all: html pdf docx rtf

# Add hack below to strip out link to PDF when generating PDF version.
# TODO(bradleybossard) : Fix a more elegant way to do this.
pdf: resume.pdf
resume.pdf: resume.md
	cat resume.md | grep -v REMOVEPDF | sed 's/<!-- REMOVEHTML -->//g' > resume_pdf.md;
	pandoc --standalone --template style.tex \
	--from markdown --to context \
	-V papersize=A4 \
	-o $(path)$(resume-basename).tex resume_pdf.md; \
	context $(path)$(resume-basename).tex;
	rm resume_pdf.md;

html: resume.html
resume.html: style.css resume.md
	cat resume.md | grep -v REMOVEHTML > resume_html.md;
	pandoc --standalone -H style.css \
        --from markdown --to html \
        -o $(path)index.html resume_html.md
	rm resume_html.md;

docx: resume.docx
resume.docx: resume.md
	cat resume.md | grep -v REMOVEPDF > resume_doc.md;
	pandoc -s -S resume_doc.md -o $(path)$(resume-basename).docx
	rm resume_doc.md;

rtf: resume.rtf
resume.rtf: resume.md
	pandoc -s -S resume.md -o $(path)$(resume-basename).rtf

clean:
	rm $(resume-basename).tex
	rm $(resume-basename).tuc
	rm $(resume-basename).log
