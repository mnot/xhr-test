#!/usr/bin/python

import os, sys, time

reqtable = {"1": "success", "2": "fail"}
reqnum = os.environ.get("HTTP_X_REQNUM", "error - reqnum header not found").strip()
reqmsg = reqtable.get(reqnum, "error - reqnum not recognised")

print "Content-Type: /text/plain"
print "X-Response-To-Reqnum: %s, %s" % (reqnum, reqmsg)
if reqnum == "1":
	print "Status: 307 Temporary Redirect"
	print "Location: http://www.mnot.net/javascript/xmlhttprequest/success.asis"
	print "Cache-Control: max-age=35"
	print 
	sys.stdout.write(reqmsg)
else:
	print
	sys.stdout.write(reqmsg)
