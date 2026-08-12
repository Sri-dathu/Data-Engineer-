## 1. Conditional Statements

Conditional statements are used to execute code based on specific conditions.

### `if`

```python
if condition:
    statement
```

### `if-else`

```python
if condition:
    statement
else:
    statement
```

### `if-elif-else`

```python
if condition:
    statement
elif condition:
    statement
else:
    statement
```

### Nested `if`

```python
if condition:
    if condition:
        statement
    else:
        statement
else:
    statement
```

---

## 2. Jump Statements

Jump statements are used to change or control the normal flow of loop execution.

### `break`

Terminates the loop immediately.

```python
for variable in sequence:
    if condition:
        break
```

### `continue`

Skips the current iteration and moves to the next iteration.

```python
for variable in sequence:
    if condition:
        continue
```

### `pass`

Does nothing and is used as a placeholder.

```python
if condition:
    pass
```

---

## 3. Loops

Loops are used to execute a block of code repeatedly.

### `for` Loop

Used to iterate over a sequence or iterable.

```python
for variable in iterable:
    statement
```

### `while` Loop

Executes a block of code as long as the condition is `True`.

```python
while condition:
    statement
```

### Nested Loops

A loop can be placed inside another loop.

```python
for variable in iterable:
    for variable in iterable:
        statement
```

---

## 4. Loop Control

Python loops can be controlled using:

```text
break
continue
pass
```

These statements help control how loops execute and respond to specific conditions.

---

## 📚 Reference

### GeeksforGeeks – Python Programming Language Tutorial

https://www.geeksforgeeks.org/python/python-programming-language-tutorial/

The tutorial is used as a reference for learning Python programming concepts.

