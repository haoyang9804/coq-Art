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

Definition Zsqr (z:Z): Z := z*z.
Definition my_fun (f:Z ->Z) (z:Z): Z := f (f z).
Eval cbv delta [my_fun Zsqr] in (my_fun Zsqr).
Eval cbv delta [my_fun] in (my_fun Zsqr).
(*
    Putting beta before delta means after delta conversion,
    we will perform beta conversion.
*)
Eval cbv beta delta [my_fun Zsqr] in (my_fun Zsqr).

Eval cbv beta delta [h] in (h 56 78).
Eval cbv zeta beta delta [h] in (h 56 78).

Check (nat -> nat).
Check (nat -> nat : Type).

Section domain.
    Variables (D:Set)(op:D->D->D)(sym:D->D)(e:D). 
    Let diff : D->D->D := fun (x y:D) => op x (sym y).
End domain.

Section realization.
    Variables (A B :Set).   
    Let spec: Set := (((A->B)->B)->B)->A->B.
    Let realization : spec
        := fun (f:((A->B)->B)->B) a => f(fun g => g a).
    Print realization.
End realization.

Definition nat_fun_to_Z_fun: Set := (nat->nat)->Z->Z.
Definition absolute_fun : nat_fun_to_Z_fun :=
    fun f z => Z_of_nat (f (Z.abs_nat z)).
Print Z.abs_nat.
Print Z.of_nat.
