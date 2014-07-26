#!/usr/bin/env bash
MYPWD=${BASH_SOURCE[0]%/*}

[ -f $MYPWD/ascii.list ] && rm $MYPWD/ascii.list

for x in $MYPWD/ascii/*/* ; do
	[ ${x#*ascii/*.} == "html" ] && continue
	CURR=${x#*ascii/}
	NODIR=${CURR#*/}
	printf "\t\t\t<li><a href='#%s'>%s</a></li>\n" $CURR $NODIR >> $MYPWD/ascii.list
done

cat $MYPWD/index.top.tmpl $MYPWD/ascii.list $MYPWD/index.bottom.tmpl > $MYPWD/index.html

[ -f $MYPWD/ascii.list ] && rm $MYPWD/ascii.list
