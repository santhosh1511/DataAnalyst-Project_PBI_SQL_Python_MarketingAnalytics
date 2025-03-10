-- Query to clean whitespace issues in the ReviewText column

SELECT 
    ReviewID,  -- Selects the unique identifier for each review
    CustomerID,  -- Selects the unique identifier for each customer
    ProductID,  -- Selects the unique identifier for each product
    Format(convert(DATE,ReviewDate),'dd.MM.yyyy') AS ReviewDate,  -- Selects the date when the review was written and Converts and formats the date as dd.mm.yyyy
    Rating,  -- Selects the numerical rating given by the customer (e.g., 1 to 5 stars)
    -- Cleans up the ReviewText by replacing double spaces with single spaces to ensure the text is more readable and standardized
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM 
    dbo.customer_reviews;  -- Specifies the source table from which to select the data