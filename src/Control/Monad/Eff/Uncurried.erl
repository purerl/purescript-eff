-module(control_monad_eff_uncurried@foreign).
-export([mkEffFn1/1,mkEffFn2/1,mkEffFn3/1,mkEffFn4/1,mkEffFn5/1,mkEffFn6/1,mkEffFn7/1,mkEffFn8/1,mkEffFn9/1,mkEffFn10/1,runEffFn1/2,runEffFn2/3,runEffFn3/4,runEffFn4/5,runEffFn5/6,runEffFn6/7,runEffFn7/8,runEffFn8/9,runEffFn9/10,runEffFn10/11]).

% mkEffFnX - feeling the paren love

mkEffFn1(F) -> fun (A) -> (F(A))() end.

mkEffFn2(F) -> fun (A,B) -> ((F(A))(B))() end.

mkEffFn3(F) -> fun (A,B,C) -> (((F(A))(B))(C))() end.

mkEffFn4(F) -> fun (A,B,C,D) -> ((((F(A))(B))(C))(D))() end.

mkEffFn5(F) -> fun (A,B,C,D,E) -> (((((F(A))(B))(C))(D))(E))() end.

mkEffFn6(F) -> fun (A,B,C,D,E,F) -> ((((((F(A))(B))(C))(D))(E))(F))() end.

mkEffFn7(F) -> fun (A,B,C,D,E,F,G) -> (((((((F(A))(B))(C))(D))(E))(F))(G))() end.

mkEffFn8(F) -> fun (A,B,C,D,E,F,G,H) -> ((((((((F(A))(B))(C))(D))(E))(F))(G))(H))() end.

mkEffFn9(F) -> fun (A,B,C,D,E,F,G,H,I) -> (((((((((F(A))(B))(C))(D))(E))(F))(G))(H))(I))() end.

mkEffFn10(F) -> fun (A,B,C,D,E,F,G,H,I,J) -> ((((((((((F(A))(B))(C))(D))(E))(F))(G))(H))(I))(J))() end.

% runEffFnX - making heavy use of auto-currying

runEffFn1(F,A) -> fun (_) -> F(A) end.

runEffFn2(F,A,B) -> fun (_) -> F(A,B) end.

runEffFn3(F,A,B,C) -> fun (_) -> F(A,B,C) end.

runEffFn4(F,A,B,C,D) -> fun (_) -> F(A,B,C,D) end.

runEffFn5(F,A,B,C,D,E) -> fun (_) -> F(A,B,C,D,E) end.

runEffFn6(F,A,B,C,D,E,F) -> fun (_) -> F(A,B,C,D,E,F) end.

runEffFn7(F,A,B,C,D,E,F,G) -> fun (_) -> F(A,B,C,D,E,F,G) end.

runEffFn8(F,A,B,C,D,E,F,G,H) -> fun (_) -> F(A,B,C,D,E,F,G,H) end.

runEffFn9(F,A,B,C,D,E,F,G,H,I) -> fun (_) -> F(A,B,C,D,E,F,G,H,I) end.

runEffFn10(F,A,B,C,D,E,F,G,H,I,J) -> fun (_) -> F(A,B,C,D,E,F,G,H,I,J) end.
