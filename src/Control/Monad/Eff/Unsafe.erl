% module Control.Monad.Eff.Unsafe
-module(control_monad_eff_unsafe@foreign).
-export([unsafeInterleaveEff/1]).

unsafeInterleaveEff(F) -> F.
