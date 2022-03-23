WITH ws_wh AS
(
	SELECT ws_order_number
	FROM web_sales
	GROUP BY ws_order_number
	HAVING COUNT(ws_warehouse_sk) > 1
)
 SELECT  
   COUNT(DISTINCT ws_order_number) AS "order count"
  ,SUM(ws_ext_ship_cost) AS "total shipping cost"
  ,SUM(ws_net_profit) AS "total net profit"
FROM
   web_sales ws1
  ,date_dim
  ,customer_address
  ,web_site
WHERE
    d_date BETWEEN CAST('1999-5-01' AS DATE) AND 
           DATE_ADD(CAST('1999-5-01' AS DATE), INTERVAL 60 DAY)
AND ws1.ws_ship_date_sk = d_date_sk
AND ws1.ws_ship_addr_sk = ca_address_sk
AND ca_state = 'TX'
AND ws1.ws_web_site_sk = web_site_sk
AND web_company_name = 'pri'
AND ws1.ws_order_number IN (SELECT ws_order_number
                            FROM ws_wh)
AND ws1.ws_order_number IN (SELECT wr_order_number
                            FROM web_returns)
LIMIT 100;
