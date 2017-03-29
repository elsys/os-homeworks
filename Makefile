all: 2016-2017/HW03-threads.pdf

%.pdf: %.tex
	if [ -n "$(dir $<)" ]; then echo $(dir $<); cd $(dir $<); fi; pdflatex $(notdir $<); cd -

clean:
	find -type f -name '*.log' -or -name '*.out' -or -name '*.pdf' -or -name '*.aux' | xargs rm -v
