import base64
import sys

io = sys.argv[1]
out = io + ".base64.txt"

infile=open(io,"rb")
outfile=open(out,"wb")

outfile.write(base64.b64encode(infile.read()))
outfile.close()