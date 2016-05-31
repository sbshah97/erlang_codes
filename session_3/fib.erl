-module(fib).
-export([fib/1,fib2/1]).

fib(1) -> 0; fib(2) -> 1; fib(N) -> fib(N-1) + fib(N-2).

fib2(N) -> tail_fib(N, 0, 1).
tail_fib(1, Result, _) -> Result;
tail_fib(N, Result, Next) -> tail_fib(N-1, Next, Result+Next).


