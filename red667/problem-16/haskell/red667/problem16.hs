import System.Environment
import Data.Char

main = print (sum . map digitToInt . show $ 2^1000)

problem16 = adder (2 ^(1000 :: Integer)) 0 1

adder :: Integer-> Integer -> Integer -> Integer
adder a b i
	| a == 0		= b
	| otherwise = adder (a - (mod a (10 ^ i ))) (b + (div (mod a (10 ^ i)) (10 ^ (i-1)))) (i+1)
