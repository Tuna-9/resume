

FLAGS = --margin-bottom 0 \
        --margin-left 0 \
        --margin-right 0 \
        --margin-top 23 \
        --page-size Letter \
        --orientation Portrait


.PHONY: all
all: resume.pdf


resume.pdf: resume.html *.css
	wkhtmltopdf $(FLAGS) $< $@

clean:
	rm -f resume.pdf
