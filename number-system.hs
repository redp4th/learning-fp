-- This file explains how to use Peano Axioms to build up the natural number system.
-- Peano axioms comes in following flavours:
-- 1. 0 is a natural number
-- 2. If n is a natural number, then n++ is also a natural number
--      The ++ (incr) operation, is the only operation needed to be defined explicitly, other operations (add, multiply, exponent etc.) can be built upon it iteratively.
-- 3. 0 is not the successor of any natural number
--      This guarantees 0 is the only "source" of natural number; we can obtain any other natural numbers by simply iterating ++ operation on 0
-- 4. Different natural numbers must have different successors
--      This defines a strict ordering on natural numbers
-- 5. Principle of mathematical induction is assumed

-- To build natural number system, we first need to define incr operation
incr :: Integer -> Integer
incr = (+1)

-- We define add to be iteratively application of incr
-- The definition of add is actually informal, but we cannot adopt the genuine definition of addition, which is 1) 0+m = m 2) (n++)+m = (n+m)++, because we will be caught in an infinite loop
add :: Integer -> Integer -> Integer
add 0 m = m
add n m = incr ((n-1) `add` m)

-- The definition of multiplication is straight forward
multiply :: Integer -> Integer -> Integer
multiply 0 m = 0
multiply n m = ((n-1) `multiply` m) `add` m

-- Finally, we can define exponent
expo :: Integer -> Integer -> Integer
expo m 0 = 1
expo m n = (m `expo` (n-1)) `multiply` m
