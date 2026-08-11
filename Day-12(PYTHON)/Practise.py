#Using of Print Statment
print("Hello World!!")

#INTRODUCTION TO PYTHON

# ---------- DATA TYPES ----------

# Integer
age = 21

# Float
salary = 45000.50

# String
name = "Name1"

# Boolean
is_student = True

# List
skills = ["Python", "SQL", "Pandas"]

# Tuple
coordinates = (10, 20)

# Set
numbers = {10, 20, 30, 40}

# Dictionary
student = {
    "name": "name1",
    "age": 19,
    "course": "CSE"
}

# None
data = None


# ---------- DISPLAY DATA TYPES ----------

print("Integer:", age, type(age))
print("Float:", salary, type(salary))
print("String:", name, type(name))
print("Boolean:", is_student, type(is_student))
print("List:", skills, type(skills))
print("Tuple:", coordinates, type(coordinates))
print("Set:", numbers, type(numbers))
print("Dictionary:", student, type(student))
print("None:", data, type(data))


#-------------OPERATORS--------------

a = 10
b = 3

# ---------- Arithmetic Operators ----------

print("\n--- Arithmetic Operators ---")

print("Addition:", a + b)
print("Subtraction:", a - b)
print("Multiplication:", a * b)
print("Division:", a / b)
print("Floor Division:", a // b)
print("Modulus:", a % b)
print("Exponent:", a ** b)


# ---------- Comparison Operators ----------

print("\n--- Comparison Operators ---")

print("Equal:", a == b)
print("Not Equal:", a != b)
print("Greater Than:", a > b)
print("Less Than:", a < b)
print("Greater Than or Equal:", a >= b)
print("Less Than or Equal:", a <= b)


# ---------- Logical Operators ----------

print("\n--- Logical Operators ---")

x = True
y = False

print("AND:", x and y)
print("OR:", x or y)
print("NOT:", not x)


# ---------- Assignment Operators ----------

print("\n--- Assignment Operators ---")

c = 10

c += 5
print("c += 5:", c)

c -= 2
print("c -= 2:", c)

c *= 2
print("c *= 2:", c)

c /= 2
print("c /= 2:", c)


# ---------- Membership Operators ----------

print("\n--- Membership Operators ---")

skills = ["Python", "SQL", "Pandas"]

print("Python in skills:", "Python" in skills)
print("Java not in skills:", "Java" not in skills)


# ---------- Identity Operators ----------

print("\n--- Identity Operators ---")

p = [1, 2, 3]
q = p
r = [1, 2, 3]

print("p is q:", p is q)
print("p is r:", p is r)
print("p is not r:", p is not r)