-module(translate).
-export([loop/0, to_translate/2]).

loop() ->
    receive
	{From, "casa"} ->
	    From ! "House",
	    loop();
	{From, "blanca"} ->
	    From ! "White",
	    loop();
	 {From, _} ->
	    From ! "Unknown Word",
	    loop()
    end.

to_translate(To, Word) ->
    To ! {self(), Word},
    receive 
	Translation ->
	    Translation
    end.
