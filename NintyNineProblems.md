# P-99: Ninety-Nine Prolog Problems

**Source:** https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/

**Author:** werner.hett@bfh.ch or werner.hett@gmail.com

## Overview

This is a collection of 99 Prolog problems to practice your logic programming skills. The goal is to find the most elegant solution. While efficiency matters, **logical clarity is more important**.

Every predicate should begin with a comment describing it in a declarative (not procedural) statement, including argument data types and flow patterns.

### Difficulty Levels

- **\*** Easy - 15 minutes for experienced Prolog programmers
- **\*\*** Intermediate - 30-90 minutes
- **\*\*\*** Difficult - Several hours or more

---

## Working with Prolog Lists

A list is either empty `[]` or composed of a head `H` and a tail `T` represented as `[H|T]`.

### P01 (*) Find the last element of a list

```prolog
?- my_last(X,[a,b,c,d]).
X = d
```

### P02 (*) Find the last but one element of a list

(zweitletztes Element, l'avant-dernier élément)

### P03 (*) Find the K'th element of a list

The first element in the list is number 1.

```prolog
?- element_at(X,[a,b,c,d,e],3).
X = c
```

### P04 (*) Find the number of elements of a list

### P05 (*) Reverse a list

### P06 (*) Find out whether a list is a palindrome

A palindrome can be read forward or backward; e.g. `[x,a,m,a,x]`.

### P07 (**) Flatten a nested list structure

Transform a list, possibly holding lists as elements into a flat list by replacing each list with its elements (recursively).

```prolog
?- my_flatten([a, [b, [c, d], e]], X).
X = [a, b, c, d, e]
```

**Hint:** Use the predefined predicates `is_list/1` and `append/3`

### P08 (**) Eliminate consecutive duplicates of list elements

If a list contains repeated elements, replace them with a single copy. Order should not change.

```prolog
?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [a,b,c,a,d,e]
```

### P09 (**) Pack consecutive duplicates of list elements into sublists

Replace repeated elements with sublists containing those elements.

```prolog
?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]
```

### P10 (*) Run-length encoding of a list

Use the result of problem P09 to implement run-length encoding. Consecutive duplicates are encoded as `[N,E]` where N is the count.

```prolog
?- encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[4,a],[1,b],[2,c],[2,a],[1,d],[4,e]]
```

### P11 (*) Modified run-length encoding

Modify problem P10 so single elements are not wrapped in `[N,E]` terms.

```prolog
?- encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[4,a],b,[2,c],[2,a],d,[4,e]]
```

### P12 (**) Decode a run-length encoded list

Given a run-length code list from problem P11, construct its uncompressed version.

### P13 (**) Run-length encoding of a list (direct solution)

Implement run-length encoding directly without explicitly creating sublists (as in P09).

```prolog
?- encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[4,a],b,[2,c],[2,a],d,[4,e]]
```

### P14 (*) Duplicate the elements of a list

```prolog
?- dupli([a,b,c,c,d],X).
X = [a,a,b,b,c,c,c,c,d,d]
```

### P15 (**) Duplicate the elements of a list a given number of times

```prolog
?- dupli([a,b,c],3,X).
X = [a,a,a,b,b,b,c,c,c]
```

What are the results of: `?- dupli(X,3,Y).`

### P16 (**) Drop every N'th element from a list

```prolog
?- drop([a,b,c,d,e,f,g,h,i,k],3,X).
X = [a,b,d,e,g,h,k]
```

### P17 (*) Split a list into two parts

The length of the first part is given. Do not use predefined predicates.

```prolog
?- split([a,b,c,d,e,f,g,h,i,k],3,L1,L2).
L1 = [a,b,c]
L2 = [d,e,f,g,h,i,k]
```

### P18 (**) Extract a slice from a list

Given indices I and K, extract elements between them (both limits included). Start counting from 1.

```prolog
?- slice([a,b,c,d,e,f,g,h,i,k],3,7,L).
X = [c,d,e,f,g]
```

### P19 (**) Rotate a list N places to the left

```prolog
?- rotate([a,b,c,d,e,f,g,h],3,X).
X = [d,e,f,g,h,a,b,c]

?- rotate([a,b,c,d,e,f,g,h],-2,X).
X = [g,h,a,b,c,d,e,f]
```

**Hint:** Use `length/2` and `append/3`, as well as the result of problem P17.

### P20 (*) Remove the K'th element from a list

```prolog
?- remove_at(X,[a,b,c,d],2,R).
X = b
R = [a,c,d]
```

### P21 (*) Insert an element at a given position into a list

```prolog
?- insert_at(alfa,[a,b,c,d],2,L).
L = [a,alfa,b,c,d]
```

### P22 (*) Create a list containing all integers within a given range

```prolog
?- range(4,9,L).
L = [4,5,6,7,8,9]
```

### P23 (**) Extract a given number of randomly selected elements from a list

The selected items shall be put into a result list.

```prolog
?- rnd_select([a,b,c,d,e,f,g,h],3,L).
L = [e,d,a]
```

**Hint:** Use the built-in `random/2` and the result of problem P20.

### P24 (*) Lotto: Draw N different random numbers from the set 1..M

```prolog
?- rnd_select(6,49,L).
L = [23,1,17,33,21,37]
```

**Hint:** Combine solutions of problems P22 and P23.

### P25 (*) Generate a random permutation of the elements of a list

```prolog
?- rnd_permu([a,b,c,d,e,f],L).
L = [b,a,d,c,e,f]
```

**Hint:** Use the solution of problem P23.

### P26 (**) Generate the combinations of K distinct objects chosen from the N elements of a list

How many ways can a committee of 3 be chosen from 12 people? C(12,3) = 220 possibilities.

```prolog
?- combination(3,[a,b,c,d,e,f],L).
L = [a,b,c] ;
L = [a,b,d] ;
L = [a,b,e] ;
...
```

### P27 (**) Group the elements of a set into disjoint subsets

**a)** In how many ways can 9 people work in 3 disjoint subgroups of 2, 3, and 4 persons?

