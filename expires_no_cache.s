#!/usr/bin/env python

import os, sys

reqtable = {"1": "success", "2": "fail"}

print "Content-Type: text/plain"
print "Expires: Wed, 12 Apr 2016 00:11:07 GMT"
print "Cache-Control: no-cache"
print 
reqnum = os.environ.get("HTTP_X_REQNUM", None)
sys.stdout.write(reqtable.get(os.environ.get("HTTP_X_REQNUM", "error"), "error"))
