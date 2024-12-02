SELECT
    *
FROM
    {{ ref('dim_listing_cleaned') }}
WHERE minimum_nights < 1
LIMIT 10
