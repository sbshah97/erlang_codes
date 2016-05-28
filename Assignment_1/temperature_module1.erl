-module(erlang_module2).
-export([is_cool_farh/1,to_farenheit/1,is_cool_temp/1,temperature_data/0]).

temperature_data() -> [{bangalore, 35}, {chennai, 40}, {dehradun, 25}, {delhi, 45}, {vizag, 33}, {ooty, 26}, {surathkal, 41}].

is_cool_temp({X,N}) when N >= 25, N =<35 -> {X, true};
is_cool_temp({X,_}) -> {X, false}.

to_farenheit(C) -> (((9*C)/5) + 32). 

is_cool_farh({X,N}) -> {X, to_farenheit(N)}.
	
