%General Sir John kotelawala Defence University
%Faculty Of Computing
%Intake 36
%5788
%I wrote this small knowledge base for expert system
%To recognize a ball in sports


start :- 
write('Welcome, let me gues the ball you want (answer yes/no)'), nl,

write('*********************************************'), nl,
identify.


identify:-
  retractall(known(_,_,_)),
  ball(X),
  write('loading answer...'), nl,
sleep(10),
  write('That looks like a '),write(X),nl.
identify:-
  write('Sorry but I can not identify that ball'),nl.

ball(football):-
	shape(rounded),
	play_with(feet).
ball(basketball):-
	shape(rounded),
	play_with(hand).
ball(rugbyball):-
	shape(spheric),
	play_with(hand_and_feet).

order(groundball):-
	material(leather),
	circumference(medium).
order(platformball):-
	material(nylon),
	circumference(large).
shape(rounded):-
	order(groundball),
	weighs(heavy).
shape(spheric):-
	order(platformball),
	weighs(light).

shape(X):- ask(shape, X).
circumference(X):- ask(circumference, X).
play_with(X):- ask(play_with, X).
material(X):- ask(material, X).
weighs(X):- ask(weighs, X).


ask(Attr, Val):-
	write(Attr:Val),
	write('? '),
	read(yes).

:- discontiguous shape/1.
:- discontiguous play_with/1.
:- discontiguous material/1.
:- discontiguous circumference/1.
:- discontiguous weighs/1.

