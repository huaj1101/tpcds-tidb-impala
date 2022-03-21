--
-- adjust the schema name if necessary
-- currently (tpcds_50_parquet)
--

create schema if not exists tpcds_50_parquet;
use tpcds_50_parquet;

--
-- unpartitioned tables
--

create table customer
(
  c_customer_sk             integer,
  c_customer_id             string,
  c_current_cdemo_sk        integer,
  c_current_hdemo_sk        integer,
  c_current_addr_sk         integer,
  c_first_shipto_date_sk    integer,
  c_first_sales_date_sk     integer,
  c_salutation              string,
  c_first_name              string,
  c_last_name               string,
  c_preferred_cust_flag     string,
  c_birth_day               integer,
  c_birth_month             integer,
  c_birth_year              integer,
  c_birth_country           string,
  c_login                   string,
  c_email_address           string,
  c_last_review_date_sk     integer,
  primary key (c_customer_sk)
)
stored as kudu;

create table customer_address
(
  ca_address_sk         integer,
  ca_address_id         string,
  ca_street_number      string,
  ca_street_name        string,
  ca_street_type        string,
  ca_suite_number       string,
  ca_city               string,
  ca_county             string,
  ca_state              string,
  ca_zip                string,
  ca_country            string,
  ca_gmt_offset         decimal(5,2),
  ca_location_type      string,
  primary key (ca_address_sk)
)
stored as kudu;

create table item
(
  i_item_sk         integer,
  i_item_id         string,
  i_rec_start_date  timestamp,
  i_rec_end_date    timestamp,
  i_item_desc       string,
  i_current_price   decimal(7,2),
  i_wholesale_cost  decimal(7,2),
  i_brand_id        integer,
  i_brand           string,
  i_class_id        integer,
  i_class           string,
  i_category_id     integer,
  i_category        string,
  i_manufact_id     integer,
  i_manufact        string,
  i_size            string,
  i_formulation     string,
  i_color           string,
  i_units           string,
  i_container       string,
  i_manager_id      integer,
  i_product_name    string,
  primary key (i_item_sk)
)
stored as kudu;

create table call_center
(
  cc_call_center_sk int,
  cc_call_center_id string,
  cc_rec_start_date timestamp,
  cc_rec_end_date timestamp,
  cc_closed_date_sk int,
  cc_open_date_sk int,
  cc_name string,
  cc_class string,
  cc_employees int,
  cc_sq_ft int,
  cc_hours string,
  cc_manager string,
  cc_mkt_id int,
  cc_mkt_class string,
  cc_mkt_desc string,
  cc_market_manager string,
  cc_division int,
  cc_division_name string,
  cc_company int,
  cc_company_name string,
  cc_street_number string,
  cc_street_name string,
  cc_street_type string,
  cc_suite_number string,
  cc_city string,
  cc_county string,
  cc_state string,
  cc_zip string,
  cc_country string,
  cc_gmt_offset decimal(5,2),
  cc_tax_percentage decimal(5,2),
  primary key (cc_call_center_sk)
)
stored as kudu;

create table catalog_page
(
  cp_catalog_page_sk int,
  cp_catalog_page_id string,
  cp_start_date_sk int,
  cp_end_date_sk int,
  cp_department string,
  cp_catalog_number int,
  cp_catalog_page_number int,
  cp_description string,
  cp_type string,
  primary key (cp_catalog_page_sk)
)
stored as kudu;

create table customer_demographics
(
  cd_demo_sk int,
  cd_gender string,
  cd_marital_status string,
  cd_education_status string,
  cd_purchase_estimate int,
  cd_credit_rating string,
  cd_dep_count int,
  cd_dep_employed_count int,
  cd_dep_college_count int,
  primary key (cd_demo_sk)
)
stored as kudu;

create table date_dim
(
  d_date_sk int,
  d_date_id string,
  d_date timestamp,
  d_month_seq int,
  d_week_seq int,
  d_quarter_seq int,
  d_year int,
  d_dow int,
  d_moy int,
  d_dom int,
  d_qoy int,
  d_fy_year int,
  d_fy_quarter_seq int,
  d_fy_week_seq int,
  d_day_name string,
  d_quarter_name string,
  d_holiday string,
  d_weekend string,
  d_following_holiday string,
  d_first_dom int,
  d_last_dom int,
  d_same_day_ly int,
  d_same_day_lq int,
  d_current_day string,
  d_current_week string,
  d_current_month string,
  d_current_quarter string,
  d_current_year string,
  primary key (d_date_sk)
)
stored as kudu;

create table household_demographics
(
  hd_demo_sk int,
  hd_income_band_sk int,
  hd_buy_potential string,
  hd_dep_count int,
  hd_vehicle_count int,
  primary key (hd_demo_sk)
)
stored as kudu;