```prolog
?- group3([aldo,beat,carla,david,evi,flip,gary,hugo,ida],G1,G2,G3).
G1 = [aldo,beat], G2 = [carla,david,evi], G3 = [flip,gary,hugo,ida]
...
```

**b)** Generalize to accept a list of group sizes:

```prolog
?- group([aldo,beat,carla,david,evi,flip,gary,hugo,ida],[2,2,5],Gs).
Gs = [[aldo,beat],[carla,david],[evi,flip,gary,hugo,ida]]
...
```

**Note:** No permutations of group members; `[[aldo,beat],...]` is the same as `[[beat,aldo],...]`. But `[[aldo,beat],[carla,david],...]` differs from `[[carla,david],[aldo,beat],...]`.

See "multinomial coefficients" in discrete mathematics books.

### P28 (**) Sorting a list of lists according to length of sublists

**a)** Sort elements of a list (containing list elements) by their length.

```prolog
?- lsort([[a,b,c],[d,e],[f,g,h],[d,e],[i,j,k,l],[m,n],[o]],L).
L = [[o], [d, e], [d, e], [m, n], [a, b, c], [f, g, h], [i, j, k, l]]
```

**b)** Sort by length frequency (rare lengths first).

```prolog
?- lfsort([[a,b,c],[d,e],[f,g,h],[d,e],[i,j,k,l],[m,n],[o]],L).
L = [[i, j, k, l], [o], [a, b, c], [f, g, h], [d, e], [d, e], [m, n]]
```

In this example: length 4 and 1 appear once (first), length 3 appears twice, length 2 is most frequent (last).

---

## Arithmetic

### P31 (**) Determine whether a given integer number is prime

```prolog
?- is_prime(7).
Yes
```

### P32 (**) Determine the greatest common divisor of two positive integer numbers

