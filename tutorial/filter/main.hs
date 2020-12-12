-- Higher-Order Function -> filter
-- Filter is a higher-order function because it receives another function as an argument.
-- filter :: (a -> Bool) -> [a] -> [a]

l1 = [10, 20, 30, 40]
l2 = filter(>25) l1
-- l2 = [30, 40]

greater_than_25 :: Int -> Bool
greater_than_25 x = x > 25
l3 = filter greater_than_25 l1
-- l3 = [30, 40]

l4 = filter(\x -> x > 25) l1
-- l4 = [30, 40]

l5 = filter(\x -> mod x 4 == 0) l1
-- l5 = [20, 40]
-- getting numbers that are divisible by 4

type Person = (String, Int, String)
name (x,_,_) = x -- returns the first element of the tuple
age (_,x,_) = x -- returns the second element of the tuple
sex (_,_,x) = x -- returns the third element of th tuple

-- creates a list of the tuples (of the type of Person)
people = [("Matheus", 23, "M"), ("Cristiana", 13, "F"), ("Messi", 27, "M")]

-- function to check if the age of the person is greater than 18
is_adult person = (age person) > 18
-- filtering people's array returning only adult people
adult_people = filter is_adult people

-- function to check if the person has sex of "F" (female)
is_female person = (sex person) == "F"
-- function to check if the person has sex of "F" (male)
is_male person = (sex person) == "M"
-- filtering people's array returning only people with sex equals to "F"
females = filter is_female people

main = print females

