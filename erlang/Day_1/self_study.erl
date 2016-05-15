-module(self_study).
-export([number_of_words/1, count_2_10/1, success_r_error/1]).

number_of_words(String) ->
    String_list = string:tokens(String, " "),
    count_words(String_list, 0).

count_words([], Length) -> 
    io:format("~p~n", [Length]);
count_words([_Head | Tail], N) ->
    count_words(Tail, N+1).

count_2_10(10) ->
    10;
count_2_10(N) ->
    io:format("~p~n",[N]),
    count_2_10(N+1).

success_r_error({success,Message}) ->
    io:format("Success, Status: ~p~n", [Message]);
success_r_error({error, Message}) ->
    io:format("Error, Status: ~p~n", [Message]).