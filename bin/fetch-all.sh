#!/bin/bash

export UPLOC=upstream-location=../rhmi-docs

./bin/asciidoc-coalescer.rb  -a allow-uri-read i8-gs/getting-started.adoc > getting-started/master.adoc

./bin/asciidoc-coalescer.rb  -a allow-uri-read i8-rn/release-notes.adoc > release-notes/master.adoc

