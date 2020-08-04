
AUTHORS:
	echo "AUTHORS:" > $@
	git shortlog -s -n | perl -nlpE 's/^.{7}/  /' >> $@


