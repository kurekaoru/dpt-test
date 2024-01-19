SELECT
*,
mean_price*sum_quantity as estimated_revenue FROM
{{ref("int_stock_sales_by_product")}}
ORDER BY 
estimated_revenue desc