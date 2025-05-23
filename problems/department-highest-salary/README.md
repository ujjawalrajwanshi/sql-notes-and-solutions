## Problem: Highest Salary by Department

Find the employees who have the **highest salary** in each department.

---

### Tables

#### `Employee`

| Column Name  | Type    |
| ------------ | ------- |
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

* `id` is the primary key (unique for each row).
* `departmentId` is a foreign key referencing `Department.id`.
* Each row contains an employee's ID, name, salary, and department ID.

#### `Department`

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

* `id` is the primary key (unique for each row).
* `name` is the department name (not NULL).

---

### Output Format

Return a table with columns `Department`, `Employee`, and `Salary`, listing each department’s top-earning employee(s). Rows can be in any order.

---

## Example

**Input:**

`Employee` table:

| id | name  | salary | departmentId |
| -- | ----- | ------ | ------------ |
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |

`Department` table:

| id | name  |
| -- | ----- |
| 1  | IT    |
| 2  | Sales |

**Output:**

| Department | Employee | Salary |
| ---------- | -------- | ------ |
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
| IT         | Max      | 90000  |

**Explanation:**

* In the **IT** department, both **Jim** and **Max** have the highest salary (90000).
* In the **Sales** department, **Henry** has the highest salary (80000).

---
