max([X],X).
max([],0).
max([X,Y|T],Res):-X>Y,max([X|T],Res).
max([X,Y|T],Res):-X=<Y,max([Y|T],Res).


deleteNList(N,L1,L2) :- delete(N,L1,N,L2).
delete(_,[],_,[]).
delete(N,[_|T],1,A) :- delete(N,T,N,A).
delete(N,[H|T],K,[H|A]) :- K1 is K - 1, delete(N,T,K1,A).



replace_first_k(K,L,L1):-replace(K,1,8,L,L1).
replace(_,_,_,[],[]).
replace(0,_,_,L,L).
replace(X,A,B,[H|T],Res):-A==H,X1 is X-1,replace(X1,A,B,T,Res1),  Res = [B|Res1]
; A \== H, replace(X,A,B,T,Res1) , Res = [H|Res1].



position(E,L,Is) :-pos(E,L,1, Is).
pos(_,[],_,[]).
pos(E,[H|T],I,[I|Is]):-E==H ,I1 is I + 1,pos(E,T,I1,Is).
pos(E,[H|T],I,Is) :- E\==H,I1 is I + 1,pos(E,T,I1,Is).

