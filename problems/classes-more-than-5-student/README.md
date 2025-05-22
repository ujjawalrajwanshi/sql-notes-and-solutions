## Table: `Courses`

| Column Name | Type    | Description                                  |
|-------------|---------|----------------------------------------------|
| student     | VARCHAR | Name of the student                          |
| class       | VARCHAR | Name of the class the student is enrolled in |

- **Primary Key:** (`student`, `class`)

---

## Problem

Find all **classes** that have **at least five** students enrolled.  
Return one row per qualifying class, in any order.

---

## Example

**Input** — `Courses` table

| student | class     |
| ------- | --------- |
| A       | Math      |
| B       | English   |
| C       | Math      |
| D       | Biology   |
| E       | Math      |
| F       | Computer  |
| G       | Math      |
| H       | Math      |
| I       | Math      |

**Output**

| class |
| ----- |
| Math  |

**Explanation**  
- **Math** has 6 students → meets the ≥ 5 threshold.  
- **English**, **Biology**, and **Computer** each have fewer than five students → excluded.

---