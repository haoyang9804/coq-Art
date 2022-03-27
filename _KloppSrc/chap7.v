Theorem simpl_pattern_example : 3*3 + 3*3 = 18.
Proof.
    simpl (3*3) at 2.
Abort.

Theorem simpl_pattern_example' : 3*3 + 3*3 = 18.
Proof.
    simpl. reflexivity.
Qed.

Theorem simpl_pattern_example'' : 3*3 + 3*3 = 18.
Proof.
    lazy. reflexivity.
Qed.

Theorem simpl_pattern_example''' : 3*3 + 3*3 = 18.
Proof.
    lazy beta. 
    Undo.
    lazy beta iota zeta delta.
    Undo. 
    lazy beta iota zeta delta [mult]. 
    Undo. Show Proof.
    lazy iota. 
    Undo. 
    lazy zeta. Abort.

Theorem simpl_pattern_example'''' : 3*3 + 3*3 = 18.
Proof.
    cbv. reflexivity.
Qed.
