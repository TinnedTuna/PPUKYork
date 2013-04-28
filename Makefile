minutes:
	find . -name \*.md -exec pandoc --toc --smart --variable geometry:"a4paper" {} -o `basename {} .md`.pdf  \; 