create table income_band
(
  ib_income_band_sk int,
  ib_lower_bound int,
  ib_upper_bound int,
  primary key (ib_income_band_sk)
)
stored as kudu;

create table promotion
(
  p_promo_sk int,
  p_promo_id string,
  p_start_date_sk int,
  p_end_date_sk int,
  p_item_sk int,
  p_cost decimal(15,2),
  p_response_target int,
  p_promo_name string,
  p_channel_dmail string,
  p_channel_email string,
  p_channel_catalog string,
  p_channel_tv string,
  p_channel_radio string,
  p_channel_press string,
  p_channel_event string,
  p_channel_demo string,
  p_channel_details string,
  p_purpose string,
  p_discount_active string,
  primary key (p_promo_sk)
)
stored as kudu;

create table reason
(
  r_reason_sk int,
  r_reason_id string,
  r_reason_desc string,
  primary key (r_reason_sk)
)
stored as kudu;

create table ship_mode
(
  sm_ship_mode_sk int,
  sm_ship_mode_id string,
  sm_type string,
  sm_code string,
  sm_carrier string,
  sm_contract string,
  primary key (sm_ship_mode_sk)
)
stored as kudu;

create table store
(
  s_store_sk int,
  s_store_id string,
  s_rec_start_date timestamp,
  s_rec_end_date timestamp,
  s_closed_date_sk int,
  s_store_name string,
  s_number_employees int,
  s_floor_space int,
  s_hours string,
  s_manager string,
  s_market_id int,
  s_geography_class string,
  s_market_desc string,
  s_market_manager string,
  s_division_id int,
  s_division_name string,
  s_company_id int,
  s_company_name string,
  s_street_number string,
  s_street_name string,
  s_street_type string,
  s_suite_number string,
  s_city string,
  s_county string,
  s_state string,
  s_zip string,
  s_country string,
  s_gmt_offset decimal(5,2),
  s_tax_precentage decimal(5,2),
  primary key (s_store_sk)
)
stored as kudu;

create table time_dim
(
  t_time_sk int,
  t_time_id string,
  t_time int,
  t_hour int,
  t_minute int,
  t_second int,
  t_am_pm string,
  t_shift string,
  t_sub_shift string,
  t_meal_time string,
  primary key (t_time_sk)
)
stored as kudu;

create table warehouse
(
  w_warehouse_sk int,
  w_warehouse_id string,
  w_warehouse_name string,
  w_warehouse_sq_ft int,
  w_street_number string,
  w_street_name string,
  w_street_type string,
  w_suite_number string,
  w_city string,
  w_county string,
  w_state string,
  w_zip string,
  w_country string,
  w_gmt_offset decimal(5,2),
  primary key (w_warehouse_sk)
)
stored as kudu;

create table web_page
(
  wp_web_page_sk int,
  wp_web_page_id string,
  wp_rec_start_date timestamp,
  wp_rec_end_date timestamp,
  wp_creation_date_sk int,
  wp_access_date_sk int,
  wp_autogen_flag string,
  wp_customer_sk int,
  wp_url string,
  wp_type string,
  wp_char_count int,
  wp_link_count int,
  wp_image_count int,
  wp_max_ad_count int,
  primary key (wp_web_page_sk)
)
stored as kudu;

create table web_site
(
  web_site_sk int,
  web_site_id string,
  web_rec_start_date timestamp,
  web_rec_end_date timestamp,
  web_name string,
  web_open_date_sk int,
  web_close_date_sk int,
  web_class string,
  web_manager string,
  web_mkt_id int,
  web_mkt_class string,
  web_mkt_desc string,
  web_market_manager string,
  web_company_id int,
  web_company_name string,
  web_street_number string,
  web_street_name string,
  web_street_type string,
  web_suite_number string,
  web_city string,
  web_county string,
  web_state string,
  web_zip string,
  web_country string,
  web_gmt_offset decimal(5,2),
  web_tax_percentage decimal(5,2),
  primary key (web_site_sk)
)
stored as kudu;

--
-- partitioned tables
--

create table inventory
(
  inv_item_sk                 integer,
  inv_warehouse_sk            integer,
  inv_quantity_on_hand        integer,
  PRIMARY KEY (inv_item_sk, inv_warehouse_sk) /*T![clustered_index] CLUSTERED */
)
;

