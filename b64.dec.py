import base64
import sys

io = sys.argv[1]
out = io + ".bin"

infile=open(io,"rb")
outfile=open(out,"wb")

outfile.write(base64.b64decode(infile.read()))
outfile.close()