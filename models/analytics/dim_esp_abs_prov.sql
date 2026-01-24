{% set warehouse_name = 'DATA_WH' %}  -- Replace with your actual warehouse name
USE WAREHOUSE {{ warehouse_name }};

WITH src_abs_prov AS (
    SELECT * FROM {{ ref('src_abs_prov') }}
)

SELECT
    "año" AS "año",
    provincia,
    abstencionismo
FROM src_abs_prov