create table store_sales
(
  ss_sold_time_sk             integer,
  ss_item_sk                  integer,
  ss_customer_sk              integer,
  ss_cdemo_sk                 integer,
  ss_hdemo_sk                 integer,
  ss_addr_sk                  integer,
  ss_store_sk                 integer,
  ss_promo_sk                 integer,
  ss_ticket_number            bigint,
  ss_quantity                 integer,
  ss_wholesale_cost           decimal(7,2),
  ss_list_price               decimal(7,2),
  ss_sales_price              decimal(7,2),
  ss_ext_discount_amt         decimal(7,2),
  ss_ext_sales_price          decimal(7,2),
  ss_ext_wholesale_cost       decimal(7,2),
  ss_ext_list_price           decimal(7,2),
  ss_ext_tax                  decimal(7,2),
  ss_coupon_amt               decimal(7,2),
  ss_net_paid                 decimal(7,2),
  ss_net_paid_inc_tax         decimal(7,2),
  ss_net_profit               decimal(7,2),
  PRIMARY KEY (ss_sold_time_sk, ss_item_sk, ss_customer_sk, ss_cdemo_sk, ss_hdemo_sk, ss_addr_sk, ss_store_sk, ss_promo_sk) /*T![clustered_index] CLUSTERED */
)
;

create table store_returns
(
  sr_return_time_sk         integer,
  sr_item_sk                integer,
  sr_customer_sk            integer,
  sr_cdemo_sk               integer,
  sr_hdemo_sk               integer,
  sr_addr_sk                integer,
  sr_store_sk               integer,
  sr_reason_sk              integer,
  sr_ticket_number          bigint,
  sr_return_quantity        integer,
  sr_return_amt             decimal(7,2),
  sr_return_tax             decimal(7,2),
  sr_return_amt_inc_tax     decimal(7,2),
  sr_fee                    decimal(7,2),
  sr_return_ship_cost       decimal(7,2),
  sr_refunded_cash          decimal(7,2),
  sr_reversed_charge        decimal(7,2),
  sr_store_credit           decimal(7,2),
  sr_net_loss               decimal(7,2),
  PRIMARY KEY (sr_return_time_sk, sr_item_sk, sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk, sr_store_sk, sr_reason_sk) /*T![clustered_index] CLUSTERED */
)
;

create table catalog_returns
(
  cr_returned_time_sk       integer,
  cr_item_sk                integer,
  cr_refunded_customer_sk   integer,
  cr_refunded_cdemo_sk      integer,
  cr_refunded_hdemo_sk      integer,
  cr_refunded_addr_sk       integer,
  cr_returning_customer_sk  integer,
  cr_returning_cdemo_sk     integer,
  cr_returning_hdemo_sk     integer,
  cr_returning_addr_sk      integer,
  cr_call_center_sk         integer,
  cr_catalog_page_sk        integer,
  cr_ship_mode_sk           integer,
  cr_warehouse_sk           integer,
  cr_reason_sk              integer,
  cr_order_number           bigint,
  cr_return_quantity        integer,
  cr_return_amount          decimal(7,2),
  cr_return_tax             decimal(7,2),
  cr_return_amt_inc_tax     decimal(7,2),
  cr_fee                    decimal(7,2),
  cr_return_ship_cost       decimal(7,2),
  cr_refunded_cash          decimal(7,2),
  cr_reversed_charge        decimal(7,2),
  cr_store_credit           decimal(7,2),
  cr_net_loss               decimal(7,2),
  PRIMARY KEY (cr_returned_time_sk, cr_item_sk, cr_refunded_customer_sk, cr_refunded_cdemo_sk, cr_refunded_hdemo_sk, cr_refunded_addr_sk, cr_returning_customer_sk, cr_returning_cdemo_sk, cr_returning_hdemo_sk, cr_returning_addr_sk, cr_call_center_sk, cr_catalog_page_sk, cr_ship_mode_sk, cr_warehouse_sk, cr_reason_sk) /*T![clustered_index] CLUSTERED */
)
;