Use Euclid's algorithm.

```prolog
?- gcd(36, 63, G).
G = 9
```

Define gcd as an arithmetic function:

```prolog
?- G is gcd(36,63).
G = 9
```

### P33 (*) Determine whether two positive integer numbers are coprime

Two numbers are coprime if their GCD equals 1.

```prolog
?- coprime(35, 64).
Yes
```

### P34 (**) Calculate Euler's totient function phi(m)

The totient function phi(m) is the count of positive integers r (1 ≤ r < m) that are coprime to m.

Example: m = 10: r = 1,3,7,9; thus phi(m) = 4. Special case: phi(1) = 1.

```prolog
?- Phi is totient_phi(10).
Phi = 4
```

Find what phi(m) equals when m is prime. This function is important in RSA cryptography.

### P35 (**) Determine the prime factors of a given positive integer

Construct a flat list containing the prime factors in ascending order.

```prolog
?- prime_factors(315, L).
L = [3,3,5,7]
```

### P36 (**) Determine the prime factors of a given positive integer (2)

Construct a list containing the prime factors and their multiplicity.

```prolog
?- prime_factors_mult(315, L).
L = [[3,2],[5,1],[7,1]]
```

**Hint:** Similar to problem P13.

### P37 (**) Calculate Euler's totient function phi(m) (improved)

Given the prime factors from problem P36: `[[p1,m1],[p2,m2],[p3,m3],...]`

Use the formula:
```
phi(m) = (p1 - 1) * p1^(m1 - 1) * (p2 - 1) * p2^(m2 - 1) * ...
```

### P38 (*) Compare the two methods of calculating Euler's totient function

Use problems P34 and P37 to compare efficiency using logical inferences. Try phi(10090).

### P39 (*) A list of prime numbers

Given a range of integers by lower and upper limit, construct a list of all primes in that range.

### P40 (**) Goldbach's conjecture

Every positive even number > 2 is the sum of two prime numbers. Example: 28 = 5 + 23.

```prolog
?- goldbach(28, L).
L = [5,23]
```

### P41 (**) A list of Goldbach compositions

Given a range, print all even numbers and their Goldbach composition.

```prolog
?- goldbach_list(9,20).
10 = 3 + 7
12 = 5 + 7
14 = 3 + 11
16 = 3 + 13
18 = 5 + 13
20 = 3 + 17
```

With a print limit of 50:

```prolog
?- goldbach_list(1,2000,50).
992 = 73 + 919
1382 = 61 + 1321
1856 = 67 + 1789
1928 = 61 + 1867
```

---

## Logic and Codes

### P46 (**) Truth tables for logical expressions

Define predicates: `and/2`, `or/2`, `nand/2`, `nor/2`, `xor/2`, `impl/2`, `equ/2` (logical equivalence).

They succeed or fail based on their respective operations. A and B can be Prolog goals, not just `true`/`fail`.

A logical expression can be written as: `and(or(A,B),nand(A,B))`.

Write `table/3` to print truth tables:

```prolog
?- table(A,B,and(A,or(A,B))).
true true true
true fail true
fail true fail
fail fail fail
```

### P47 (*) Truth tables for logical expressions (2)

Define `and/2`, `or/2`, etc. as operators for natural notation:

```prolog
?- table(A,B, A and (A or not B)).
true true true
true fail true
fail true fail
fail fail fail
```

### P48 (**) Truth tables for logical expressions (3)

Generalize to accept any number of logical variables:

```prolog
?- table([A,B,C], A and (B or C) equ A and B or A and C).
true true true true
true true fail true
true fail true true
true fail fail true
fail true true true
fail true fail true
fail fail true true
fail fail fail true
```

### P49 (**) Gray code

An n-bit Gray code is a sequence of n-bit strings.

Examples:
- n=1: `['0','1']`
- n=2: `['00','01','11','10']`
- n=3: `['000','001','011','010','110','111','101','100']`

Find the construction rules and write:

