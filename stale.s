#!/bin/env python

import os, sys, time

reqtable = {"1": "success", "2": "fail"}
reqnum = os.environ.get("HTTP_X_REQNUM", "error - reqnum header not found")
reqmsg = reqtable.get(reqnum, "error - reqnum not recognised")
#if os.environ.get("HTTP_IF_MODIFIED_SINCE", None):
#	reqmsg = "error - inappropriate If-Modified-Since; what are you thinking?"

print "Content-Type: text/plain"
print "X-Response-To-Reqnum: %s, %s" % (reqnum, reqmsg)
print "Last-Modified: %s" % time.strftime('%a, %d %b %Y %H:%M:%S GMT', time.gmtime(time.time() - (31 * 24 * 60 * 60)))
print 
sys.stdout.write(reqmsg)
