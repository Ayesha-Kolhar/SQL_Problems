/* Retrive total number of pizzas for each category 
Expected output: Category, total Pizzas the output should be sorted by category in asc*/
SELECT
 category,
 COUNT(OD.order_id) as total_pizzas
 FROM PIZZA_TYPES AS PT
 LEFT JOIN PIZZAS P ON 
 PT.pizza_type_id = P.pizza_type_id
 LEFT JOIN ORDER_DETAILS OD ON 
 OD.pizza_id = P.pizza_id
 GROUP BY 1
 ORDER BY 1