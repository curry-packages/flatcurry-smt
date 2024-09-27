-----------------------------------------------------------------------------
--- Definition of some names of primitive operations occurring in FlatCurry
--- programs, like arithmetic and relational operators, and their
--- counterparts used in SMT solvers.
---
--- @author  Michael Hanus
--- @version September 2024
---------------------------------------------------------------------------

module FlatCurry.Names2SMT where

----------------------------------------------------------------------------
--- Primitive unary operations of the prelude and their SMT names.
unaryPrimOps :: [(String,String)]
unaryPrimOps =
  [("_impl#negate#Prelude.Num#Prelude.Int","-")
  ,("_impl#sqrt#Prelude.Floating#Prelude.Float","sqrt")
  ,("not","not")
  ]

--- Primitive binary operations of the prelude and their SMT names.
binaryPrimOps :: [(String,String)]
binaryPrimOps =
  [("&&","and")
  ,("||","or")
  ,("==","=")
  ,("constrEq","=")
  ,("_impl#==#Prelude.Eq#Prelude.Int","=")
  ,("_impl#==#Prelude.Eq#Prelude.Float","=")
  ,("_impl#==#Prelude.Eq#Prelude.Char","=")
  ,("/=","/=")  -- should be translated as negated '='
  ,("_impl#/=#Prelude.Eq#Prelude.Int","/=")
  ,("_impl#/=#Prelude.Eq#Prelude.Float","/=")
  ,("_impl#/=#Prelude.Eq#Prelude.Char","/=")
  ,("_impl#+#Prelude.Num#Prelude.Int","+")
  ,("_impl#-#Prelude.Num#Prelude.Int","-")
  ,("_impl#*#Prelude.Num#Prelude.Int","*")
  ,("_impl#negate#Prelude.Num#Prelude.Int","-")
  ,("_impl#div#Prelude.Integral#Prelude.Int","div")
  ,("_impl#mod#Prelude.Integral#Prelude.Int","mod")
  ,("_impl#rem#Prelude.Integral#Prelude.Int","rem")
  ,("_impl#>#Prelude.Ord#Prelude.Int",">")
  ,("_impl#<#Prelude.Ord#Prelude.Int","<")
  ,("_impl#>=#Prelude.Ord#Prelude.Int",">=")
  ,("_impl#<=#Prelude.Ord#Prelude.Int","<=")
  ,("_impl#+#Prelude.Num#Prelude.Float","+")
  ,("_impl#-#Prelude.Num#Prelude.Float","-")
  ,("_impl#*#Prelude.Num#Prelude.Float","*")
  ,("_impl#/#Prelude.Num#Prelude.Float","/")
  ,("_impl#>#Prelude.Ord#Prelude.Float",">")
  ,("_impl#<#Prelude.Ord#Prelude.Float","<")
  ,("_impl#>=#Prelude.Ord#Prelude.Float",">=")
  ,("_impl#<=#Prelude.Ord#Prelude.Float","<=")
  ,("_impl#>#Prelude.Ord#Prelude.Char",">")
  ,("_impl#<#Prelude.Ord#Prelude.Char","<")
  ,("_impl#>=#Prelude.Ord#Prelude.Char",">=")
  ,("_impl#<=#Prelude.Ord#Prelude.Char","<=")
  ]

----------------------------------------------------------------------------
