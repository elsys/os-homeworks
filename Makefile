all: 2009-2010/HW01-cat.pdf 2009-2010/HW02-wc.pdf 2009-2010/HW03-ls.pdf 2009-2010/HW04-shell.pdf 2009-2010/HW05-shell2.pdf \
2013-2014/HW01-head.pdf 2013-2014/HW02-shell.pdf 2013-2014/HW03-threads.pdf 2013-2014/HW04-ls.pdf 2013-2014/EX01-pingpong.pdf \
2013-2014/FINAL01-replace.pdf 2013-2014/FINAL02-multifork.pdf \
2014-2015/HW01-wc.pdf 2014-2015/HW02-shell.pdf 2014-2015/HW03-threads.pdf 2014-2015/HW04-ls.pdf \
2014-2015/FINAL01-statistics.pdf 2014-2015/FINAL02-multifork.pdf 2014-2015/FINAL03-warcraft.pdf 2014-2015/FINAL04-du.pdf \
2014-2015/SEPT01-head.pdf 2014-2015/SEPT02-multifork.pdf 2014-2015/SEPT03-banks.pdf 2014-2015/SEPT04-find.pdf \
2015-2016/HW01-tail.pdf 2015-2016/HW02-shell.pdf 2015-2016/FINAL03-warcraft.pdf \
2015-2016/LAST01-LuaCommentRemoval.pdf 2015-2016/LAST02-multifork.pdf 2015-2016/LAST04-find.pdf \
2015-2016/LAST01-warcraft4.pdf \
2015-2016/JULY01-statistics.pdf 2015-2016/JULY02-banks.pdf 2015-2016/JULY03-du.pdf \
2015-2016/SEP102-pirates.pdf 2015-2016/SEP202-miners.pdf 2015-2016/SEP103-execls.pdf 2015-2016/SEP203-userls.pdf \
2015-2016/SEP101-10sentances.pdf 2015-2016/SEP201-sourceanalyzor.pdf \
2016-2017/HW03-threads.pdf

%.pdf: %.tex
	if [ -n "$(dir $<)" ]; then echo $(dir $<); cd $(dir $<); fi; pdflatex $(notdir $<); cd -

clean:
	find -type f -name '*.log' -or -name '*.out' -or -name '*.pdf' -or -name '*.aux' | xargs rm -v
