# Average Selling Price

## Table: `Prices`

| Column Name | Type | Description |
|-------------|------|-------------|
| product_id  | INT  | Product identifier |
| start_date  | DATE | Start of the price interval |
| end_date    | DATE | End of the price interval |
| price       | INT  | Price in that interval |

- **Primary Key:** (`product_id`, `start_date`, `end_date`)
- For each product there are no overlapping periods.

## Table: `UnitsSold`

| Column Name   | Type | Description                   |
|---------------|------|-------------------------------|
| product_id    | INT  | Product identifier            |
| purchase_date | DATE | Date of sale                  |
| units         | INT  | Number of units sold that day |

- May contain duplicate rows.
- Each row indicates one sale event.

## Problem

Calculate the **average selling price** for each product, defined as:

> \[
>   \text{average_price} = \frac{\sum(\text{units} \times \text{price at that date})}{\sum(\text{units})}
> \]

- Round `average_price` to **2 decimal places**.
- If a product has **no** sales, its `average_price` = 0.
- Return results in **any** order.

## Example

**Input**  
```sql
-- Prices
product_id | start_date | end_date   | price
---------- | ---------- | ---------- | -----
1          | 2019-02-17 | 2019-02-28 | 5
1          | 2019-03-01 | 2019-03-22 | 20
2          | 2019-02-01 | 2019-02-20 | 15
2          | 2019-02-21 | 2019-03-31 | 30

-- UnitsSold
product_id | purchase_date | units
---------- | ------------- | -----
1          | 2019-02-25    | 100
1          | 2019-03-01    | 15
2          | 2019-02-10    | 200
2          | 2019-03-22    | 30

product_id | average_price
---------- | -------------
1          | 6.96
2          | 16.96


Explanation: 
Average selling price = Total Price of Product / Number of products sold.
Average selling price for product 1 = ((100 * 5) + (15 * 20)) / 115 = 6.96
Average selling price for product 2 = ((200 * 15) + (30 * 30)) / 230 = 16.96
