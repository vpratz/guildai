-module(hello).

-export([main/1]).

%%| flags:
%%|   who: Joe
%%| args: ${who}

main([]) -> hello(["Joe"]);
main(Args) -> hello(Args).

hello([]) -> ok;
hello([Msg|Rest]) ->
    io:format("Hello ~s!\n", [Msg]),
    hello(Rest).
