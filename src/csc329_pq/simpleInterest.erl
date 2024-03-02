-module(simpleInterest).

-export([simple_interest/0]).

simple_interest() ->
    P = 50000000,
    R = 5,
    T = 5,
    P * R * T / 100.
