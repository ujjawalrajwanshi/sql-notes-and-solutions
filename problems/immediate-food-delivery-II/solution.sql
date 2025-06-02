SELECT 
ROUND((SUM(
    CASE 
        WHEN t.order_date = customer_pref_delivery_date THEN 1
        ELSE 0
    END) / COUNT(*) *100),2) AS immediate_percentage

FROM (SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date ASC) AS order_rank FROM Delivery)t WHERE t.order_rank = 1;