```prolog
% gray(N,C) :- C is the N-bit Gray code
```

Can you apply "result caching" for efficiency with repeated use?

### P50 (***) Huffman code

Given a set of symbols with frequencies: `[fr(a,45),fr(b,13),fr(c,12),...]`

Construct a Huffman code table: `[hc(a,'0'), hc(b,'101'), ...]`

```prolog
% huffman(Fs,Hs) :- Hs is the Huffman code table for the frequency table Fs
```

---

## Binary Trees

A binary tree is either empty or composed of a root and two successor trees.

- Empty tree: `nil`
- Non-empty tree: `t(X,L,R)` where X is the root, L and R are left and right subtrees

Example tree:
```
T1 = t(a,t(b,t(d,nil,nil),t(e,nil,nil)),t(c,nil,t(f,t(g,nil,nil),nil)))
```

Root-only tree: `T2 = t(a,nil,nil)`

Empty tree: `T3 = nil`

### P54 (*) Check whether a given term represents a binary tree

```prolog
?- istree(t(a,t(b,nil,nil),nil)).
Yes
?- istree(t(a,t(b,nil,nil))).
No
```

### P55 (**) Construct completely balanced binary trees

In a completely balanced binary tree: the number of nodes in left and right subtrees are nearly equal (difference ≤ 1).

Write `cbal_tree/2` to construct all solutions via backtracking. Use `'x'` for node values.

```prolog
?- cbal_tree(4,T).
T = t(x, t(x, nil, nil), t(x, nil, t(x, nil, nil))) ;
T = t(x, t(x, nil, nil), t(x, t(x, nil, nil), nil)) ;
...
```

### P56 (**) Symmetric binary trees

A tree is symmetric if a vertical line through the root shows the right subtree as a mirror of the left.

Write `symmetric/1` to check this. **Hint:** First write `mirror/2` to check if one tree mirrors another (structure only).

### P57 (**) Binary search trees (dictionaries)

Use `add/3` to construct a BST from a list of integers.

```prolog
?- construct([3,2,5,7,1],T).
T = t(3, t(2, t(1, nil, nil), nil), t(5, nil, t(7, nil, nil)))
```

Test with P56 solution:

```prolog
?- test_symmetric([5,3,18,1,4,12,21]).
Yes
?- test_symmetric([3,2,5,7,4]).
No
```

### P58 (**) Generate-and-test paradigm

Construct all symmetric, completely balanced trees with N nodes.

```prolog
?- sym_cbal_trees(5,Ts).
Ts = [t(x, t(x, nil, t(x, nil, nil)), t(x, t(x, nil, nil), nil)), ...]
```

How many such trees exist with 57 nodes? Investigate the pattern for even/odd numbers.

### P59 (**) Construct height-balanced binary trees

In a height-balanced tree: heights of left and right subtrees differ by at most 1.

Write `hbal_tree/2` to generate all solutions via backtracking.

```prolog
?- hbal_tree(3,T).
T = t(x, t(x, t(x, nil, nil), t(x, nil, nil)), t(x, t(x, nil, nil), t(x, nil, nil))) ;
...
```

### P60 (**) Construct height-balanced binary trees with a given number of nodes

For height H:
- Maximum nodes: `MaxN = 2^H - 1`
- Minimum nodes: `MinN = ?` (harder to find)

Write predicates:

```prolog
% minNodes(H,N) :- N is the minimum number of nodes in a height-balanced tree of height H
% maxHeight(N,H) :- H is the maximum height of a height-balanced tree with N nodes
% hbal_tree_nodes(N,T) :- T is a height-balanced tree with N nodes
```

How many height-balanced trees exist for N = 15?

### P61 (*) Count the leaves of a binary tree

```prolog
% count_leaves(T,N) :- the binary tree T has N leaves
```

### P61A (*) Collect the leaves of a binary tree in a list

```prolog
% leaves(T,S) :- S is the list of all leaves of the binary tree T
```

### P62 (*) Collect the internal nodes of a binary tree in a list

