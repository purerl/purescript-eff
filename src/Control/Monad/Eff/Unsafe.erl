-module(control_monad_eff_unsafe@foreign).
-export([unsafeCoerceEff/1]).

unsafeCoerceEff(F) -> F.
