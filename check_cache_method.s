#!/usr/bin/env python

import os, sys

print "Content-Type: text/plain"
print "Cache-Control: max-age=10"
print
sys.stdout.write(os.environ.get("REQUEST_METHOD", "error"))

