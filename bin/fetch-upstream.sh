export MASTERDIR=`dirname -z $1`

export MASTERDOC="$MASTERDIR/master.adoc"

./bin/asciidoc-coalescer.rb  -a allow-uri-read $1 > $MASTERDOC
