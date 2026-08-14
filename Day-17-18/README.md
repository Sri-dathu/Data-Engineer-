## Pandas

Pandas is a Python library used for **data manipulation, cleaning, transformation, analysis, and processing of structured data**.

---

# 1. Import Pandas

```python
import pandas as pd
```

---

# 2. Read Data

### `read_csv()`

Reads a CSV file and creates a Pandas DataFrame.

```python
df = pd.read_csv("file.csv")
```

---

# 3. DataFrame Inspection

### `head()`

Displays the first rows of the DataFrame.

```python
df.head()
```

### `tail()`

Displays the last rows of the DataFrame.

```python
df.tail()
```

### `shape`

Returns the number of rows and columns.

```python
df.shape
```

### `columns`

Returns the column names.

```python
df.columns
```

### `dtypes`

Returns the data type of each column.

```python
df.dtypes
```

### `info()`

Provides a summary of the DataFrame, including columns, data types, non-null values, and memory usage.

```python
df.info()
```

### `describe()`

Generates statistical summaries for numerical columns.

```python
df.describe()
```

---

# 4. Missing Data Handling

### `isnull()`

Identifies missing values in the DataFrame.

```python
df.isnull()
```

### `isnull().sum()`

Counts missing values in each column.

```python
df.isnull().sum()
```

### `fillna()`

Replaces missing values with specified values.

```python
df.fillna(value)
```

For example:

```python
df['Column'] = df['Column'].fillna(
    df['Column'].median()
)
```

### `dropna()`

Removes rows or columns containing missing values.

```python
df.dropna()
```

Pandas documents `fillna()` as the method for filling NA/NaN values and `dropna()` as the method for removing missing data.

---

# 5. Removing Data

### `drop()`

Removes specified rows or columns.

```python
df.drop(columns=['Column1', 'Column2'])
```

### `drop_duplicates()`

Removes duplicate rows.

```python
df.drop_duplicates()
```

---

# 6. Selecting Data

### Selecting a Column

```python
df['Column']
```

### Selecting Multiple Columns

```python
df[['Column1', 'Column2']]
```

### `loc`

Selects rows and columns using labels.

```python
df.loc[row_condition, ['Column1', 'Column2']]
```

### `iloc`

Selects rows and columns using integer positions.

```python
df.iloc[row_position, column_position]
```

---

# 7. Filtering Data

Filters rows based on conditions.

```python
df[df['Column'] > value]
```

Multiple conditions:

```python
df[
    (df['Column1'] > value) &
    (df['Column2'] == value)
]
```

---

# 8. Data Type Conversion

### `astype()`

Converts a column to a specified data type.

```python
df['Column'] = df['Column'].astype(float)
```

---

# 9. Unique Values

### `unique()`

Returns the unique values in a column.

```python
df['Column'].unique()
```

### `nunique()`

Returns the number of unique values.

```python
df['Column'].nunique()
```

### `value_counts()`

Counts the occurrences of each unique value.

```python
df['Column'].value_counts()
```

---

# 10. Creating New Features

A new feature can be created by adding a new column based on existing data.

```python
df['New_Feature'] = calculation
```

### `apply()`

Applies a function to values in a Series or DataFrame.

```python
df['Column'].apply(function)
```

### `pd.cut()`

Divides numerical values into defined intervals and assigns categories.

```python
df['Category'] = pd.cut(
    df['Column'],
    bins=[...],
    labels=[...]
)
```

---

# 11. Sorting

### `sort_values()`

Sorts rows based on one or more columns.

```python
df.sort_values('Column')
```

Descending order:

```python
df.sort_values('Column', ascending=False)
```

---

# 12. Aggregation Functions

### `sum()`

Returns the total of numeric values.

```python
df['Column'].sum()
```

### `mean()`

Returns the average value.

```python
df['Column'].mean()
```

### `median()`

Returns the middle value.

```python
df['Column'].median()
```

### `min()`

Returns the smallest value.

```python
df['Column'].min()
```

### `max()`

Returns the largest value.

```python
df['Column'].max()
```

### `count()`

Counts non-null values.

```python
df['Column'].count()
```

### `std()`

Returns the standard deviation.

```python
df['Column'].std()
```

### `var()`

Returns the variance.

```python
df['Column'].var()
```

### `agg()`

Applies one or more aggregation functions.

```python
df['Column'].agg(['sum', 'mean', 'min', 'max'])
```

Pandas `agg()` supports one or multiple aggregation operations and can apply different functions to different columns.

---

# 13. Grouping Data

### `groupby()`

Groups rows based on one or more columns so that calculations can be performed on each group.

```python
df.groupby('Column')
```

### `groupby()` with Aggregation

```python
df.groupby('Column')['Numeric_Column'].mean()
```

### `groupby()` with Multiple Aggregations

```python
df.groupby('Column')['Numeric_Column'].agg(
    ['mean', 'min', 'max', 'count']
)
```

Pandas describes `groupby()` as a split-apply-combine operation: data is divided into groups, an operation is applied, and the results are combined.

---

# 14. Export Data

### `to_csv()`

Writes a DataFrame to a CSV file.

```python
df.to_csv('output.csv', index=False)
```

The `index=False` option prevents the DataFrame index from being written as an additional column.

---


# Project Dataset Link

**Kaggle – Student Performance Factors**

https://www.kaggle.com/datasets/lainguyn123/student-performance-factors

---

# References

### Official Pandas Documentation

**Pandas Documentation**

https://pandas.pydata.org/docs/

### Pandas DataFrame Reference

https://pandas.pydata.org/docs/reference/frame.html

### Pandas Input/Output

https://pandas.pydata.org/docs/reference/io.html

### Pandas `read_csv()`

https://pandas.pydata.org/docs/reference/api/pandas.read_csv.html

### Pandas `groupby()`

https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.groupby.html

### Pandas `agg()`

https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.agg.html

### Pandas Missing Data

https://pandas.pydata.org/docs/user_guide/missing_data.html

---


