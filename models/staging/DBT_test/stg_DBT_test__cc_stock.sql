with 

source as (

    select * from {{ source('DBT_test', 'cc_stock') }}

),

renamed as (

    select
        concat(model,'_',color,'_',size) AS product_id,
        model,
        model_name,
        color,
        color_name,
        size,
        forecast_stock,
        stock,
        price

    from source

)

select * from renamed
