function copy(int[] src, int sStart, int[] dest, int dStart, int len) -> (int[] r)

requires sStart >= 0
requires dStart >= 0
requires len >= 0
requires sStart + len <= |src|
requires dStart + len <= |dest|

ensures |r| == |dest|
ensures all { i in 0..|dest| | i < dStart && i > dStart + len ==> dest[i] == r[i] }
ensures all { j in sStart..sStart + len , k in dStart..dStart + len | src[j] == r[k] }:
    //
    int index = dStart
    int nLen = len
    int[] nDest = dest
    //
    while nLen > 0
    where |nDest| == |dest|
    where all { i in 0..index | i < dStart && i > dStart+len ==> nDest[i] == dest[i] }
    where all { j in sStart..sStart + len, k in dStart..index | k >= dStart && k <= dStart + len ==> nDest[k] == src[j] }:
        if index >= dStart && index <= dStart+len:
            if sStart + nLen >= 0 && sStart + nLen < |src| && dStart + nLen >= 0 && dStart + nLen < |dest|:
                nDest[dStart + nLen] = src[sStart + nLen]
                nLen = nLen - 1
                index = index + 1
    
    return nDest