start :-
    menu([coffee, milk, chocolate, apple, juice]).

menu(List) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    process(Choice, List).

process(d, List) :-
    display_items(List),
    menu(List).

process(a, List) :-
    write('enter the item you want to add it'), nl,
    read(Item),
    append(List, [Item], NewList),
    write('The item has been added'), nl,
    menu(NewList).

process(e, _) :-
    write('Goodbye!'), nl.

process(_, List) :-
    write('Invalid choice, try again.'), nl,
    menu(List).

display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).