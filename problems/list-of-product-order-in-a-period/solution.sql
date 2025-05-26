SELECT product_name,t.unit FROM Products p INNER JOIN 
(SELECT product_id,SUM(unit) as unit FROM Orders WHERE MONTH(order_date) = 2 
    AND YEAR(order_date) = 2020 GROUP BY product_id HAVING SUM(unit)>=100)t 
    WHERE p.product_id = t.product_id;
