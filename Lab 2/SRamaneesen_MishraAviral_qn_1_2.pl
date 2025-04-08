% Facts
competitor(sumsum, appy).
developed(sumsum, galacticas3).
smartphonetech(galacticas3).
stole(stevey, galacticas3).
boss(stevey, appy).

% Rules
rival(X, Y) :- competitor(X, Y).
business(X) :- smartphonetech(X).
unethical(X) :- boss(X, Y), rival(Z, Y), business(B), stole(X, B), developed(Z, B).

