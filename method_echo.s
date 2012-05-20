#!/usr/bin/env python

import os, sys

print "Content-Type: text/plain"
print "Cache-Control: no-store"
print "X-Method: %s" % os.environ.get("REQUEST_METHOD", "error")
print
sys.stdout.write(os.environ.get("REQUEST_METHOD", "error"))

