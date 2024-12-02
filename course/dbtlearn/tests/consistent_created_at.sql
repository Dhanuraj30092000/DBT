SELECT * FROM {{ ref('dim_listing_cleaned') }} l
INNER JOIN {{ ref('fct_reviews') }} r
USING (listing_id)
WHERE l.created_at >= r.review_date