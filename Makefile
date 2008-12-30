htmlfiles = $(patsubst %.adoc,%.html,$(wildcard *.adoc))
cleanfiles = $(addprefix html/,$(htmlfiles))

vpath %.html html

all: $(htmlfiles)

%.html: %.adoc
	asciidoc -a linkcss=1 -a theme=goiaba -o html/$@ $<

clean:
	rm $(cleanfiles)
