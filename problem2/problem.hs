{--
 -- Project Euler
 -- Problem 2
 --
 -- Thom Wiggers
 --}

-- with some thanks to 
-- http://www.haskell.org/haskellwiki/The_Fibonacci_sequence
fibs = 0:1:zipWith (+) fibs (tail fibs)

solve = sum [ x | x <- takeWhile (<= 4000000) fibs, even x]

main = print solve
