function append(int[] items, int item) -> (int[] rs)
ensures all { k in 0..|items| | rs[k] == items[k] }
ensures rs[|items|] == item:
    //
    int[] nItems = [0; |items| + 1]
    int i = 0
    //
    while i < |items|
    where i >= 0
    where i <|nItems|
    where |nItems| == |items| + 1
    where all { k in 0..i | nItems[k] == items[k] }:
        nItems[i] = items[i]
        i = i + 1
    //
    nItems[i] = item    
    //
    return nItems
