Theorem Prod_Prop :  forall (P Q:Prop), P->(exists q:Q, P) -> forall q:Q, P.
Proof.
    intros. cut Q. destruct H0 as [q' Hq]. intros. apply Hq. apply q. Qed.

Theorem proveMyself : forall P:Prop, P->P.
Proof
    (fun (P:Prop) (p:P) => p).

Check (forall P:Prop, P->P).
Check (fun (P:Prop) (p:P) => p).

Theorem all_perm:
    forall (A:Type) (P:A->A->Prop), 
    (forall x y : A, P x y) ->
    (forall x y : A, P y x).
Proof.
    Abort.

Theorem resolution:
    forall (A:Type) (P Q R S:A->Prop), (forall a:A, Q a -> R a -> S a) -> (forall b:A, P b -> Q b) -> (forall c:A, P c -> R c -> S c).
Proof.
    Abort.