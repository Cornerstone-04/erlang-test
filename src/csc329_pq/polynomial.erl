-module(polynomial).

-export([eval_poly/1]).

eval_poly(X) ->
    (3 * X + 5) * (4 * X - 2).