.PHONY: doc

doc: $(patsubst %.md,%.docx,$(wildcard *.md))

%.docx : %.md
	pandoc -t docx -o $@ $<
