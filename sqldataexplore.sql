SELECT GENDER , COUNT(GENDER) AS TOTALCOUNT , COUNT(GENDER) *100.0 / (SELECT COUNT(*) FROM CUSTOMER_DATA) AS PERCENTAGE 
FROM customer_data 
GROUP BY GENDER ;

SELECT CONTRACT , COUNT(CONTRACT) AS TOTALCOUNT , COUNT(CONTRACT) * 100.0/(SELECT COUNT(*) FROM CUSTOMER_DATA) AS PERCENTAGE
FROM CUSTOMER_DATA
GROUP BY CONTRACT;

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from customer_data) * 100  as RevPercentage
from customer_data
Group by Customer_Status;

SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from customer_data)  as Percentage
from customer_data
Group by State
Order by Percentage desc

