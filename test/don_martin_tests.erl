
-module(don_martin_tests).
-compile(export_all).





-include_lib("eunit/include/eunit.hrl").





word_test_() ->

    { "word() tests", [

        { "1",   ?_assert("aarh" == don_martin:word(1)   ) },
        { "157", ?_assert("zwot" == don_martin:word(157) ) }

    ] }.




words_test_() ->

    { "words() tests", [

        { "words/0", ?_assert( is_list(don_martin:words())                                ) },
        { "words/1", ?_assert( 2 == length([ Ch || Ch <- don_martin:words(3), Ch == $  ]) ) }

    ] }.
