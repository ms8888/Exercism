def decode(rleString):
    pass


def encode(rleString):
    if len(rleString) == 0:
        return rleString
    else:
        prevChar = rleString[0]
        for chars in range(0, len(rleString)):
            prevChar = rleString[chars]
        