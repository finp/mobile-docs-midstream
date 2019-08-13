export UPLOC=upstream-location=../../mobile-docs/build/site

./bin/asciidoc-coalescer.rb  -a $UPLOC -a allow-uri-read ./idm/identity-management.adoc > ./idm/master.adoc

./bin/asciidoc-coalescer.rb  -a $UPLOC -a allow-uri-read ./push/push-notifications.adoc > ./push/master.adoc

# out of scope for LA release
# ./bin/asciidoc-coalescer.rb  -a $UPLOC -a allow-uri-read ./metrics/mobile-metrics.adoc > ./metrics/master.adoc

./bin/asciidoc-coalescer.rb  -a $UPLOC -a allow-uri-read ./security/mobile-security.adoc > ./security/master.adoc

./bin/asciidoc-coalescer.rb  -a $UPLOC -a allow-uri-read ./sync/data-sync.adoc > ./sync/master.adoc

./bin/asciidoc-coalescer.rb  -a $UPLOC -a allow-uri-read ./showcase/showcase.adoc > ./showcase/master.adoc

./bin/asciidoc-coalescer.rb  -a $UPLOC -a allow-uri-read ./getting-started/getting-started.adoc > ./getting-started/master.adoc
