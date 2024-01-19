SELECT 
product_id,
sum(quantity) as sum_quantity,
sum(stock) as sum_stock,
avg(price) as mean_price,
sum(quantity)*avg(price) as revenue
FROM
{{ref("int_stock_sales")}}
GROUP BY
product_id