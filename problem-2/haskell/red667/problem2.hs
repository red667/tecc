import System.Environment

main = print (fib 4000000)

fib :: Int -> Int
fib n = sum $ filter even $ takeWhile (n >=) fibs
  where
	    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
