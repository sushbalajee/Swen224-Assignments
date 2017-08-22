function mid(int x,int y, int z) -> (int r)
requires x != y && y != z && z != x
ensures 
    (r==x && ((r < y && r > z) || (r < z && r > y))) || 
    (r==y && ((r < x && r > z) || (r < z && r > x))) || 
    (r==z && ((r < x && r > y) || (r < y && r > x))) :
    
    if (x < y && x > z) || (x < z && x > y):
        return x
    else if (y < x && y > z) || (y < z && y > x):
        return y
    else:
        return z