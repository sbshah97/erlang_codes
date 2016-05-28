-module(erlang_module1).
-export([always_true/0,beach/1,always_works/0,maybe_true/1,insert/2,animal_sounds/1]).

always_true() -> 
	if 1=:= 1 -> 
		works 
	end.

always_works() -> 
	if 1=:= 2; 1=:=1 ->
		still_works
	end.

maybe_true(N) -> 
	if N =:= 2 -> might_succeed;
		true -> always_does
	end.

animal_sounds(Animal) ->
	Talk = if Animal == cat -> "meow";
		Animal == cow ->"mooo";
		Animal == dog -> "bark";
		Animal == tree -> "bark";
		true -> "dsadas"
	end,
	{Animal, "says " ++ Talk ++ "!"}.

insert(X, []) ->
	[X];
insert(X, Set) -> 
	case lists:member(X, Set) of
		true -> Set;
		false -> [X|Set]
	end.

beach(Temperature) -> 
	case Temperature of 
		{celsius, N} when N >= 20, N =< 45 ->
			'favourable';
		{kelvin, N} when N>= 293, N =< 318 ->
			'scientifically favourable';
		{farenheit,N} when N >= 68, N =< 113 -> 
			'favourable in imperial countries';
		_ ->
			'avoid beach'
		end.	
