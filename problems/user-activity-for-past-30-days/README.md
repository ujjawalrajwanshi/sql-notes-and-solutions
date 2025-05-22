## Table: `Activity`

| Column Name   | Type    | Description                                          |
| ------------- | ------- | ---------------------------------------------------- |
| user_id       | INT     | Identifier for the user                              |
| session_id    | INT     | Identifier for the user’s session                    |
| activity_date | DATE    | Date when the activity occurred                      |
| activity_type | ENUM    | One of (`open_session`, `end_session`, `scroll_down`, `send_message`) |

- This table may contain duplicate rows.
- Each session belongs to exactly one user.

---

## Problem

Find the **daily active user** count for the 30-day period ending on **2019-07-27** (inclusive).  
- A user is considered “active” on a given day if they have **at least one** activity on that date.  
- Do **not** include days with zero active users.  
- Return two columns:  
  - `day` — the date (`YYYY-MM-DD`)  
  - `active_users` — the count of **distinct** `user_id`s active that day  
- Rows may be returned in any order.

---

## Example

**Input** — `Activity` table

| user_id | session_id | activity_date | activity_type |
| ------- | ---------- | ------------- | ------------- |
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

**Output**

| day        | active_users |
| ---------- | ------------ |
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

---