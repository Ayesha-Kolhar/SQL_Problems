/* Find all the pizza types that are orderd more than 2000 times Expected o/p: pizza_type_id */
 SELECT
 pizza_type_id
 FROM ORDER_DETAILS od 
 JOIN PIZZAS p ON 
 od.pizza_id = p.pizza_id
 group by 1
 having count(pizza_type_id) > 2000
 order by 1