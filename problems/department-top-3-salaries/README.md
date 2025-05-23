## Problem: Top Three Unique Earners by Department

A company's executives want to identify employees who earn within the top three **unique** salaries in each department. An employee is considered a **high earner** if their salary ranks among the first, second, or third highest distinct salaries within their department.

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
* `name` is the department name.

---

### Output Format

Return a table with the following columns:

| Column     | Description                          |
| ---------- | ------------------------------------ |
| Department | Name of the department               |
| Employee   | Name of the high-earning employee(s) |
| Salary     | Salary of the corresponding employee |

Rows can be returned in any order.

---

## Example

**Input:**

`Employee` table:

| id | name  | salary | departmentId |
| -- | ----- | ------ | ------------ |
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |

`Department` table:

| id | name  |
| -- | ----- |
| 1  | IT    |
| 2  | Sales |

**Output:**

| Department | Employee | Salary |
| ---------- | -------- | ------ |
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

**Explanation:**

* **IT** department unique salaries in descending order: 90000, 85000, 70000.

  * Max earns the 1st highest unique salary (90000).
  * Joe and Randy both earn the 2nd highest unique salary (85000).
  * Will earns the 3rd highest unique salary (70000).
* **Sales** department has only two distinct salaries (80000, 60000), so both Henry and Sam qualify as high earners.

---

