# Task 2: Data Insertion and Handling Nulls

## Objective
Practice inserting, updating, and deleting data in a SQL database, including handling missing values (NULLs).

## Tools Used
- DB Fiddle / SQLiteStudio

## Deliverables
- `task2-data-insertion.sql`: SQL script with INSERT, UPDATE, and DELETE statements.

## Steps Performed
1. **Insert Rows:** Used `INSERT INTO` to add data, including examples with NULL values.
2. **Update Data:** Used `UPDATE` statements to modify specific rows based on conditions.
3. **Delete Data:** Used `DELETE` statements with `WHERE` conditions to remove unwanted rows.
4. **Handle Nulls:** Inserted NULLs where data is missing or unknown.

## How to Run
1. Open your SQL tool (DB Fiddle, SQLiteStudio, etc.).
2. Load or create the table schema as required.
3. Run the contents of `task2-data-insertion.sql`.

## Example Table Used

```sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    email TEXT
);
```

## Author
[jangalavari](https://github.com/jangalavari)