## Problem: Patients with Type I Diabetes

Given the `Patients` table, find all patients who have **Type I Diabetes**. A Type I Diabetes code always starts with the prefix `DIAB1`.

---

### Table: `Patients`

| Column Name   | Type    |
| ------------- | ------- |
| patient\_id   | int     |
| patient\_name | varchar |
| conditions    | varchar |

* `patient_id` is the primary key (unique for each row).
* `conditions` contains zero or more condition codes, separated by spaces.

---

### Output Format

Return a table with the following columns:

| Column        | Description                         |
| ------------- | ----------------------------------- |
| patient\_id   | ID of the patient                   |
| patient\_name | Name of the patient                 |
| conditions    | All condition codes for the patient |

Rows can be in any order.

---

## Example

**Input:**

`Patients` table:

| patient\_id | patient\_name | conditions   |
| ----------- | ------------- | ------------ |
| 1           | Daniel        | YFEV COUGH   |
| 2           | Alice         |              |
| 3           | Bob           | DIAB100 MYOP |
| 4           | George        | ACNE DIAB100 |
| 5           | Alain         | DIAB201      |

**Output:**

| patient\_id | patient\_name | conditions   |
| ----------- | ------------- | ------------ |
| 3           | Bob           | DIAB100 MYOP |
| 4           | George        | ACNE DIAB100 |

**Explanation:** Both Bob and George have at least one condition code starting with `DIAB1`.

---


```
