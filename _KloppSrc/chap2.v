Require Export NArith.
Require Export ZArith.
Open Scope N_scope.

Check 33.
Check (33%nat).

Check (S (S (S (S 0)))).

(* Open Scope nat_scope. *)
Unset Printing Notations.
Check 4.
Set Printing Notations.
Check (5*(5-4)*7).

(* Open Scope Z_scope.
Print Scope Z_scope.
Check (Z.opp (Z.mul 3 (Z.sub (-5)(-8)))).
Check (plus 3%nat).
Check (fun a b c : Z => (b*b-4*a*c)%Z). 
Check (fun f x => Z.abs_nat (f x x)). *)
(* Check (fun x => x x). *)

Parameter max_int : N.
Definition min_int := 1-max_int.
Print min_int.

Open Scope Z_scope.

Section binomial_def.
    Variables a b:Z.
    Definition binomial (z:Z):= a*z + b.
    Print binomial.
    Section trinomial_def.
        Variable c : Z.
        Definition trinomial (z:Z) := (binomial z)*z + c.
        Print trinomial.
    End trinomial_def.
    Print trinomial.
End binomial_def.
Print binomial.

Definition pi : Z -> Z := binomial 5 (-3). 
Definition p2 : Z -> Z := trinomial 1 0 (-1). 
Definition p3 := trinomial 1 (-2) 1.

Section mab.
    Variables m a b:Z.
    Definition f := m*a*m. 
    Definition g := m*(a+b) .
End mab.
Print f.
Print g.

Section h_def.
    Variables a b:Z.
    Let s:Z := a+b.
    Let d:Z := a-b.
    Definition h : Z := s*s + d*d.
    Print h.
End h_def.
Print h.