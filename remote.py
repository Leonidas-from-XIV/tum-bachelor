import urllib.request

filelike = urllib.request.urlopen("http://www.in.tum.de/")
print(filelike.read())
