SELECT DATE_FORMAT(trans_date, '%Y-%m') AS `month`,country,

COUNT(*) AS trans_count,   #TOTAL COUNT OF TRANSACTIONS

SUM(
    CASE 
    WHEN state = 'approved' THEN 1
    ELSE 0
    END
) AS approved_count ,       #APPROVED TRANSACTIONS COUNT

SUM(amount) AS trans_total_amount,   #TOTAL AMOUNT OF TRANSACTIONS

SUM(
    CASE 
    WHEN state = 'approved' THEN amount
    ELSE 0
    END
) AS approved_total_amount              #APPROVED TRANSACTION AMOUNT  


 FROM Transactions GROUP BY DATE_FORMAT(trans_date, '%Y-%m'),country;
