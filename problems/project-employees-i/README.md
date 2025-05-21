# Project Employees I

## Tables

### `Project`

| Column Name  | Type | Description                                           |
|--------------|------|-------------------------------------------------------|
| project_id   | INT  | Identifier for the project                            |
| employee_id  | INT  | Identifier for an employee working on that project     |

- **Primary Key:** (`project_id`, `employee_id`)
- `employee_id` is a foreign key referencing `Employee.employee_id`.

### `Employee`

| Column Name       | Type    | Description                 |
|-------------------|---------|-----------------------------|
| employee_id       | INT     | Unique identifier for staff |
| name              | VARCHAR | Employee name               |
| experience_years  | INT     | Years of experience (non-NULL) |

- **Primary Key:** `employee_id`

---

## Problem

For each project, compute the **average experience years** of all employees assigned to it.  
- Round the result to **2 decimal places**.  
- Return the result in any order.

---

## Example

**Input**  

```sql
-- Project
project_id | employee_id
---------- | -----------
1          | 1
1          | 2
1          | 3
2          | 1
2          | 4

-- Employee
employee_id | name   | experience_years
----------- | ------ | ----------------
1           | Khaled | 3
2           | Ali    | 2
3           | John   | 1
4           | Doe    | 2


Output

project_id	average_years
1	2.00
2	2.50

Explanation

Project 1: Employees (3, 2, 1) → average = (3 + 2 + 1) / 3 = 2.00

Project 2: Employees (3, 2) → average = (3 + 2) / 2 = 2.50