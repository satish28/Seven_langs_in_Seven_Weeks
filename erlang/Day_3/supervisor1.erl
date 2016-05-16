-module(supervisor1).
-export([loop/0]).

loop() ->
    process_flag(trap_exit, true),
    receive
	new ->
	    io:format("Starting the translate Service~n"),
	    register(translator, spawn_link(fun translate:loop/0)),
	    loop();
	{'EXIT', From, Reason} ->
	    io:format("The translator at ~p crashed bcoz of ~p ~n", [From, Reason]),
	    self() ! new,
	    loop()
    end.
	    
	       
	     
