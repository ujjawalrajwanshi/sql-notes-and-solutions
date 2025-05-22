## Table: `Teacher`

| Column Name | Type | Description                                                                     |
|-------------|------|---------------------------------------------------------------------------------|
| teacher_id  | INT  | Identifier for the teacher                                                      |
| subject_id  | INT  | Identifier for the subject being taught                                         |
| dept_id     | INT  | Identifier for the department in which the subject is taught                    |

- **Primary Key:** (`subject_id`, `dept_id`)  
- Each row indicates that a given `teacher_id` teaches `subject_id` in `dept_id`.

---

## Problem

Compute, for each teacher, the **number of unique subjects** they teach across all departments.

- Return one row per `teacher_id`.
- Column **`cnt`** should be the count of **distinct** `subject_id` values taught by that teacher.
- Results can be returned in any order.

---

## Example

**Input** – `Teacher` table

| teacher_id | subject_id | dept_id |
| ---------- | ---------- | ------- |
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

**Output**

| teacher_id | cnt |
| ---------- | --- |
| 1          | 2   |
| 2          | 4   |

**Explanation**

- **Teacher 1** teaches subjects `{2, 3}` → **2** unique subjects.  
- **Teacher 2** teaches subjects `{1, 2, 3, 4}` → **4** unique subjects.

---