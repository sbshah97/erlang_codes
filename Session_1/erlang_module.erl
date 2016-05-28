-module(erlang_module).
-export([add/2, hello/0, greet_and_add_two/1, greet/2, is_adult/1 ,is_alive/1, is_dead/1]).

add(A, B) -> A + B.

hello() -> io:format("Hello, world!~n").

greet_and_add_two(X) -> hello() , add (X,2).

greet(male, Name) -> io:format("Hello, Mr. ~s!", [Name]);

greet(female, Name) -> io:format("Hello, Mrs. ~s!", [Name]);

greet(_,Name) -> io:format("Hello, ~s!", [Name]).

is_adult(X) when X >= 18 -> true;
is_adult(_) -> false.

is_alive(X) when X >= 0, X =< 104 -> true;
is_alive(_)-> false.

is_dead(X) when X =< 0 orelse X >= 104 -> true;
is_dead(_) -> false.
