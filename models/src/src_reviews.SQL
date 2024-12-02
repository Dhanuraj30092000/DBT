WITH RAW_REVIEWS 
AS 
(SELECT * 
FROM {{ source('airbnb', 'reviews') }} )
SELECT
LISTING_ID, 
DATE AS Review_Date,
REVIEWER_NAME,
COMMENTS AS Review_Text,
SENTIMENT as Review_sentiments 
  FROM 
      RAW_REVIEWS
