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



