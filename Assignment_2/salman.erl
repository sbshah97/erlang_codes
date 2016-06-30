-module(salman).
-export([is_prime/1, prime_factors/1,is_square_multiple/1,find_square_multiples/2]).

is_prime(N) when is_integer(N), (N > 0) -> 
   is_prime(N,0,2).
is_prime(N,0,I) when I*I > N -> true;
is_prime(N,_,I) when I*I > N -> false; 
is_prime(N,A,I) when (N rem I) =:= 0 -> is_prime(N div I,A+1,I);
is_prime(N,A,2) -> is_prime(N,A,3);
is_prime(N,A,I) -> is_prime(N,A,I+2).

prime_factors(N) when is_integer(N), (N > 0) -> 
    lists:reverse(prime_factors(N,[],2)).
prime_factors(N,C,I) when I*I > N -> [N|C];
prime_factors(N,C,I) when (N rem I) =:= 0 -> prime_factors(N div I,[I|C],I);
prime_factors(N,C,2) -> prime_factors(N,C,3);
prime_factors(N,C,I) -> prime_factors(N,C,I+2).

is_square_multiple(N) ->	
case length(salman:prime_factors(N))=:=sets:size(sets:from_list(salman:prime_factors(N))) of
		true->false;
		false->true
end.

find_square_multiples(C,Max)->find_square_multiples(C,Max,2,0).
find_square_multiples(C,Max,I,P) when P=:=C->I-C;
find_square_multiples(C,Max,I,P) when I=:=Max+C-1 ->fail;
find_square_multiples(C,Max,I,P)->
case salman:is_square_multiple(I) of
	true -> find_square_multiples(C,Max,I+1,P+1);
	false->find_square_multiples(C,Max,I+1,0)
end.







 