{--
 -- Project Euler
 -- Problem 1
 --
 -- Thom Wiggers
 --}

main = print $ solve

solve = sum [ x | x <- [0..1000], x `mod` 5 == 0 || x `mod` 3 == 0]
