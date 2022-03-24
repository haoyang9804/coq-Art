Require Export Coq.Init.Nat.

Definition smallerThan3 (n:nat) : bool := ltb n 3.

Compute smallerThan3 0.

Fixpoint firstn {A:Set} (l:list A) (n:nat) : list A :=
    match l with
    | nil => nil
    | cons h l' => match n with
                    | 0 => nil
                    | S n' => cons h (firstn l' n')
                    end
    end.

Notation "[ x ; .. ; y ]" := (cons x .. (cons y nil) ..).
(* Implicit Arguments firstn {A}. *)
Compute (firstn [1;2;3;4;5;6] 7).

Print snd.

Definition split {A B : Set} : list (A*B) -> list A * list B :=
    fix f (lab : list (A*B)) : list A * list B := 
        match lab with
        | nil => (nil, nil)
        | cons h lab' => match h with (a, b) => let tmp := (f lab') in (cons a (fst tmp), cons b (snd tmp)) 
        end
        end.

Compute (split ([(1,2); (2,3); (3,4)])).

Inductive List (A:Set) : Set :=
| nil : List A
| cons : A -> List A -> List A.

Check
  (fun l:List nat =>
     match l with
     | nil _ => nil nat
     | cons _ _ l' => l'
     end).