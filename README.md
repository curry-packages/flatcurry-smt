flatcurry-smt
=============

This package defines the Curry module `FlatCurry.Names2SMT`
which contain mappings between some names of primitive
operations occurring in FlatCurry programs, like arithmetic
and relational operators, and their counterparts used
in SMT solvers. For instance, the FlatCurry names

    _impl#+#Prelude.Num#Prelude.Int
    _impl#<=#Prelude.Ord#Prelude.Int

of the addition and less-or-equal operation on integers
defined in the standard prelude correspond to the names
`+` and `<=` used in SMT solvers.

This package is useful for tools which translate Curry programs
into SMT formulas, e.g., to verify properties of Curry programs.
