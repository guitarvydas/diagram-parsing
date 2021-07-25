---
layout: post
title:  "Diagram Parsing"
---
Parsing a simple diagram.

# Diagram

Screenshot of app.diagrams.net (drawio) showing a simple diagram.

Highlighted:

- the box H

- it's (x,y), width and height

  ![image-20210725075228271](/Users/tarvydas/Library/Application Support/typora-user-images/image-20210725075228271.png)

# Facts

The diagram converted to a textual factbase for PROLOG.

![image-20210725074924599](/Users/tarvydas/Library/Application Support/typora-user-images/image-20210725074924599.png)

The diagram facts are stored in the file `diagram.pl`.

# Rect and Name Facts

Add `rect` and `name` facts.

Triples are

- relation
- subject
- object.

We use triples strictly. 
Facts that are doubles, like `rect`, are written as triples with an empty 3rd item.

We emphasize *machine-readability*.  Normalization and repetition is better for machines, but looks like noise to humans.  For example, human readers can infer the names and don't need empty 3rd items, but, such redundancy makes it easier for machines to parse.

![image-20210725081800577](/Users/tarvydas/Library/Application Support/typora-user-images/image-20210725081800577.png)

# Bounding Boxes

A bounding box is a simple rectangle that encompasses a graphical object.

A bounding box consists of four numbers:

- left
- top
- right
- bottom.

Diagrams.net gives us x, y, width and height.

To make a bounding box from the information we simply calculate:

- left is X
- top is Y
- right is X+Width
- bottom is Y+Height.

[_(0,0) is at the top-left_]

We can write code to calculate the bounding box.  In this example, I will use PROLOG (SWIPL), but the calculation can be done in just about any language, e.g. Python.

Below is the SWIPL PROLOG code.  Explanation of the code follows.

```
makebb(ID):-
    rect(ID,_),
    x(ID,X),
    y(ID,Y),
    w(ID,Width),
    h(ID,Height),
    format("l(~w, ~w).~n", [ID,X]),
    format("t(~w, ~w).~n", [ID,Y]),
    W is X + Width,
    format("r(~w, ~w).~n", [ID,W]),
    H is Y + Height,
    format("b(~w, ~w).~n", [ID,H]).
  

```

The PROLOG code says:

- All `,` separated clauses are *and*'ed' together

- ID must be a rect

- ID must have x, y, w and h facts

- Assign the values of x, y, w and h into PROLOG variables X, Y, Width and Height

- Print 4 lines of output using the *format* directive

  - left is just X

  - top is just Y

  - right is X + Width

  - bottom is Y + Height.

    We see the result for object *h*.

![image-20210725083525381](/Users/tarvydas/Library/Application Support/typora-user-images/image-20210725083525381.png)

## Details

The details of running this simple query are shown below, if you want to follow along.

![image-20210725085608631](/Users/tarvydas/Library/Application Support/typora-user-images/image-20210725085608631.png)

[_N.B. The details should be boring to human readers. Repetition and simplicity are keys to machine readability and writing code that writes code.  The code for the above has been put into a bash script called bb.bash to emphasize the fact that this process can be automated._ ]

# See Also

[Blog](https://guitarvydas.github.io)
[References](https://guitarvydas.github.io/2021/01/14/References.html)

<script src="https://utteranc.es/client.js" 
        repo="guitarvydas/guitarvydas.github.io" 
        issue-term="pathname" 
        theme="github-light" 
        crossorigin="anonymous" 
        async> 
</script> 