An internal node has one or two non-empty successors.

```prolog
% internals(T,S) :- S is the list of internal nodes of the binary tree T
```

### P62B (*) Collect the nodes at a given level in a list

A node at level N has a path from root of length N-1. Root is at level 1.

```prolog
% atlevel(T,L,S) :- S is the list of nodes of the binary tree T at level L
```

Using `atlevel/3`, construct a level-order traversal predicate `levelorder/2`.

### P63 (**) Construct a complete binary tree

A complete binary tree of height H:
- Levels 1 to H-1 are full
- Level H nodes are left-adjusted
- All internal nodes come before leaves in level-order

Nodes can be numbered in level-order starting from 1: node X has child addresses 2X and 2X+1.

```prolog
% complete_binary_tree(N,T) :- T is a complete binary tree with N nodes
```

### P64 (**) Layout a binary tree (1)

Determine node positions in a rectangular grid:

- `x(v)` = position of node v in inorder sequence
- `y(v)` = depth of node v

Extend tree representation to `t(W,X,Y,L,R)` with positions (X,Y).

```prolog
% layout_binary_tree(T,PT) :- PT is the positioned binary tree from T
```

### P65 (**) Layout a binary tree (2)

Alternative layout: horizontal distance between neighbors on a level is constant.

Use same conventions as P64.

### P66 (***) Layout a binary tree (3)

Another layout strategy that is compact while maintaining symmetry. Find the rules.

**Hint:** Consider the horizontal distance between a node and its successor nodes. How tightly can subtrees be packed?

Use P64/P65 conventions. This is difficult!

### P67 (**) A string representation of binary trees

Binary trees can be represented as strings like: `a(b(d,e),c(,f(g,)))`

**a)** Write a predicate that generates this string representation from a tree term.

Then write the inverse predicate to construct a tree from the string.

Combine both as `tree_string/2` for bidirectional use.

**b)** Implement using difference lists with `tree_dlist/2`.

Assume single-letter node info and no spaces.

### P68 (**) Preorder and inorder sequences of binary trees

**a)** Write `preorder/2` and `inorder/2` to construct sequences of a tree.

Results should be atoms like `'abdecfg'` for the example in P67.

**b)** Can `preorder/2` work in reverse (preorder → tree)? If not, arrange it.

**c)** Given both preorder and inorder sequences, the tree is unambiguously determined.

Write `pre_in_tree/3`.

**d)** Solve a-c using difference lists. Compare solutions with `time/1`.

What happens if the same character appears multiple times? Try `pre_in_tree(aba,baa,T)`.

### P69 (**) Dotstring representation of binary trees

Represent a binary tree by its preorder with dots (.) for empty subtrees.

Example: `'abd..e..c.fg...'` for the P67 tree.

Write `tree_dotstring/2` for bidirectional conversion using difference lists.

---

## Multiway Trees

A multiway tree has a root and a (possibly empty) set of successor trees (a forest).

Representation: `t(X,F)` where X is the root and F is the forest (list of trees).

Example:
```
T = t(a,[t(f,[t(g,[])]),t(c,[]),t(b,[t(d,[]),t(e,[])])])
```

### P70B (*) Check whether a given term represents a multiway tree

```prolog
?- istree(t(a,[t(f,[t(g,[])]),t(c,[]),t(b,[t(d,[]),t(e,[])])])).
Yes
```

### P70C (*) Count the nodes of a multiway tree

```prolog
% nnodes(T,N) :- Count the nodes of multiway tree T
?- nnodes(t(a,[t(f,[])]),N).
N = 2
```

Write another version allowing flow pattern (o,i).

### P70 (**) Tree construction from a node string

Nodes are single characters. In depth-first order, insert `^` when backtracking to return to the previous level.

Example: `afg^^c^bd^e^^^`

Define the syntax and write `tree(String,Tree)` for bidirectional conversion using atoms.

### P71 (*) Determine the internal path length of a tree

