import System.Environment
import Data.Char

main = print (maximum (concat (problem4 999)))

problem4 :: Int -> [[Int]]
problem4 i
	| i > 99			=	palindromes (map (* i) [100..999]) : problem4 (i-1)
	| otherwise		= []

palindromes :: [Int] -> [Int]
palindromes [] = []
palindromes (x:xs)
	| isPalindrome (show $ x) = x : palindromes xs
	| otherwise = palindromes xs

isPalindrome :: [Char] -> Bool
isPalindrome str
	| str == reverse str  = True
	| otherwise = False

