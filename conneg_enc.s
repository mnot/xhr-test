#!/usr/bin/env python

import os, sys, cStringIO, gzip

def gz(i):
	sb = cStringIO.StringIO()
	gb = gzip.GzipFile(mode="wb", fileobj=sb, compresslevel=6)
	gb.write(i)
	gb.close()
	sb.seek(0)
	o = sb.read()
	sb.close()
	return o


reqtable = {"1": gz("success"), "2": gz("fail")}

print "Content-Type: text/plain"
print "Cache-Control: max-age=600"
print "Vary: Accept-Encoding"
print "Content-Encoding: gzip"
print 
reqnum = os.environ.get("HTTP_X_REQNUM", None)
sys.stdout.write(reqtable.get(os.environ.get("HTTP_X_REQNUM", "error"), "error"))
