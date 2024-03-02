-module(fizzbuzz).

-export([start/1]).

start(N) when is_integer(N), N > 0 ->
    fizzbuzz(1, N).

fizzbuzz(Current, Max) when Current =< Max ->
    print_fizzbuzz(Current),
    fizzbuzz(Current + 1, Max);
fizzbuzz(_, _) ->
    ok.

print_fizzbuzz(N) when N rem 15 == 0 ->
    io:format("FizzBuzz~n");
print_fizzbuzz(N) when N rem 3 == 0 ->
    io:format("Fizz~n");
print_fizzbuzz(N) when N rem 5 == 0 ->
    io:format("Buzz~n");
print_fizzbuzz(N) ->
    io:format("~p~n", [N]).
