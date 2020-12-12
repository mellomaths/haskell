-- Higher-Order Function "fold" (reduce)
-- Fold is a higher-order function because it receives another function as an argument.
-- fold :: (a -> b -> b) -> b -> [a] -> b

-- foldr iterates from the right to the left of the list
-- foldl iterates from the left to the right of the list

-- so foldr works like this
-- foldr f v0 l
-- applies  f (ln, v0) -> v1
--          f (ln-1, v1) -> v2
--          f (ln-2, v2) -> v3
--          ...
--          f (l1, vn-1) -> vn (the final result)

l1 = [10, 7, 4, 14, 1, 6]
v1 = foldl (+) 0 l1
-- v1 = 42 = 0+6+1+14+4+7+10
-- zero is the initial value of the operation and "sum" (+) is being as inner function.
-- zero is used because is the neutral value of sum.

-- declaring another function instead of using (+).
summ x y = x + y
v2 = foldr summ 0 l1
-- v2 = 42

-- using an annoymous function.
v3 = foldr (\x y -> x+y) 0 l1
-- v2 = 42

v4 = foldr (\x y -> (show x) ++ y) "" l1
-- v4 = "10741416"
-- (show x) transforms the numeric value of x to string.

-- we can get the same result using the function "map" passing "show" as an argument.
-- to transform each element of the list to string.
v5 = foldr (++) "" (map show l1)
-- v5 = "10741416"

v6 = foldr (-) 0 [1,2,3,4]
-- -2

v7 = foldl (-) 0 [1,2,3,4]
-- -10

-- because subtraction does not have comutative property as sums
-- the results of foldr and foldl are differents.

accounts = [1000, 6546.4, 542.5]
sum_accounts acc1 acc2 = acc1 + acc2
total_in_bank = foldr sum_accounts 0 accounts
-- 8088.9

main = print total_in_bank