The internal path length is the total sum of path lengths from root to all nodes.

Example tree (P70) has IPL = 9.

```prolog
% ipl(Tree,IPL) :- for flow pattern (+,-)
```

### P72 (*) Construct the bottom-up order sequence of the tree nodes

```prolog
% bottom_up(Tree,Seq) :- Seq is the bottom-up sequence (Prolog list)
```

What happens running this backwards?

### P73 (**) Lisp-like tree representation

In Lisp, a multiway tree is represented as nested lists. A node with successors is the first element, followed by its children.

The "lispy" representation is a Prolog list of tokens (atoms and parentheses).

Example: `(a (b c))` → `['(', a, '(', b, c, ')', ')']`

```prolog
?- tree_ltl(t(a,[t(b,[]),t(c,[])]),LTL).
LTL = ['(', a, '(', b, c, ')', ')']
```

Write `tree_ltl/2` to convert trees to tokens. Then make it bidirectional using difference lists.

---

## Graphs

A graph is a set of nodes and a set of edges (pairs of nodes).

### Representations

**Edge-clause form:**
```prolog
edge(h,g).
edge(k,f).
...
```

**Graph-term form (default):**
```prolog
graph([b,c,d,f,g,h,k],[e(b,c),e(b,f),e(c,f),e(f,k),e(g,h)])
```

Lists are sorted sets (no duplicates). Each edge appears once; `e(x,y)` only, not `e(y,x)`.

**Adjacency-list form:**
```prolog
[n(b,[c,f]), n(c,[b,f]), n(d,[]), n(f,[b,c,k]), ...]
```

**Human-friendly form:**
```prolog
[b-c, f-c, g-h, d, f-b, k-f, h-g]
```

Atoms are isolated nodes; `X-Y` terms are edges. List need not be sorted or unique.

### Directed Graphs (Digraphs)

**Arc-clause form:**
```prolog
arc(s,u).
arc(u,r).
...
```

**Graph-term form:**
```prolog
digraph([r,s,t,u,v],[a(s,r),a(s,u),a(u,r),a(u,s),a(v,u)])
```

**Adjacency-list form:**
```prolog
[n(r,[]),n(s,[r,u]),n(t,[]),n(u,[r]),n(v,[u])]
```

**Human-friendly form:**
```prolog
[s > r, t, u > r, s > u, u > s, v > u]
```

### Labelled Graphs

Edges have additional information:

**Arc-clause form:**
```prolog
arc(m,q,7).
arc(p,q,9).
arc(p,m,5).
```

**Graph-term form:**
```prolog
digraph([k,m,p,q],[a(m,p,7),a(p,m,5),a(p,q,9)])
```

**Adjacency-list form:**
```prolog
[n(k,[]),n(m,[q/7]),n(p,[m/5,q/9]),n(q,[])]
```

**Human-friendly form:**
```prolog
[p>q/9, m>q/7, k, p>m/5]
```

### P80 (***) Conversions

Write predicates to convert between graph representations. This makes all equivalent.

Rated (***) due to handling many special cases, not difficulty.

### P81 (**) Path from one node to another one

```prolog
% path(G,A,B,P) :- P is an acyclic path from A to B in graph G
```

Return all paths via backtracking.

### P82 (*) Cycle from a given node

```prolog
% cycle(G,A,P) :- P is a closed path (cycle) starting at node A in graph G
```

Return all cycles via backtracking.

### P83 (**) Construct all spanning trees

```prolog
% s_tree(Graph,Tree) :- T is a spanning tree of Graph
```

Find how many spanning trees exist for a given graph. Use data from file `p83.dat`.

Define: `is_tree(Graph)` and `is_connected(Graph)`.

### P84 (**) Construct the minimal spanning tree

```prolog
% ms_tree(Graph,Tree,Sum) :- Construct the minimal spanning tree
```

Use Prim's algorithm. File `p84.dat` has example data.

### P85 (**) Graph isomorphism

