{{
    config(
        materialized='ephemeral'
    )
}}

with payments as (
    SELECT *
    FROM {{ ref('stg_stripe__payment') }}

)


, successful as (
select *
FROM payments
where status = 'success'
)

select *
from successful