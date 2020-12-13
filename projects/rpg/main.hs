data Status = Status {  agility :: Int,
                        power :: Int,
                        sourcery :: Int
                    } deriving (Show)

data Character =  Character {   height :: Int,
                                age :: Int,
                                status :: Status
                            } deriving (Show)


giant :: Character
giant = Character { height=932, age=156, status=Status { agility=14, power=99, sourcery=0 } }  

warrior :: Character
warrior = Character { height=187, age=28, status=Status { agility=70, power=78, sourcery=0 } }

mage :: Character
mage = Character { height=156, age=54, status=Status { agility=44, power=24, sourcery=78 } }

priest :: Character
priest = Character { height=210, age=87, status=Status { agility=25, power=13, sourcery=95 } }

gnome :: Character
gnome = Character { height=60, age=92, status=Status { agility=92, power=40, sourcery=30 } }

main = print giant

