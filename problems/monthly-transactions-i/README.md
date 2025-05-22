## Table: `Transactions`

| Column Name | Type    | Description                                   |
|-------------|---------|-----------------------------------------------|
| id          | INT     | Primary key for each transaction              |
| country     | VARCHAR | Country code where the transaction occurred   |
| state       | ENUM    | Transaction status: `"approved"` or `"declined"` |
| amount      | INT     | Transaction amount                            |
| trans_date  | DATE    | Date of the transaction                       |

---

## Problem

For each **month** and **country**, compute:

1. **`trans_count`**: Total number of transactions  
2. **`trans_total_amount`**: Sum of all transaction amounts  
3. **`approved_count`**: Number of transactions with `state = 'approved'`  
4. **`approved_total_amount`**: Sum of amounts for approved transactions  

Return one row per month-country pair in **any order**.  
- Extract the month in `YYYY-MM` format from `trans_date`.  

---

## Example

**Input** – `Transactions` table

| id  | country | state    | amount | trans_date |
| --- | ------- | -------- | ------ | ---------- |
| 121 | US      | approved | 1000   | 2018-12-18 |
| 122 | US      | declined | 2000   | 2018-12-19 |
| 123 | US      | approved | 2000   | 2019-01-01 |
| 124 | DE      | approved | 2000   | 2019-01-07 |

**Expected Output**

| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
| -------- | ------- | ----------- | -------------- | ------------------ | --------------------- |
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |

---