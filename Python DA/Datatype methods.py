#  upper
name = "Deep Barot"
print(name.upper())

# lower
name = "Deep Barot"
print(name.lower())

# title
name = "deep barot"
print(name.title())

# capitalize
name = "deep barot"
print(name.capitalize())

# strip
name = "  deepbarot  "
print(name.strip())

# Replace
text = "I Love A.R Rahman"
print(text.replace("I Love A.R Rahman", "A.R Rahman songs"))

# split
data = "Sql Python Power BI excel"
print(data.split())

# jpin
skills  = ["Python", "SQL", "PowerBI"]

print(" / ".join(skills))

# find
text = "Deep"

print(text.find("p"))

# count
text = "Tata Harrier"
print(text.count("r"))

# 11 Startswith
text = "Python"

print(text.startswith("hi"))

#  Endswith
text = "Python"
print(text.endswith("on"))

# isdigit
num = "3545"

print(num.isdigit())

# isaplha
name = "Python"

print(name.isalpha())

# LIST METHODS

# append
fruits = ["Apple", "Banana"]

fruits.append("Cherry")
fruits.append("Orange")

print(fruits)

# extend
numbers = [1,2]

numbers.extend([3,4,5])

print(numbers)

# insert
names = ["Rahul", "Amit"]

names.insert(2, "Chetan")

print(names)

# remove
fruits = ["Apple", "Banana"]

fruits.remove("Apple")

print(fruits)

# pop
numbers = [10,20,30]

numbers.pop(1)

print(numbers)

# clear
data = [1,2,3]

data.clear()

print(data)

# index
names = ["A", "B", "C"]

print(names.index("B"))

# 21
names = ["A", "B", "C"]

print(names.index("B"))

# count
numbers = [1,1,2,3,1]

print(numbers.count(1))

# sort
numbers = [5,2,8,1]

numbers.sort()

print(numbers)

# reverse
numbers = [1,2,3]

numbers.reverse()

print(numbers)

# copy
a = [1,2,3]

b = a.copy()

print(b)

# TUPLE METHODS
data = (1,1,2,3,4,5,5,6,7,8,8,8)

print(data.count(8))

# SET METHODS

# add
numbers = {1,2,3,4,5}
numbers.add(6)
print(numbers)

# Update
numbers = {1,2,3,4,5}
numbers.update([6,7])

print(numbers)

# Remove
numbers = {1, 2, 3, 4, 5}

numbers.remove(5)

print(numbers)

# Union
a = {1,2}
b = {2,3}

print(a.union(b))

# Intersection
a = {1,2}
b = {2,3}
print(a.intersection(b))

# Dictionary Methods

# Keys
student = {
    "name": "Deep",
    "age": 23
}

print(student.keys())

# Values
student = {
    "name": "Deep",
    "age": 23
}
print(student.values())

# Items
student = {
    "name": "Deep",
    "age": 23
}
print(student.items())

# Get
student = {
    "name": "Deep",
    "age": 23
}
print(student.get("name"))

# Update
student = {
    "name": "Deep",
    "age": 23
}

student.update({"city": "Ahmedabad"})

print(student)

# Pop
student = {
    "name": "Deep",
    "age": 23
}

student.pop("age")
print(student)