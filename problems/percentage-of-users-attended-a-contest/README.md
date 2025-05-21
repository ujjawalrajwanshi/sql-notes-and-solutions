# Percentage of Users per Contest

## Tables

### `Users`

| Column Name | Type    | Description                      |
|-------------|---------|----------------------------------|
| user_id     | INT     | Unique identifier for each user  |
| user_name   | VARCHAR | Name of the user                 |

- **Primary Key:** `user_id`

### `Register`

| Column Name | Type | Description                                           |
|-------------|------|-------------------------------------------------------|
| contest_id  | INT  | Identifier for the contest                            |
| user_id     | INT  | Identifier for the user who registered for the contest |

- **Primary Key:** (`contest_id`, `user_id`)  
- `user_id` is a foreign key referencing `Users.user_id`.

---

## Problem

For each contest, compute the percentage of **all users** who have registered for that contest.  
- Round the percentage to **2 decimal places**.  
- Return the result **ordered** by:
  1. `percentage` **descending**  
  2. `contest_id` **ascending** (to break ties)

---

## Example

**Input**  

```sql
-- Users
user_id | user_name
------- | ---------
6       | Alice
2       | Bob
7       | Alex

-- Register
contest_id | user_id
---------- | -------
215        | 6
209        | 2
208        | 2
210        | 6
208        | 6
209        | 7
209        | 6
215        | 7
208        | 7
210        | 2
207        | 2
210        | 7


Output

contest_id	percentage
208	100.00
209	100.00
210	100.00
215	66.67
207	33.33

Explanation

Total users = 3 (Alice, Bob, Alex)

Contests 208, 209, and 210 each have all 3 users registered → 3/3 × 100 = 100.00

Contest 215 has 2 registrants (Alice, Alex) → 2/3 × 100 ≈ 66.67

Contest 207 has 1 registrant (Bob) → 1/3 × 100 ≈ 33.33

We sort by percentage descending, then by contest_id ascending for ties.