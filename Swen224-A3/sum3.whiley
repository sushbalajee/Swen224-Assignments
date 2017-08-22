function sum3(int x, int y, int z) -> (int r)
// No parameter can be negative
requires x >= 0
requires y >= 0
requires z >= 0
// Return value cannot be negative
ensures r >= 0
ensures r == x+y+z:
    return x + y + z
