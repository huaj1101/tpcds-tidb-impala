SELECT 
SUM(store_only) store_only, SUM(catalog_only) catalog_only, SUM(store_and_catalog) store_and_catalog
FROM
(
SELECT  SUM(CASE WHEN ssci.customer_sk IS NOT NULL AND csci.customer_sk IS NULL THEN 1 ELSE 0 END) store_only
      ,0 catalog_only
      ,SUM(CASE WHEN ssci.customer_sk IS NOT NULL AND csci.customer_sk IS NOT NULL THEN 1 ELSE 0 END) store_and_catalog
FROM 
(
SELECT ss_customer_sk customer_sk
      ,ss_item_sk item_sk
FROM store_sales,date_dim
WHERE ss_sold_date_sk = d_date_sk
  AND d_month_seq BETWEEN 1212 AND 1212 + 11
GROUP BY ss_customer_sk
        ,ss_item_sk) ssci
         LEFT JOIN 
(
SELECT cs_bill_customer_sk customer_sk
      ,cs_item_sk item_sk
FROM catalog_sales,date_dim
WHERE cs_sold_date_sk = d_date_sk
  AND d_month_seq BETWEEN 1212 AND 1212 + 11
GROUP BY cs_bill_customer_sk
        ,cs_item_sk
) csci
ON (ssci.customer_sk=csci.customer_sk
AND ssci.item_sk = csci.item_sk)

UNION

SELECT  0 store_only
      ,SUM(CASE WHEN ssci.customer_sk IS NULL AND csci.customer_sk IS NOT NULL THEN 1 ELSE 0 END) catalog_only
      ,0 store_and_catalog
FROM 
(
SELECT ss_customer_sk customer_sk
      ,ss_item_sk item_sk
FROM store_sales,date_dim
WHERE ss_sold_date_sk = d_date_sk
  AND d_month_seq BETWEEN 1212 AND 1212 + 11
GROUP BY ss_customer_sk
        ,ss_item_sk) ssci
         RIGHT JOIN 
(
SELECT cs_bill_customer_sk customer_sk
      ,cs_item_sk item_sk
FROM catalog_sales,date_dim
WHERE cs_sold_date_sk = d_date_sk
  AND d_month_seq BETWEEN 1212 AND 1212 + 11
GROUP BY cs_bill_customer_sk
        ,cs_item_sk
) csci
ON (ssci.customer_sk=csci.customer_sk
AND ssci.item_sk = csci.item_sk)
)a


