function remove(int[] items, int index) -> (int[] r)

requires |items| >= 1
requires index >= 0 && index < |items|

ensures |items|-1 == |r|
ensures all { x in 0..index | r[x] == items[x] }
ensures all { y in index+1..|items| | r[y] == items[y+1] }:

    int i = 0 
    int j = 0
    int[] nItems = [0; |items| - 1]
    
    while i < |items|
    where i >= 0 && j >= 0:
        if i == index && i + 1 < |items|:
            i = i + 1
        if i < |items| && j < |nItems|:
            nItems[j] = items[i]
        
        i = i + 1
        if j + 1 < |nItems|:
            j = j + 1
        
    return nItems