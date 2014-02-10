{-- 
 -- Prime factors
 -- Project Euler 
 -- Problem 3
 --
 -- Thom Wiggers
 --}

challenge = 600851475143

solve n = last $ factors n

factors :: Int -> [Int]
factors 1 = []
factors n = (x:factors (n `div` x))
  where 
  x = head [y | y <- [2 .. n], n `mod` y == 0]

isprime :: Int -> Bool
isprime x = null [False | y <- [2 .. x `div` 2], x `mod` y == 0]

main = print $ show $ solve challenge
