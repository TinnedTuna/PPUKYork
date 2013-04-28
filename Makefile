clean:
	find . -name \*.pdf -exec rm -f {} \; 

pandoc:
	bin/deep-pandoc.sh

minutes: clean pandoc


