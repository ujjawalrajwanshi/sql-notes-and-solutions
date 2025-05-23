## Problem: Nth Highest Salary

Write a solution to find the nth highest **distinct** salary from the `Employee` table. If there are fewer than `n` distinct salaries, return `null`.

---

### Table: `Employee`

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| salary      | int  |

* `id` is the primary key (unique for each row).
* Each row contains an employee's salary information.

---

### Function Signature

```sql
getNthHighestSalary(n INT) RETURNS INT
```

* **Input**: An integer `n`.
* **Output**: The nth highest **distinct** salary, or `null` if it does not exist.

---

## Examples

### Example 1

**Input:**

`Employee` table:

| id | salary |
| -- | ------ |
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

`n = 2`

**Output:**

| getNthHighestSalary(2) |
| ---------------------- |
| 200                    |

---

### Example 2

**Input:**

`Employee` table:

| id | salary |
| -- | ------ |
| 1  | 100    |

`n = 2`

**Output:**

| getNthHighestSalary(2) |
| ---------------------- |
| null                   |

---


