# Python Lists, Dictionaries and Sets

This section covers the syntax and built-in methods of **Lists, Dictionaries, and Sets** in Python.

---

# 1. List

A **list** is an ordered and mutable collection that can store multiple values, including duplicate values.

## Syntax

```python
list_name = [value1, value2, value3]
```

## List Methods

| Method      | Syntax                      | Description                                                     |
| ----------- | --------------------------- | --------------------------------------------------------------- |
| `append()`  | `list.append(value)`        | Adds one element to the end of the list.                        |
| `extend()`  | `list.extend(iterable)`     | Adds all elements from another iterable to the end of the list. |
| `insert()`  | `list.insert(index, value)` | Adds an element at the specified index.                         |
| `remove()`  | `list.remove(value)`        | Removes the first occurrence of the specified value.            |
| `pop()`     | `list.pop(index)`           | Removes and returns the element at the specified index.         |
| `clear()`   | `list.clear()`              | Removes all elements from the list.                             |
| `index()`   | `list.index(value)`         | Returns the index of the first occurrence of a value.           |
| `count()`   | `list.count(value)`         | Returns how many times a value occurs in the list.              |
| `sort()`    | `list.sort()`               | Sorts the elements of the list in ascending order by default.   |
| `reverse()` | `list.reverse()`            | Reverses the order of elements in the list.                     |
| `copy()`    | `list.copy()`               | Creates a shallow copy of the list.                             |

### Useful Built-in Functions with Lists

| Function   | Syntax         | Description                                                    |
| ---------- | -------------- | -------------------------------------------------------------- |
| `len()`    | `len(list)`    | Returns the number of elements in the list.                    |
| `max()`    | `max(list)`    | Returns the largest element in the list.                       |
| `min()`    | `min(list)`    | Returns the smallest element in the list.                      |
| `sum()`    | `sum(list)`    | Returns the sum of numeric elements in the list.               |
| `sorted()` | `sorted(list)` | Returns a new sorted list without modifying the original list. |

---

# 2. Dictionary

A **dictionary** stores data as **key-value pairs** and is mutable.

## Syntax

```python
dictionary_name = {
    "key1": "value1",
    "key2": "value2"
}
```

## Dictionary Methods

| Method         | Syntax                        | Description                                                                             |
| -------------- | ----------------------------- | --------------------------------------------------------------------------------------- |
| `clear()`      | `dict.clear()`                | Removes all key-value pairs from the dictionary.                                        |
| `copy()`       | `dict.copy()`                 | Creates a shallow copy of the dictionary.                                               |
| `fromkeys()`   | `dict.fromkeys(keys)`         | Creates a new dictionary using the specified keys.                                      |
| `get()`        | `dict.get(key)`               | Returns the value associated with a key without raising an error if the key is missing. |
| `items()`      | `dict.items()`                | Returns all key-value pairs as view objects.                                            |
| `keys()`       | `dict.keys()`                 | Returns all keys in the dictionary.                                                     |
| `pop()`        | `dict.pop(key)`               | Removes the specified key and returns its value.                                        |
| `popitem()`    | `dict.popitem()`              | Removes and returns the last inserted key-value pair.                                   |
| `setdefault()` | `dict.setdefault(key, value)` | Returns a key's value and adds the key with a default value if it does not exist.       |
| `update()`     | `dict.update(other)`          | Adds new key-value pairs or updates existing keys.                                      |
| `values()`     | `dict.values()`               | Returns all values in the dictionary.                                                   |

### Useful Built-in Function with Dictionaries

| Function | Syntax      | Description                                              |
| -------- | ----------- | -------------------------------------------------------- |
| `len()`  | `len(dict)` | Returns the number of key-value pairs in the dictionary. |

---

# 3. Set

A **set** is an unordered and mutable collection that stores **unique elements**.

## Syntax

```python
set_name = {value1, value2, value3}
```

> **Note:** An empty set is created using `set()`, because `{}` creates an empty dictionary.

```python
set_name = set()
```

## Set Methods

| Method                          | Syntax                                   | Description                                                                |
| ------------------------------- | ---------------------------------------- | -------------------------------------------------------------------------- |
| `add()`                         | `set.add(value)`                         | Adds one element to the set.                                               |
| `update()`                      | `set.update(iterable)`                   | Adds multiple elements from an iterable to the set.                        |
| `remove()`                      | `set.remove(value)`                      | Removes a specified element and raises an error if it does not exist.      |
| `discard()`                     | `set.discard(value)`                     | Removes a specified element without raising an error if it does not exist. |
| `pop()`                         | `set.pop()`                              | Removes and returns an arbitrary element from the set.                     |
| `clear()`                       | `set.clear()`                            | Removes all elements from the set.                                         |
| `copy()`                        | `set.copy()`                             | Creates a shallow copy of the set.                                                                         |

---

# 📚 References

### Python Lists

[GeeksforGeeks – Python Lists](https://www.geeksforgeeks.org/python/python-lists/)

### Python Dictionaries

[GeeksforGeeks – Python Dictionaries](https://www.geeksforgeeks.org/python/python-dictionary/)

### Python Sets

[GeeksforGeeks – Python Sets](https://www.geeksforgeeks.org/python/python-set/)

### General Python Reference

[GeeksforGeeks – Python Programming Language](https://www.geeksforgeeks.org/python/python-programming-language-tutorial/)

---

# 🎯 Data Engineering Relevance

These three data structures are important for Data Engineering:

* **Lists** → Store and process collections of records.
* **Dictionaries** → Represent structured data such as JSON records and API responses.
* **Sets** → Remove duplicates and perform efficient membership and set operations.
