
%Part1
isElementInList(EL, [EL | _]).
isElementInList(EL, [_|Tail]) :- isElementInList(EL,Tail).

%Part2
mergeLists([], List2, List2).
mergeLists([Head | Tail], List2, [Head|Merged]) :-mergeLists(Tail, List2, Merged).

%Part3
reverseList([], []).
reverseList([Top | Bottom], Reversed) :-                                            mergeLists(Smaller,[Top], Reversed),reverseList(Bottom, Smaller).

%Part4
insertElementIntoListEnd(Ele, List, New) :- mergeLists(List, [Ele], New).

