/* Find the order_id with highest order amount 
Expected o/p: order_id, order_amount */
SELECT
 DISTINCT(order_id),
 (price*quantity) as order_amount
 FROM ORDER_DETAILS od 
 JOIN PIZZAS p ON  
 od.pizza_id = p.pizza_id
 ORDER BY 2 Desc
 limit 1
