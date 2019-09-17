for filename in ./*source.adoc; do

   echo $filename
  ../bin/asciidoc-coalescer.rb -a include-tags='!excludeDownstream;!excludeAll' $filename > ./showcase-apps.adoc

done
