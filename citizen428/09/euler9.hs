-- Slow but very simple

main :: IO ()
main = print $ product triple

triple :: [Integer]
triple = head [ [a,b,c] | c <- [1..998], b <- [1..c], a <- [1..b], a+b+c==1000, a^2+b^2==c^2 ]
