# Coq Art

## 1. Var 2.2.3

![Screenshot 2022-03-01 011537.png](Coq%20Art%20pics/Screenshot_2022-03-01_011537.png)

When P is a proposition and the context or the environment contains a declaration of the form `x:P` , then x is a proof term for P.

## 2. APP 2.2.3.1

![Screenshot 2022-03-01 011754.png](Coq%20Art%20pics/Screenshot_2022-03-01_011754.png)

## 3. Abstraction 2.2.3.2

![Screenshot 2022-03-01 011903.png](Coq%20Art%20pics/Screenshot_2022-03-01_011903.png)

This is what tactic `intro` does in coq. `intro H` will move Proof of `A` (typed as `A`) to the context, which is doing the opposite of the Lam theorem.

## 4. Prod-Prop 3.2.1.2 (type representation of abstraction)

![Screenshot 2022-03-01 012030.png](Coq%20Art%20pics/Screenshot_2022-03-01_012030.png)

## 5

![Screenshot 2022-03-01 012144.png](Coq%20Art%20pics/Screenshot_2022-03-01_012144.png)

## 6. Predicate

p 97

## 7. Prod-dep

![Screenshot 2022-03-07 005545.png](Coq%20Art%20pics/Screenshot_2022-03-07_005545.png)

## 8. Specification

such as `list A` and `prod A B`. In other words, it’s type is the **sort** ***Set***

## 9 Prod-sup

![Screenshot 2022-03-07 010856.png](Coq%20Art%20pics/Screenshot_2022-03-07_010856.png)

For instance, the types Prop→Prop, Prop→Prop→Prop, and Set→Set all have sort Type.

## 10 Application Typing rule

![Screenshot 2022-03-08 005251.png](Coq%20Art%20pics/Screenshot_2022-03-08_005251.png)

## 11 How to intepret constructs of a term

Take `le_n` and `le_S` for example.

```jsx
Check le_n.
le_n : forall n : nat, n <= n.

Check le_S.
le_S : forall n m : nat, n <= m -> n <= S m.  
```

So, `le_n n m` is a **function** mapping any proof of `n <= m` to a proof of  `n <= S m`

## 12

![Screenshot 2022-03-08 020130.png](Coq%20Art%20pics/Screenshot_2022-03-08_020130.png)

## 13 Construct Product Type

![Screenshot 2022-03-10 005255.png](Coq%20Art%20pics/Screenshot_2022-03-10_005255.png)

![Screenshot 2022-03-10 010454.png](Coq%20Art%20pics/Screenshot_2022-03-10_010454.png)

## 14 Barendregt cube

![Screenshot 2022-03-10 005535.png](Coq%20Art%20pics/Screenshot_2022-03-10_005535.png)

## 15 Page 118

To repeat: higher-order polymorphism extends the expressive power of typed programming beyond the expressive power of primitive recursion.

## 16 False

![Screenshot 2022-03-12 005108.png](Coq%20Art%20pics/Screenshot_2022-03-12_005108.png)

![Screenshot 2022-03-12 005119.png](Coq%20Art%20pics/Screenshot_2022-03-12_005119.png)

## 17 Equality

![Screenshot 2022-03-12 010655.png](Coq%20Art%20pics/Screenshot_2022-03-12_010655.png)

## 18 Existential Quantification

![Screenshot 2022-03-12 013233.png](Coq%20Art%20pics/Screenshot_2022-03-12_013233.png)

![Screenshot 2022-03-12 013650.png](Coq%20Art%20pics/Screenshot_2022-03-12_013650.png)

![Screenshot 2022-03-12 013739.png](Coq%20Art%20pics/Screenshot_2022-03-12_013739.png)

## 19 Elimination rule

1. Elimination rule for ***conjunction*** is **and_ind** 

![Screenshot 2022-03-13 015652.png](Coq%20Art%20pics/Screenshot_2022-03-13_015652.png)

1. Elmination rule for ***False*** shows how we can use the fact that there is a contradiction in the context.
2. ***elim*** tactic is the natural tool to apply the elimination rules associated with a given connective.