## Problem: Consecutive Numbers

Given the `Logs` table, find all numbers that appear **at least three times consecutively**.

---

### Table: `Logs`

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| num         | varchar |

* `id` is the primary key and an auto-increment column starting from 1.
* Each row records a log entry with a numeric value stored as a string in `num`.

---

### Output Format

Return a table of all such numbers under the column `ConsecutiveNums`. The order of rows in the result does not matter.

---

## Example

**Input:**

`Logs` table:

| id | num |
| -- | --- |
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

**Output:**

| ConsecutiveNums |
| --------------- |
| 1               |

**Explanation:**

The value `1` appears consecutively at rows with `id` = 1, 2, and 3, which is at least three times in a row. No other number meets this criterion.

---


