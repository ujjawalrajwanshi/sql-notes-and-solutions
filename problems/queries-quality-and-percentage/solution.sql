SELECT query_name , 

ROUND(SUM(Queries.rating / Queries.position) / COUNT(*) ,2) as quality,

ROUND(SUM(
    CASE 
        WHEN Queries.rating < 3 THEN 1
        ELSE 0 
END) / COUNT(*) *100,2) as poor_query_percentage

 FROM Queries GROUP BY query_name;