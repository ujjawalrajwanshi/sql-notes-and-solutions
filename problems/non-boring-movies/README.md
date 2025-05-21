# Non Boring Movies

**Table:** `Cinema`

| Column Name | Type    |
|-------------|---------|
| id          | INT     |  
| movie       | VARCHAR |  
| description | VARCHAR |  
| rating      | FLOAT   |  

- `id` is the primary key.  
- `rating` is a 2-decimal float in the range [0,10].

---

## Problem

Report all movies with an **odd-numbered** `id` and `description` **≠** `"boring"`.  
Return the result **ordered by** `rating` **descending**.

---

## Example

**Input – `Cinema` table**

| id | movie      | description | rating |
| -- | ---------- | ----------- | ------ |
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | Irish      | boring      | 6.2    |
| 4  | Ice song   | fantasy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

**Expected Output**

| id | movie      | description | rating |
| -- | ---------- | ----------- | ------ |
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |


**Explanation**  
IDs 1, 3, 5 are odd—but ID 3 is “boring,” so only 5 and 1 remain, sorted by rating.

