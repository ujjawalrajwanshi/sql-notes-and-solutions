## Problem: Products with ≥100 Units Ordered in February 2020

### Tables

#### Products
| Column Name      | Type    | Description                                        |
|------------------|---------|----------------------------------------------------|
| `product_id`     | `int`   | Primary key (unique identifier for each product)   |
| `product_name`   | `varchar` | Name of the product                                |
| `product_category` | `varchar` | Category of the product                            |

#### Orders
| Column Name   | Type    | Description                                                       |
|---------------|---------|-------------------------------------------------------------------|
| `product_id`  | `int`   | Foreign key referencing `Products.product_id`                      |
| `order_date`  | `date`  | Date when the order was placed                                    |
| `unit`        | `int`   | Number of units ordered on that date                              |

- The `Orders` table may contain duplicate rows.
- `unit` represents the count of products ordered on a given `order_date`.

---

### Task

Write a SQL query that returns the **names** of products and the **total units** ordered **in February 2020**, **only** for those products where the sum of `unit` in that month is **at least 100**.

Return the result in any order with the following columns:

| Column Name    | Description                                        |
|----------------|----------------------------------------------------|
| `product_name` | Name of the product                                |
| `unit`         | Total units ordered in February 2020 for that product |

---

### Example

**Input**

**Products** table:

| product_id | product_name          | product_category |
|------------|-----------------------|------------------|
| 1          | Leetcode Solutions    | Book             |
| 2          | Jewels of Stringology | Book             |
| 3          | HP                    | Laptop           |
| 4          | Lenovo                | Laptop           |
| 5          | Leetcode Kit          | T-shirt          |

**Orders** table:

| product_id | order_date | unit |
|------------|------------|------|
| 1          | 2020-02-05 | 60   |
| 1          | 2020-02-10 | 70   |
| 2          | 2020-01-18 | 30   |
| 2          | 2020-02-11 | 80   |
| 3          | 2020-02-17 | 2    |
| 3          | 2020-02-24 | 3    |
| 4          | 2020-03-01 | 20   |
| 4          | 2020-03-04 | 30   |
| 4          | 2020-03-04 | 60   |
| 5          | 2020-02-25 | 50   |
| 5          | 2020-02-27 | 50   |
| 5          | 2020-03-01 | 50   |

**Output**

| product_name       | unit |
|--------------------|------|
| Leetcode Solutions | 130  |
| Leetcode Kit       | 100  |

**Explanation**

- Product 1 (“Leetcode Solutions”) has total units in Feb 2020 = 60 + 70 = 130.
- Product 2 (“Jewels of Stringology”) has total units in Feb 2020 = 80 (but less than 100, so excluded).
- Product 3 (“HP”) has total units in Feb 2020 = 2 + 3 = 5 (excluded).
- Product 4 has no orders in Feb 2020 (excluded).
- Product 5 (“Leetcode Kit”) has total units in Feb 2020 = 50 + 50 = 100 (included).
