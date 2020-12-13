-- Using "data" we can create our own data types. 
-- we can use "data" like we use "struct" in C
-- data (type name) = (constructor name) (properties types)

-- Person (name, age, country)
data Person = Person String Int String
p :: Person
p = Person "Maria" 29 "Brazil"

-- example of "struct" in C:
-- struct Person {
--     char name[255];
--     int age;
--     char country[255];
-- };
-- struct Person p = { "Maria", 29, "Brazil" };

-- or we can use "data" like we use "enum" in C
-- data (type name) = (possible constructor name) (or) (another possible constructor name) and so on
data Bool = False | True
b :: Bool
b = False

-- example of "enum" in C:
-- enum Bool { FALSE, TRUE };
-- enum Bool b = FALSE;

-- we can also use "data" like we use "union" in C:
-- in this case we use both constructors

-- Teacher (number of students, classrooms)
-- Student (period, grade)
data Member = Teacher Int Int | Student Int Float
s :: Member
s = Student 5 6.8

-- example of "union" in C:
-- enum MEMBER { TEACHER, STUDENT };
-- struct Member {
--     enum MEMBER sub; // tagged union
--     union {
--         struct { int numberOfStudents; int classrooms; }; // Teacher
--         struct { int period; float grade; }; // Student
--     };
-- };

-- struct Member s = { STUDENT, { 5, 6.8 } };


-- so a Shape can be a Circle and also a Rectangle
data Shape = Circle Float Float Float | Rectangle Float Float Float Float 

-- we can define inner properties name to facility the reading
data Person = Person {  firstname :: String,
                        lastname :: String,
                        age :: Int,
                        height :: Int,
                        phonenumber :: String
                     }

guy = Person { firstname="Matheus", lastname="Mello", age=23, height=184, phonenumber="+552173872781" }

-- so we can define the type of List
data ListOfInt = Node Int ListOfInt | Empty
-- which means that a list of integers, if not empty, 
-- is formed by a integer and the rest of the list 
-- and we can do that recursively.

l :: ListOfInt
l = Node 10 (Node 20 (Node 30 Empty))
-- l = 10 : 20 : 30 : []


-- defining a version of "map" to this List data non parametric type that we created
mapInt :: (Int -> Int) -> ListOfInt -> ListOfInt
mapInt afunction intlist = 
    case intlist of
        Empty -> Empty -- if empty, return empty []
        Node x remainder -> Node (afunction x) (mapInt afunction remainder)
        -- else applies function to the current x, and map the rest


-- we can also define a Parametric type of List
-- so that the list can have any type.
data List a = Node a (List a) | Empty
l :: List Int
l = Node 10 (Node 20 (Node 30 Empty))

-- defining a version of "map" to this List data parametric type that we created
map :: (a -> b) -> List a -> List b
map f l =
    case l of
        Empty -> Empty -- if empty, return empty []
        Node x remainder -> Node (f x) (map f remainder)
        -- else applies function to the current x, and map the rest


-- We can have complex data structures like tree implemented like this
data Tree a = Branch (Tree a) a (Tree a) | Leaf
-- recreating this tree
--       4
--    /     \
--   2       6 
--  / \     / \
-- 1   3   5   7

t :: Tree Int
t = Branch ( Branch ( Branch Leaf 1 Leaf)
                    2
                    ( Branch Leaf 3 Leaf)) -- left subtree
            4 -- root
            (Branch ( Branch Leaf 5 Leaf)
                    6
                    ( Branch Leaf 7 Leaf)) -- right subtree

-- implementing a function to return the lenght (size) of the tree
lengthtree :: Tree a -> Int
lengthtree Leaf = 0
lengthtree (Branch lefttree _ righttree) = 1 + lengthtree lefttree + lengthtree righttree

