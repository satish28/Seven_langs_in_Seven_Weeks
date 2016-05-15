-module(self_study).
-export([keyword_match/2, shopping_list_price/1, tic_tac_toe/1]).

keyword_match(List, Key) ->
    [io:format("The value for Key ~p is ~p~n", [Key1, Value])|| {Key1, Value} <- List, Key1 == Key].

shopping_list_price(List) ->
    [{Product, Quantity * Price} || {Product, Quantity, Price} <- List]. 

%Check each row if it has the common symbols
check_row(List) ->
    case List of
	{X, X, X} ->
	    X;
	{O, O, O} ->
	    O
    end.

% List = [{X, O, O}, {O, X, X}, {X, X, X}]
tic_tac_toe(List) ->
    [ check_row(Rec1) || Rec1 <- List].
