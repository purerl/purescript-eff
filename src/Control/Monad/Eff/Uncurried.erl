-module(control_monad_eff_uncurried@foreign).
-export([mkEffFn1/1,mkEffFn2/1,mkEffFn3/1,mkEffFn4/1,mkEffFn5/1,mkEffFn6/1,mkEffFn7/1,mkEffFn8/1,mkEffFn9/1,mkEffFn10/1,runEffFn1/2,runEffFn2/3,runEffFn3/4,runEffFn4/5,runEffFn5/6,runEffFn6/7,runEffFn7/8,runEffFn8/9,runEffFn9/10,runEffFn10/11]).

% mkEffFnX - feeling the paren love

mkEffFn1(Fun) -> fun (A) -> (Fun(A))() end.

mkEffFn2(Fun) -> fun (A,B) -> ((Fun(A))(B))() end.

mkEffFn3(Fun) -> fun (A,B,C) -> (((Fun(A))(B))(C))() end.

mkEffFn4(Fun) -> fun (A,B,C,D) -> ((((Fun(A))(B))(C))(D))() end.

mkEffFn5(Fun) -> fun (A,B,C,D,E) -> (((((Fun(A))(B))(C))(D))(E))() end.

mkEffFn6(Fun) -> fun (A,B,C,D,E,F) -> ((((((Fun(A))(B))(C))(D))(E))(F))() end.

mkEffFn7(Fun) -> fun (A,B,C,D,E,F,G) -> (((((((Fun(A))(B))(C))(D))(E))(F))(G))() end.

mkEffFn8(Fun) -> fun (A,B,C,D,E,F,G,H) -> ((((((((Fun(A))(B))(C))(D))(E))(F))(G))(H))() end.

mkEffFn9(Fun) -> fun (A,B,C,D,E,F,G,H,I) -> (((((((((Fun(A))(B))(C))(D))(E))(F))(G))(H))(I))() end.

mkEffFn10(Fun) -> fun (A,B,C,D,E,F,G,H,I,J) -> ((((((((((Fun(A))(B))(C))(D))(E))(F))(G))(H))(I))(J))() end.

% runEffFnX - making heavy use of auto-currying

runEffFn1(Fun,A) -> fun (_) -> Fun(A) end.

runEffFn2(Fun,A,B) -> fun (_) -> Fun(A,B) end.

runEffFn3(Fun,A,B,C) -> fun (_) -> Fun(A,B,C) end.

runEffFn4(Fun,A,B,C,D) -> fun (_) -> Fun(A,B,C,D) end.

runEffFn5(Fun,A,B,C,D,E) -> fun (_) -> Fun(A,B,C,D,E) end.

runEffFn6(Fun,A,B,C,D,E,F) -> fun (_) -> Fun(A,B,C,D,E,F) end.

runEffFn7(Fun,A,B,C,D,E,F,G) -> fun (_) -> Fun(A,B,C,D,E,F,G) end.

runEffFn8(Fun,A,B,C,D,E,F,G,H) -> fun (_) -> Fun(A,B,C,D,E,F,G,H) end.

runEffFn9(Fun,A,B,C,D,E,F,G,H,I) -> fun (_) -> Fun(A,B,C,D,E,F,G,H,I) end.

runEffFn10(Fun,A,B,C,D,E,F,G,H,I,J) -> fun (_) -> Fun(A,B,C,D,E,F,G,H,I,J) end.