create table catalog_sales
(
  cs_sold_time_sk           integer,
  cs_ship_date_sk           integer,
  cs_bill_customer_sk       integer,
  cs_bill_cdemo_sk          integer,
  cs_bill_hdemo_sk          integer,
  cs_bill_addr_sk           integer,
  cs_ship_customer_sk       integer,
  cs_ship_cdemo_sk          integer,
  cs_ship_hdemo_sk          integer,
  cs_ship_addr_sk           integer,
  cs_call_center_sk         integer,
  cs_catalog_page_sk        integer,
  cs_ship_mode_sk           integer,
  cs_warehouse_sk           integer,
  cs_item_sk                integer,
  cs_promo_sk               integer,
  cs_order_number           bigint,
  cs_quantity               integer,
  cs_wholesale_cost         decimal(7,2),
  cs_list_price             decimal(7,2),
  cs_sales_price            decimal(7,2),
  cs_ext_discount_amt       decimal(7,2),
  cs_ext_sales_price        decimal(7,2),
  cs_ext_wholesale_cost     decimal(7,2),
  cs_ext_list_price         decimal(7,2),
  cs_ext_tax                decimal(7,2),
  cs_coupon_amt             decimal(7,2),
  cs_ext_ship_cost          decimal(7,2),
  cs_net_paid               decimal(7,2),
  cs_net_paid_inc_tax       decimal(7,2),
  cs_net_paid_inc_ship      decimal(7,2),
  cs_net_paid_inc_ship_tax  decimal(7,2),
  cs_net_profit             decimal(7,2),
  PRIMARY KEY (cs_sold_time_sk,cs_ship_date_sk,cs_bill_customer_sk,cs_bill_cdemo_sk,cs_bill_hdemo_sk,cs_bill_addr_sk,cs_ship_customer_sk,cs_ship_cdemo_sk,cs_ship_hdemo_sk,cs_ship_addr_sk,cs_call_center_sk,cs_catalog_page_sk,cs_ship_mode_sk,cs_warehouse_sk,cs_item_sk,cs_promo_sk) /*T![clustered_index] CLUSTERED */
)
;

create table web_returns
(
  wr_returned_time_sk       integer,
  wr_item_sk                integer,
  wr_refunded_customer_sk   integer,
  wr_refunded_cdemo_sk      integer,
  wr_refunded_hdemo_sk      integer,
  wr_refunded_addr_sk       integer,
  wr_returning_customer_sk  integer,
  wr_returning_cdemo_sk     integer,
  wr_returning_hdemo_sk     integer,
  wr_returning_addr_sk      integer,
  wr_web_page_sk            integer,
  wr_reason_sk              integer,
  wr_order_number           bigint,
  wr_return_quantity        integer,
  wr_return_amt             decimal(7,2),
  wr_return_tax             decimal(7,2),
  wr_return_amt_inc_tax     decimal(7,2),
  wr_fee                    decimal(7,2),
  wr_return_ship_cost       decimal(7,2),
  wr_refunded_cash          decimal(7,2),
  wr_reversed_charge        decimal(7,2),
  wr_account_credit         decimal(7,2),
  wr_net_loss               decimal(7,2),
  PRIMARY KEY (wr_returned_time_sk,wr_item_sk,wr_refunded_customer_sk,wr_refunded_cdemo_sk,wr_refunded_hdemo_sk,wr_refunded_addr_sk,wr_returning_customer_sk,wr_returning_cdemo_sk,wr_returning_hdemo_sk,wr_returning_addr_sk,wr_web_page_sk,wr_reason_sk) /*T![clustered_index] CLUSTERED */
)
;

create table web_sales
(
  ws_sold_time_sk           integer,
  ws_ship_date_sk           integer,
  ws_item_sk                integer,
  ws_bill_customer_sk       integer,
  ws_bill_cdemo_sk          integer,
  ws_bill_hdemo_sk          integer,
  ws_bill_addr_sk           integer,
  ws_ship_customer_sk       integer,
  ws_ship_cdemo_sk          integer,
  ws_ship_hdemo_sk          integer,
  ws_ship_addr_sk           integer,
  ws_web_page_sk            integer,
  ws_web_site_sk            integer,
  ws_ship_mode_sk           integer,
  ws_warehouse_sk           integer,
  ws_promo_sk               integer,
  ws_order_number           bigint,
  ws_quantity               integer,
  ws_wholesale_cost         decimal(7,2),
  ws_list_price             decimal(7,2),
  ws_sales_price            decimal(7,2),
  ws_ext_discount_amt       decimal(7,2),
  ws_ext_sales_price        decimal(7,2),
  ws_ext_wholesale_cost     decimal(7,2),
  ws_ext_list_price         decimal(7,2),
  ws_ext_tax                decimal(7,2),
  ws_coupon_amt             decimal(7,2),
  ws_ext_ship_cost          decimal(7,2),
  ws_net_paid               decimal(7,2),
  ws_net_paid_inc_tax       decimal(7,2),
  ws_net_paid_inc_ship      decimal(7,2),
  ws_net_paid_inc_ship_tax  decimal(7,2),
  ws_net_profit             decimal(7,2),
  PRIMARY KEY (ws_sold_time_sk,ws_ship_date_sk,ws_item_sk,ws_bill_customer_sk,ws_bill_cdemo_sk,ws_bill_hdemo_sk,ws_bill_addr_sk,ws_ship_customer_sk,ws_ship_cdemo_sk,ws_ship_hdemo_sk,ws_ship_addr_sk,ws_web_page_sk,ws_web_site_sk,ws_ship_mode_sk,ws_warehouse_sk,ws_promo_sk) /*T![clustered_index] CLUSTERED */
)
;
