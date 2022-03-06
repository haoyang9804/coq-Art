
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

