altura :: (String -> Int)
altura classe = 
    case classe of 
        "Gigante" -> 20
        "Guerreiro" -> 10
        "Mago" -> 7
        "Sacerdote" -> 8
        "Gnomo" -> 3

idade :: (String -> Int)
idade classe = 
    case classe of 
        "Gigante" -> 156
        "Guerreiro" -> 28
        "Mago" -> 54
        "Sacerdote" -> 87
        "Gnomo" -> 92

forca :: (String -> Int)
forca classe = 
    case classe of 
        "Gigante" -> 99
        "Guerreiro" -> 78
        "Mago" -> 24
        "Sacerdote" -> 13
        "Gnomo" -> 36

velocidade :: (String -> Int)
velocidade classe = 
    case classe of 
        "Gigante" -> 14
        "Guerreiro" -> 70
        "Mago" -> 55
        "Sacerdote" -> 25
        "Gnomo" -> 92

magia :: (String -> Int)
magia classe = 
    case classe of 
        "Gigante" -> 0
        "Guerreiro" -> 0
        "Mago" -> 75
        "Sacerdote" -> 95
        "Gnomo" -> 30

propriedades :: (String -> [Int])
propriedades classe =
    case classe of
        "Gigante" -> [(altura "Gigante"), (idade "Gigante"), (forca "Gigante"), (velocidade "Gigante"), (magia "Gigante")]
        "Guerreiro" -> [(altura "Guerreiro"), (idade "Guerreiro"), (forca "Guerreiro"), (velocidade "Guerreiro"), (magia "Guerreiro")]
        "Mago" -> [(altura "Mago"), (idade "Mago"), (forca "Mago"), (velocidade "Mago"), (magia "Mago")]
        "Sacerdote" -> [(altura "Sacerdote"), (idade "Sacerdote"), (forca "Sacerdote"), (velocidade "Sacerdote"), (magia "Sacerdote")]
        "Gnomo" -> [(altura "Gnomo"), (idade "Gnomo"), (forca "Gnomo"), (velocidade "Gnomo"), (magia "Gnomo")]

classes :: [[Int]]
classes = [(propriedades "Gigante"), (propriedades "Guerreiro"), (propriedades "Mago"), (propriedades "Sacerdote"), (propriedades "Gnomo")]

main = print (classes)