# P-99: Ninety-Nine Prolog Problems

This repository is an educational project dedicated to working through the classic "Ninety-Nine Prolog Problems." The goal is to provide clear, logical, and well-documented solutions to these problems, serving as a learning resource for logic programming with Prolog.

## About the Problems

The problems were originally collected and defined by **Werner Hett** of the Bern University of Applied Sciences. They are designed to be a practical way to practice and improve one's Prolog programming skills.

- The full problem set is included in this repository in the file `NintyNineProblems.md`.
- The original source can be found at: [https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/](https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/)

## Technical Environment

All solutions in this project are developed for and tested with **SWI-Prolog**. While they may work with other Prolog interpreters, compatibility is not guaranteed.

## How to Use

The solutions are organized into multiple `.pl` files based on the problem categories (e.g., `PrologLists.pl`).

To use the solutions, load the desired file into the SWI-Prolog interpreter:

```sh
swipl -s PrologLists.pl
```

Once loaded, you can run queries for the implemented problems. For example, to find the last element of a list (Problem P01):

```prolog
?- my_last(X, [a,b,c,d]).
X = d.
```

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
