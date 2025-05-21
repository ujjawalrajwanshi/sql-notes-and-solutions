# Query Quality Metrics

## Table: `Queries`

| Column Name | Type    | Description                                                      |
|-------------|---------|------------------------------------------------------------------|
| query_name  | VARCHAR | Name of the query                                                |
| result      | VARCHAR | Sample result returned by the query (not used in calculations)   |
| position    | INT     | Position of this result (1–500)                                  |
| rating      | INT     | Rating of the query (1–5).  Rating < 3 is considered “poor”.     |

- This table may contain duplicate rows.
- We want to compute metrics **per `query_name`**.

---

## Problem

For each `query_name`, compute:

1. **Quality**:  
   \[
   \text{quality} = \frac{1}{N} \sum_{i=1}^{N} \frac{\text{rating}_i}{\text{position}_i}
   \]  
   where \(N\) is the total number of rows for that query.

2. **Poor query percentage**:  
   \[
   \text{poor\_query\_percentage} = 100 \times \frac{\text{count of rows with rating} < 3}{N}
   \]

- Round both **quality** and **poor_query_percentage** to **2 decimal places**.
- Return one row per `query_name`, in any order.

---

## Example

**Input**  
```sql
-- Queries
query_name | result           | position | rating
---------- | ---------------- | -------- | ------
Dog        | Golden Retriever | 1        | 5
Dog        | German Shepherd  | 2        | 5
Dog        | Mule             | 200      | 1
Cat        | Shirazi          | 5        | 2
Cat        | Siamese          | 3        | 3
Cat        | Sphynx           | 7        | 4


Output: 
+------------+---------+-----------------------+
| query_name | quality | poor_query_percentage |
+------------+---------+-----------------------+
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |
+------------+---------+-----------------------+
Explanation: 
Dog queries quality is ((5 / 1) + (5 / 2) + (1 / 200)) / 3 = 2.50
Dog queries poor_ query_percentage is (1 / 3) * 100 = 33.33

Cat queries quality equals ((2 / 5) + (3 / 3) + (4 / 7)) / 3 = 0.66
Cat queries poor_ query_percentage is (1 / 3) * 100 = 33.33

