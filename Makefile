clean:
	find . -name \*.pdf -exec rm -f {} \; 

pandoc:
	bin/deep-pandoc.sh

minutes: clean pandoc

dist: minutes
	git push origin master

