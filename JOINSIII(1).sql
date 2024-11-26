/* Find all pizza ids for every month where order count is more than 100
    Expected output: month,pizza_id,total_orders the output should be sorted by month and pizza_id in Asecending order */
SELECT
 EXTRACT(MONTH FROM date) as month,
 OD.pizza_id,
 COUNT(O.order_id) as total_orders
 FROM ORDERS O
 LEFT JOIN ORDER_DETAILS OD ON 
 O.order_id = OD.order_id
 LEFT JOIN PIZZAS P ON 
 OD.pizza_id = P.pizza_id
 GROUP BY 1,2
 HAVING COUNT(O.order_id)>100
 ORDER BY 1,2
