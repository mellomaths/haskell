-- Função de alta ordem filter
-- Filter é uma função de alta ordem pois recebe uma outra função como parâmetro

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
-- pegando números divisiveis por 4

type Person = (String, Int, String)
name (x,_,_) = x
age (_,x,_) = x
sex (_,_,x) = x

people = [("Matheus", 23, "M"), ("Cristiana", 13, "F"), ("Messi", 27, "M")]

is_adult person = (age person) > 18
adult_people = filter is_adult people

is_female person = (sex person) == "F"
is_male person = (sex person) == "M"
females = filter is_female people


main = print females

