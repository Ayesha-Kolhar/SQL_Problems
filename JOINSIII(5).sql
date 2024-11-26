/* Find total number of orders placed in every month and pizza name
    Expected output: month, name, total_orders the output should be sorted by month and name in ascending order */
 SELECT
 EXTRACT(MONTH FROM o.date) as month,
 pt.name,
 COUNT(od.pizza_id) as total_orders
 FROM ORDERS o 
 JOIN ORDER_DETAILS od ON 
 o.order_id = od.order_id
 JOIN PIZZAS p ON 
 od.pizza_id = p.pizza_id
 JOIN PIZZA_TYPES pt ON 
 pt.pizza_type_id = p.pizza_type_id
 group by 1,2
 order by 1,2