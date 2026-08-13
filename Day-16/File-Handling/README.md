# Python File Handling

Python provides file handling to **create, read, write, and modify files**.
The two commonly used file types are **Text Files** and **Binary Files**.

---

## 1. Text Files

Text files store data in a **human-readable format**, such as `.txt`, `.csv`, and `.json`.

### Syntax

```python
file = open("filename.txt", "mode")
```

### Common Modes

| Mode | Description                                                           |
| ---- | --------------------------------------------------------------------- |
| `r`  | Opens the file for reading.                                           |
| `w`  | Opens the file for writing and overwrites existing content.           |
| `a`  | Opens the file for writing and adds content at the end.               |
| `r+` | Opens the file for both reading and writing.                          |
| `w+` | Opens the file for reading and writing, overwriting existing content. |
| `a+` | Opens the file for reading and appending.                             |

### Important Methods

#### `read()`

Reads the contents of a file.

```python
file.read()
```

#### `write()`

Writes data to a text file.

```python
file.write("data")
```

#### `readline()`

Reads one line from the file.

```python
file.readline()
```

#### `readlines()`

Reads all lines and returns them as a list.

```python
file.readlines()
```

#### `close()`

Closes the opened file.

```python
file.close()
```

---

# 2. Binary Files

Binary files store data in **binary format** rather than human-readable text. Examples include `.dat`, images, videos, and serialized Python objects.

For storing Python objects in binary files, the **`pickle` module** is commonly used.

### Import Pickle

```python
import pickle
```

### Syntax

```python
file = open("filename.dat", "wb")
```

### Common Binary Modes

| Mode  | Description                                                                |
| ----- | -------------------------------------------------------------------------- |
| `rb`  | Opens a binary file for reading.                                           |
| `wb`  | Opens a binary file for writing and overwrites existing content.           |
| `ab`  | Opens a binary file for appending.                                         |
| `rb+` | Opens a binary file for reading and writing.                               |
| `wb+` | Opens a binary file for reading and writing, overwriting existing content. |
| `ab+` | Opens a binary file for reading and appending.                             |

## Important `pickle` Methods

### `dump()`

`dump()` **serializes a Python object and writes it into a binary file**.

```python
pickle.dump(object, file)
```

### `load()`

`load()` **reads serialized data from a binary file and converts it back into a Python object**.

```python
pickle.load(file)
```


---

# Text vs Binary Files

| Feature          | Text File           | Binary File                              |
| ---------------- | ------------------- | ---------------------------------------- |
| Data format      | Human-readable      | Binary format                            |
| Common extension | `.txt`              | `.dat`                                   |
| Main methods     | `read()`, `write()` | `pickle.dump()`, `pickle.load()`         |
| Reading mode     | `r`                 | `rb`                                     |
| Writing mode     | `w`                 | `wb`                                     |
| Module           | Built-in `open()`   | `pickle` for Python object serialization |

---

# 📚 References

### Text File Handling

[GeeksforGeeks – File Handling in Python](https://www.geeksforgeeks.org/python/file-handling-python/)

### Binary File Handling / Pickle

[GeeksforGeeks – Pickle Module in Python](https://www.geeksforgeeks.org/python/pickle-python-object-serialization/)

### Python Official Documentation

[Python – File Objects](https://docs.python.org/3/tutorial/inputoutput.html)

[Python – Pickle Module](https://docs.python.org/3/library/pickle.html)
