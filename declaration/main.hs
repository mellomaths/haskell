l1 :: [Int] -- array of integers
l1 = [1, 2, 3, 4, 5]

v1 :: [Char] -- string as an array of characters
-- can use also
-- v1 :: String
v1 = foldr (++) "" (map show l1) 

main = print v1