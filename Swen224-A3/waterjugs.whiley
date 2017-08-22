function pourSmall2Large(int smallJug, int largeJug) -> 
                        (int smallJugAfter, int largeJugAfter)
// The small jug holds between 0 and 3 litres (before)
requires smallJug >=0 && smallJug <=3
// The large jug holds between 0 and 5 litres (before)
requires largeJug >=0 && largeJug <=5
// The small jug holds between 0 and 3 litres (after)
ensures smallJugAfter >=0 && smallJugAfter <=3
// The large jug holds between 0 and 5 litres (after)
ensures largeJugAfter >=0 && largeJugAfter <=5
// The amount in both jugs is unchanged by this function
ensures smallJug + largeJug == smallJugAfter + largeJugAfter
// Afterwards, either the small jug is empty or the large jug is full
ensures smallJugAfter == 0 || largeJugAfter == 5:
    if smallJug + largeJug <= 5:
        // indicates we're emptying the small jug
        largeJug = largeJug + smallJug
        smallJug = 0
    else:
        // indicates we're filling up the medium jug    
        smallJug = largeJug + smallJug
        largeJug = 5
    return smallJug, largeJug

//The implementation does not meet the specification
//The else block implies the largeJug and smallJugs sum is greater than 5L
//which does not allow for the specification that the smallJug can only hold 3L
//to be true. The else block also changes the total volume of water too