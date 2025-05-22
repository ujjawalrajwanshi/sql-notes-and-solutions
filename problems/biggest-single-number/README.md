## Table: `MyNumbers`

| Column Name | Type | Description                             |
|-------------|------|-----------------------------------------|
| num         | INT  | An integer; may contain duplicate rows. |

- There is no primary key; values in `num` may repeat.

---

## Problem

A **single number** is a value that appears **exactly once** in the `MyNumbers` table.  
Find the **largest** single number. If no such number exists, return `NULL`.

---

## Examples

### Example 1

**Input** — `MyNumbers` table

| num |
| --- |
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

**Output**

| num |
| --- |
| 6   |

**Explanation:**  
The single numbers are `{1, 4, 5, 6}`. The largest is `6`.

---

### Example 2

**Input** — `MyNumbers` table

| num |
| --- |
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

**Output**

| num  |
| ---- |
| NULL |

**Explanation:**  
No number appears exactly once, so the result is `NULL`.

---

## Solution Approach

1. **Group** rows by `num` and **filter** to those with a count of **1**.  
2. **Select** the **maximum** of these single occurrences.  
3. If there are none, the aggregate returns `NULL`.