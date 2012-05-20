#!/usr/bin/env python

import os, sys

print "Content-Type: text/plain"
print "Cache-Control: max-age=60"
if os.environ.get("HTTP_X_REQTYPE", None):
	print "%s: %s" % (os.environ.get("HTTP_X_REQTYPE", "X-Error"),
	  os.environ.get("HTTP_X_URI", "Error"))
print
sys.stdout.write(os.environ.get("HTTP_X_REQNUM", "error"))

