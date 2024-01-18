with 

source as (

    select * from {{ source('DBT_test', 'cc_sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        quantity

    from source

)

select * from renamed
