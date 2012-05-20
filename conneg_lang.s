#!/usr/bin/env python

import os, sys

reqtable = {"1": "success", "2": "fail"}

print "Content-Type: text/plain"
print "Cache-Control: max-age=600"
print "Vary: Accept-Language"
print 
reqnum = os.environ.get("HTTP_X_REQNUM", None)
sys.stdout.write(reqtable.get(os.environ.get("HTTP_X_REQNUM", "error"), "error"))
