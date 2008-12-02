-- problem 10

import System.Environment

main = print (problem10 3 [2] 2)

problem10 :: Integer -> [Integer] -> Integer -> Integer
problem10 count primlist sum
	| count > 2000000								= sum
	| checkPrim count primlist == True	= problem10 (count + 2) (primlist ++ [count]) (sum + count)
	| otherwise													= problem10 (count + 2) primlist sum

checkPrim :: Integer -> [Integer] -> Bool
checkPrim _ [] = True
checkPrim value (x:xs)
	| ((mod value x) == 0)	= False
	| otherwise							= checkPrim value xs

problem11 :: Integer -> [Integer] -> Integer -> Integer
problem11 count primlist value
	| value == 10001										= count - 2
 	| checkPrim count primlist == True	= problem11 (count + 2) (primlist ++ [count]) (value + 1)
 	| otherwise													= problem11 (count + 2) primlist value
