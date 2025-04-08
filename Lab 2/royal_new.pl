% Birth order: smaller number = born earlier
born(prince_charles, 1).
born(princess_ann, 2).
born(prince_andrew, 3).
born(prince_edward, 4).

% Children of Queen Elizabeth
child(prince_charles, queen_elizabeth).
child(princess_ann, queen_elizabeth).
child(prince_andrew, queen_elizabeth).
child(prince_edward, queen_elizabeth).

% In the new succession rule, any child of the queen is a valid successor,
% regardless of gender. We also check that the birth order is known.
successor(X) :-
    child(X, queen_elizabeth),
    born(X, _).

% This rule generates the succession list based on birth order only.
% It collects child-birth pairs, sorts them by birth number, and extracts the names.
ordered_new_succession(List) :-
    findall(Order-Name, (successor(Name), born(Name, Order)), Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, List).
