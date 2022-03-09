
Definition f : (nat->bool)->(nat->bool)->nat->bool.
    intros f1 f2.
    assumption.
Defined.

(*By Defined instead of Qed, the Proof is transparent, which may give compute some automic choice by coq system*)

(*Difference between opague and transparent*)
Print f.
Eval compute in (f (fun n=>true) (fun n => false) 45).
Opaque f.
Eval compute in (f (fun n=>true) (fun n => false) 45).

Require Import Arith.

Parameters (prime_divisor : nat->nat)
           (prime : nat->Prop)
           (divides : nat->nat->Prop).
Open Scope nat_scope.
Check (prime (prime_divisor 220)).
Check (divides (prime_divisor 220) 220).
Check (divides 3).

Parameters binary_word : nat->Set.
Definition short : Set := binary_word 32.
Definition long : Set := binary_word 64.
Check (not (divides 3 81)).
Check (let d := prime_divisor 220 in prime d /\ divides d 220).

Theorem le_i_SSi : forall i:nat, i <= S (S i).
Proof
   (fun i:nat => le_S _ _ (le_S _ _ (le_n i))). 



(*Below is Implicit Arguments*)
Fail Check le_S (m:45).
Set Implicit Arguments.
Fail Check le_S (m:45).
Unset Implicit Arguments.
(*Directly Set Implicit Arguments instead of using <Set Implicit Arguments> can help specify which implicit argument to be made explicit*)
Arguments le_S [n m].
Check le_S (m:=45).

Print le_S.
Definition compose (A B C:Set) (f:A->B) (g:B->C) (a:A) := g (f a).