# Define List

lst = [1, "Apple", "Mango", 2, 1]
print("List:", lst)


# List Methods

lst.append("Grape")
print("append(): Adds an element at last:", lst)


print("count(): Counts occurrences of an element:", lst.count(1))


lst.extend(["Orange", "Banana"])
print("extend(): Adds multiple elements:", lst)


lst.insert(1, "Python")
print("insert(): Adds element at a specific position:", lst)


lst.remove("Apple")
print("remove(): Removes the specified element:", lst)


item = lst.pop()
print("pop(): Removes and returns the last element:", item)
print("List after pop():", lst)


item = lst.pop(1)
print("pop(index): Removes element at specified index:", item)
print("List after pop(index):", lst)


print("index(): Returns the index of an element:", lst.index("Mango"))


lst.reverse()
print("reverse(): Reverses the list:", lst)


numbers = [5, 2, 8, 1, 3]
numbers.sort()
print("sort(): Sorts the list:", numbers)


numbers.clear()
print("clear(): Removes all elements:", numbers)


lst2 = lst.copy()
print("copy(): Creates a copy of the list:", lst2)


#List Traversal
print("--------------------------------List Traversal----------------------------")
for items in lst:
    print(items)



#Dictonary 

# Define Dictionary

print("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------")

student = {
    "name": "name1",
    "age": 19,
    "course": "CSE"
}

print("Dictionary:", student)


# Dictionary Methods

print("get(): Returns the value of a key:", student.get("name"))


print("keys(): Returns all keys:", student.keys())


print("values(): Returns all values:", student.values())


print("items(): Returns key-value pairs:", student.items())


student.update({"age": 22})
print("update(): Updates existing key-value pairs:", student)


student.update({"city": "Chennai"})
print("update(): Adds new key-value pairs:", student)


student.setdefault("country", "India")
print("setdefault(): Adds key if it does not exist:", student)


student.pop("city")
print("pop(): Removes specified key:", student)


student.popitem()
print("popitem(): Removes the last inserted key-value pair:", student)


student_copy = student.copy()
print("copy(): Creates a copy of dictionary:", student_copy)


student.clear()
print("clear(): Removes all elements:", student)


print("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------")

# Define Set

s = {1, 2, 3, 4, 5}
print("Set:", s)


# Set Methods

s.add(6)
print("add(): Adds an element:", s)


s.update([7, 8, 9])
print("update(): Adds multiple elements:", s)


s.remove(9)
print("remove(): Removes a specified element:", s)


s.discard(8)
print("discard(): Removes an element if it exists:", s)


item = s.pop()
print("pop(): Removes and returns an arbitrary element:", item)
print("Set after pop():", s)


s2 = s.copy()
print("copy(): Creates a copy of the set:", s2)


s.clear()
print("clear(): Removes all elements:", s)