-module(quadratic).

-export([start/0]).

solve_quadratic(A, B, C) ->
    Discriminant = B * B - 4 * A * C,
    case Discriminant of
        D when D > 0 ->
            Root1 = (-B + math:sqrt(Discriminant)) / (2 * A),
            Root2 = (-B - math:sqrt(Discriminant)) / (2 * A),
            {Root1, Root2};
        0 ->
            Root = -B / (2 * A),
            {Root};
        _ ->
            no_real_roots
    end.

start() ->
    io:format("The evaluation of 5x^2+x+64=0 ~p~n", [solve_quadratic(5, 1, 64)]).
