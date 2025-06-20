
WITH source AS (

SELECT *

FROM {{ source('jaffle_shop', 'orders') }}

),

renamed as (

SELECT
id as order_id,
user_id,
order_date,
status,
_ETL_LOADED_AT
FROM source

)

SELECT *
FROM renamed