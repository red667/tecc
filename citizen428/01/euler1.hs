main :: IO ()
main = print problem1

problem1 :: Integer
problem1 = sum (filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1..999])

