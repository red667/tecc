main :: IO ()
main = print $ sumEvenFib 4000000

fibList :: [Integer]
fibList = 0 : 1 : zipWith (+) fibList (tail fibList)

sumEvenFib :: Integer -> Integer
sumEvenFib x = sum . takeWhile (<x) . filter even $ fibList

