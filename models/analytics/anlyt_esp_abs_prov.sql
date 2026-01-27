

WITH get_src_abs_prov AS (
    SELECT * FROM {{ ref('src_abs_prov') }}
)

SELECT
  "año" AS "AÑO",
  provincia,
  abstencionismo
FROM get_src_abs_prov