Two graphs G1(N1,E1) and G2(N2,E2) are isomorphic if there's a bijection f: N1 → N2 such that X,Y adjacent ⟺ f(X),f(Y) adjacent.

Write a predicate to determine if two graphs are isomorphic.

**Hint:** Use an open-ended list to represent f.

### P86 (**) Node degree and graph coloration

**a)** Write `degree(Graph,Node,Deg)` to determine node degree.

**b)** Generate a list of nodes sorted by decreasing degree.

**c)** Use Welch-Powell's algorithm to color nodes so adjacent nodes have different colors.

### P87 (**) Depth-first order graph traversal (alternative solution)

Write a predicate that generates a depth-first traversal sequence starting from a given point.

Output is a list of reachable nodes in depth-first order.

### P88 (**) Connected components (alternative solution)

Write a predicate that splits a graph into its connected components.

### P89 (**) Bipartite graphs

Write a predicate to determine if a given graph is bipartite.

---

## Miscellaneous Problems

### P90 (**) Eight queens problem

Place eight queens on a chessboard so no two attack each other (same row, column, or diagonal).

Represent queen positions as a list `[1..N]`. Example: `[4,2,7,3,6,8,5,1]` means column 1 has a queen in row 4, column 2 in row 2, etc.

**Hint:** Use the generate-and-test paradigm.

### P91 (**) Knight's tour

How can a knight jump on an NxN chessboard to visit every square exactly once?

**Hints:**
- Represent squares as coordinate pairs `X/Y` (1 ≤ X,Y ≤ N)
- Define `jump(N,X/Y,U/V)` for valid knight jumps
- Solution is a list of N×N knight positions

### P92 (***) Von Koch's conjecture

Given a tree with N nodes (N-1 edges): enumerate nodes 1 to N and edges 1 to N-1 such that for each edge K, the difference of its node numbers equals K.

The conjecture is that this is always possible.

Write a predicate to calculate a numbering scheme for a tree. What is the solution for larger example trees?

### P93 (***) An arithmetic puzzle

Given a list of integers, insert arithmetic operators so the result is a correct equation.

Example: `[2,3,5,7,11]`
- `2-3+5+7 = 11`
- `2 = (3*5+7)/11` (and ten others!)

### P94 (***) Generate K-regular simple graphs with N nodes

In K-regular graphs all nodes have degree K. How many non-isomorphic 3-regular graphs with 6 nodes exist?

### P95 (**) English number words

On financial documents, numbers are written in words. Example: 175 → "one-seven-five".

Write `full_words/1` to print non-negative integers in words.

### P96 (**) Syntax checker (alternative solution with difference lists)

In Ada, identifiers are defined by syntax diagrams. Transform diagrams to eliminate loops (purely recursive).

```prolog
% identifier(Str) :- Str is a legal identifier
```

### P97 (**) Sudoku

Fill a 9×9 grid with digits 1-9 so each digit appears exactly once in:
- Each row
- Each column
- Each 3×3 box

### P98 (***) Nonograms

Each row/column is annotated with lengths of distinct occupied cell strings. Complete the bitmap using logic alone.

Example annotations: `[[3],[2,1],[3,2],...]` represent run-length sequences.

### P99 (***) Crossword puzzle

Given empty framework and word set, place words on horizontal/vertical sites.

Framework uses `.` for empty locations, can have predefined characters.

**Hints:**
1. Understand the problem thoroughly first
2. Read data file using provided `read_lines/2` from file `p99-readfile.pl`
3. Sort words and sites for efficiency (see P28)

---

## Notes

- **Embrace declarative thinking:** Describe what you want, not how to compute it.
- **Logical clarity first:** Efficiency matters less than clear, correct logic.
- **Build incrementally:** Test each solution before moving to the next problem.
- **Use built-in predicates wisely:** Understand when to implement vs. use predefined predicates.

**Last modified:** Sun Apr 26 10:55:38 W. Europe Daylight Time 2009

**Source:** https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/
