select 
product_id,
#date_date,
date_date,
quantity,
stock,
price
from {{ ref("stg_DBT_test__cc_sales") }}
join {{ ref("stg_DBT_test__cc_stock") }} using (product_id)
