-- Função de alta ordem fold (reduce)
-- Fold é uma função de alta ordem pois recebe uma outra função como parâmetro

-- foldr itera da direita para esquerda
-- foldl itera da esquerda para direita

l1 = [10, 7, 4, 14, 1, 6]
v1 = foldr (+) 0 l1
-- v1 = 42 = 0+6+1+14+4+7+10
-- zero é o valor inicial da operação, no caso da soma é utilizado por ser neutro servindo como acumulador inicial

soma x y = x + y
v2 = foldr soma 0 l1
-- v2 = 42

v3 = foldr (\x y -> x+y) 0 l1
-- v2 = 42

v4 = foldr (\x y -> (show x) ++ y) "" l1
-- v4 = "10741416"
-- (show x) transforma o valor numérico em string
v5 = foldr (++) "" (map show l1)
-- v5 = "10741416"

main = print v5