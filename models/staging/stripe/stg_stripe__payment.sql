-- source import
WITH 

source AS (

    SELECT *

    FROM raw.stripe.payment
),

--final CTE
renamed AS (
    SELECT
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount,
    created as created_at,
    _batched_at

    FROM source
)

SELECT * FROM renamed