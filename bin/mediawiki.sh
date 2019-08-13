#!/bin/bash
echo $SHELL
 
echo 'convert-adoc'

for filename in ../*/master.adoc; do

   echo $filename
  asciidoctor -b docbook   -a include-tags="!excludeDownstream;!excludeAll" $filename 

done

for filename in ../*/master.xml; do

   echo $filename
   pandoc -f docbook -t mediawiki $filename > $filename.wiki

done
