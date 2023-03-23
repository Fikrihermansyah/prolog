org_tua_nya(jack, ray).
org_tua_nya(amy, liza).
org_tua_nya(john, mary).
org_tua_nya(amy, john).
org_tua_nya(jack, susan).
org_tua_nya(david, liza).
org_tua_nya(susan, peter).
org_tua_nya(david, john).
org_tua_nya(karen, susan).
org_tua_nya(susan, mary).
org_tua_nya(john, peter).
org_tua_nya(karen, ray).

saudara(john).
saudara(peter).
saudara(david).
saudara(ray).
saudara(jack).
saudari(karen).
saudari(liza).
saudari(amy).
saudari(mary).
saudari(susan).

is_kkek(X,Z) :- org_tua_nya(X,Y), org_tua_nya(Y,Z), saudara(X).
is_nnek(X,Z) :- org_tua_nya(X,Y), org_tua_nya(Y,Z), saudari(X).
is_org_tua(X,Y) :- org_tua_nya(X,Y).
is_ank(Y,X) :- org_tua_nya(X,Y).
is_sdr(X, Y) :- org_tua_nya(Z, X), org_tua_nya(Z, Y), X \= Y.
