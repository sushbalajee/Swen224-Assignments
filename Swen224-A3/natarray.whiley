type nats is (int[] items) where |items| > 0 && all { i in 0..|items| | items[i]>= 0}

function Test (nats arr) -> (int r)
requires |arr| > 0
ensures r > 0:   
    int i = 0
    
    while i < |arr| where i >= 0:
        if arr[i] < 0:      
            return -1       
        i = i + 1
    return 10