main :: IO ()
main = print $ largestPalindrome

largestPalindrome = 
	maximum [x * y | x <- [100..999], y <- [100..999], isPalindrome (show $ x*y)]

isPalindrome :: String -> Bool
isPalindrome str
	| str == reverse str 	= True
	| otherwise				= False