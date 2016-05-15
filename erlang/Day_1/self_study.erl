-module(self_study).
-export([number_of_words/1, count_2_10/1, success_r_error/1, test/0]).

number_of_words(String) ->
    String_list = string:tokens(String, " "),
    count_words(String_list, 0).

count_words([], Length) -> 
    Length;
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

test() ->
    5 = number_of_words("Hello I am a Idiot"),
    % write a better test case for success_r_error
    A = io:format("Success, Status: ~p~n", ["Hello"]),
    A = success_r_error({success, "Hello"}),
    tests_success.
   
    
