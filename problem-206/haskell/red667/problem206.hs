import System.Environment
import Data.Char

main = print (problem206 1011111111)
--main = print (map digitToInt . show $ 1000000000000000*10000000000000000000)

problem206 :: Integer -> Integer
problem206 i
	| checkNum (map digitToInt . show $ i*i) == True	= i
--	| length (map digitToInt . show $ ((i*i)*(i*i))) < 3 = problem206 (i*i)
	| otherwise	= problem206 (i+1)

checkNum :: [Int] -> Bool
--checkNum [1,_,0,_,0,_,0] = True
checkNum [1,_,2,_,3,_,4,_,5,_,6,_,7,_,8,_,9,_,0] = True
checkNum _ = False 
