-module(cylinder).

-export([start/0]).

surfaceArea() ->
    Pi = 22 / 7,
    Radius = 10,
    Height = 20,
    2 * Pi * Radius * Height + 2 * Pi * Radius * Radius.

start() ->
    io:format("The surface area of the cylinder is ~p meters~n", [surfaceArea()]).
