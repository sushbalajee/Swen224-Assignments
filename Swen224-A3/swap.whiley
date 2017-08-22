function swap(int x, int y) -> (int a, int b)
requires x != y
ensures a == y
ensures b == x:
    return y, x
