#!/bin/bash
echo $SHELL
 
echo 'publish-adoc'
#gem install asciidoctor


for filename in ../*/master.adoc; do

   echo $filename
  asciidoctor -b html5  -a toc=left -a theme=flask -a include-tags="!excludeDownstream;!excludeAll" $filename 

done


for filename in ../*/master.html; do

   echo $filename
  sed -i '/Table of Contents/c\<a href=../index.html>Home</a><br><br>' $filename

done
