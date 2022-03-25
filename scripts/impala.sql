/*tables stored as textfile*/

create schema if not exists tpcds_50_text;
use tpcds_50_text;

create external table call_center (
  cc_call_center_sk int,
  cc_call_center_id varchar(16),
  cc_rec_start_date timestamp,
  cc_rec_end_date timestamp,
  cc_closed_date_sk int,
  cc_open_date_sk int,
  cc_name varchar(50),
  cc_class varchar(50),
  cc_employees int,
  cc_sq_ft int,
  cc_hours varchar(20),
  cc_manager varchar(40),
  cc_mkt_id int,
  cc_mkt_class varchar(50),
  cc_mkt_desc varchar(100),
  cc_market_manager varchar(40),
  cc_division int,
  cc_division_name varchar(50),
  cc_company int,
  cc_company_name varchar(50),
  cc_street_number varchar(10),
  cc_street_name varchar(60),
  cc_street_type varchar(15),
  cc_suite_number varchar(10),
  cc_city varchar(60),
  cc_county varchar(30),
  cc_state varchar(2),
  cc_zip varchar(10),
  cc_country varchar(20),
  cc_gmt_offset decimal(5,2),
  cc_tax_percentage decimal(5,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table catalog_page (
  cp_catalog_page_sk int,
  cp_catalog_page_id varchar(16),
  cp_start_date_sk int,
  cp_end_date_sk int,
  cp_department varchar(50),
  cp_catalog_number int,
  cp_catalog_page_number int,
  cp_description varchar(100),
  cp_type varchar(100)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table catalog_returns (
  cr_returned_date_sk int,
  cr_returned_time_sk int,
  cr_item_sk int,
  cr_refunded_customer_sk int,
  cr_refunded_cdemo_sk int,
  cr_refunded_hdemo_sk int,
  cr_refunded_addr_sk int,
  cr_returning_customer_sk int,
  cr_returning_cdemo_sk int,
  cr_returning_hdemo_sk int,
  cr_returning_addr_sk int,
  cr_call_center_sk int,
  cr_catalog_page_sk int,
  cr_ship_mode_sk int,
  cr_warehouse_sk int,
  cr_reason_sk int,
  cr_order_number bigint,
  cr_return_quantity int,
  cr_return_amount decimal(7,2),
  cr_return_tax decimal(7,2),
  cr_return_amt_inc_tax decimal(7,2),
  cr_fee decimal(7,2),
  cr_return_ship_cost decimal(7,2),
  cr_refunded_cash decimal(7,2),
  cr_reversed_charge decimal(7,2),
  cr_store_credit decimal(7,2),
  cr_net_loss decimal(7,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table catalog_sales (
  cs_sold_date_sk int,
  cs_sold_time_sk int,
  cs_ship_date_sk int,
  cs_bill_customer_sk int,
  cs_bill_cdemo_sk int,
  cs_bill_hdemo_sk int,
  cs_bill_addr_sk int,
  cs_ship_customer_sk int,
  cs_ship_cdemo_sk int,
  cs_ship_hdemo_sk int,
  cs_ship_addr_sk int,
  cs_call_center_sk int,
  cs_catalog_page_sk int,
  cs_ship_mode_sk int,
  cs_warehouse_sk int,
  cs_item_sk int,
  cs_promo_sk int,
  cs_order_number bigint,
  cs_quantity int,
  cs_wholesale_cost decimal(7,2),
  cs_list_price decimal(7,2),
  cs_sales_price decimal(7,2),
  cs_ext_discount_amt decimal(7,2),
  cs_ext_sales_price decimal(7,2),
  cs_ext_wholesale_cost decimal(7,2),
  cs_ext_list_price decimal(7,2),
  cs_ext_tax decimal(7,2),
  cs_coupon_amt decimal(7,2),
  cs_ext_ship_cost decimal(7,2),
  cs_net_paid decimal(7,2),
  cs_net_paid_inc_tax decimal(7,2),
  cs_net_paid_inc_ship decimal(7,2),
  cs_net_paid_inc_ship_tax decimal(7,2),
  cs_net_profit decimal(7,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table customer (
  c_customer_sk int,
  c_customer_id varchar(16),
  c_current_cdemo_sk int,
  c_current_hdemo_sk int,
  c_current_addr_sk int,
  c_first_shipto_date_sk int,
  c_first_sales_date_sk int,
  c_salutation varchar(10),
  c_first_name varchar(20),
  c_last_name varchar(30),
  c_preferred_cust_flag varchar(1),
  c_birth_day int,
  c_birth_month int,
  c_birth_year int,
  c_birth_country varchar(20),
  c_login varchar(13),
  c_email_address varchar(50),
  c_last_review_date_sk int
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table customer_address (
  ca_address_sk int,
  ca_address_id varchar(16),
  ca_street_number varchar(10),
  ca_street_name varchar(60),
  ca_street_type varchar(15),
  ca_suite_number varchar(10),
  ca_city varchar(60),
  ca_county varchar(30),
  ca_state varchar(2),
  ca_zip varchar(10),
  ca_country varchar(20),
  ca_gmt_offset decimal(5,2),
  ca_location_type varchar(20)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table customer_demographics (
  cd_demo_sk int,
  cd_gender varchar(1),
  cd_marital_status varchar(1),
  cd_education_status varchar(20),
  cd_purchase_estimate int,
  cd_credit_rating varchar(10),
  cd_dep_count int,
  cd_dep_employed_count int,
  cd_dep_college_count int
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table date_dim (
  d_date_sk int,
  d_date_id varchar(16),
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
  d_day_name varchar(9),
  d_quarter_name varchar(6),
  d_holiday varchar(1),
  d_weekend varchar(1),
  d_following_holiday varchar(1),
  d_first_dom int,
  d_last_dom int,
  d_same_day_ly int,
  d_same_day_lq int,
  d_current_day varchar(1),
  d_current_week varchar(1),
  d_current_month varchar(1),
  d_current_quarter varchar(1),
  d_current_year varchar(1)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table household_demographics (
  hd_demo_sk int,
  hd_income_band_sk int,
  hd_buy_potential varchar(15),
  hd_dep_count int,
  hd_vehicle_count int
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table income_band (
  ib_income_band_sk int,
  ib_lower_bound int,
  ib_upper_bound int
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table inventory (
  inv_date_sk int,
  inv_item_sk int,
  inv_warehouse_sk int,
  inv_quantity_on_hand int
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table item (
  i_item_sk int,
  i_item_id varchar(16),
  i_rec_start_date timestamp,
  i_rec_end_date timestamp,
  i_item_desc varchar(200),
  i_current_price decimal(7,2),
  i_wholesale_cost decimal(7,2),
  i_brand_id int,
  i_brand varchar(50),
  i_class_id int,
  i_class varchar(50),
  i_category_id int,
  i_category varchar(50),
  i_manufact_id int,
  i_manufact varchar(50),
  i_size varchar(20),
  i_formulation varchar(20),
  i_color varchar(20),
  i_units varchar(10),
  i_container varchar(10),
  i_manager_id int,
  i_product_name varchar(50)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table promotion (
  p_promo_sk int,
  p_promo_id varchar(16),
  p_start_date_sk int,
  p_end_date_sk int,
  p_item_sk int,
  p_cost decimal(15,2),
  p_response_target int,
  p_promo_name varchar(50),
  p_channel_dmail varchar(1),
  p_channel_email varchar(1),
  p_channel_catalog varchar(1),
  p_channel_tv varchar(1),
  p_channel_radio varchar(1),
  p_channel_press varchar(1),
  p_channel_event varchar(1),
  p_channel_demo varchar(1),
  p_channel_details varchar(100),
  p_purpose varchar(15),
  p_discount_active varchar(1)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table reason (
  r_reason_sk int,
  r_reason_id varchar(16),
  r_reason_desc varchar(100)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table ship_mode (
  sm_ship_mode_sk int,
  sm_ship_mode_id varchar(16),
  sm_type varchar(30),
  sm_code varchar(10),
  sm_carrier varchar(20),
  sm_contract varchar(20)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table store (
  s_store_sk int,
  s_store_id varchar(16),
  s_rec_start_date timestamp,
  s_rec_end_date timestamp,
  s_closed_date_sk int,
  s_store_name varchar(50),
  s_number_employees int,
  s_floor_space int,
  s_hours varchar(20),
  s_manager varchar(40),
  s_market_id int,
  s_geography_class varchar(100),
  s_market_desc varchar(100),
  s_market_manager varchar(40),
  s_division_id int,
  s_division_name varchar(50),
  s_company_id int,
  s_company_name varchar(50),
  s_street_number varchar(10),
  s_street_name varchar(60),
  s_street_type varchar(15),
  s_suite_number varchar(10),
  s_city varchar(60),
  s_county varchar(30),
  s_state varchar(2),
  s_zip varchar(10),
  s_country varchar(20),
  s_gmt_offset decimal(5,2),
  s_tax_precentage decimal(5,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table store_returns (
  sr_returned_date_sk int,
  sr_return_time_sk int,
  sr_item_sk int,
  sr_customer_sk int,
  sr_cdemo_sk int,
  sr_hdemo_sk int,
  sr_addr_sk int,
  sr_store_sk int,
  sr_reason_sk int,
  sr_ticket_number bigint,
  sr_return_quantity int,
  sr_return_amt decimal(7,2),
  sr_return_tax decimal(7,2),
  sr_return_amt_inc_tax decimal(7,2),
  sr_fee decimal(7,2),
  sr_return_ship_cost decimal(7,2),
  sr_refunded_cash decimal(7,2),
  sr_reversed_charge decimal(7,2),
  sr_store_credit decimal(7,2),
  sr_net_loss decimal(7,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table store_sales (
  ss_sold_date_sk int,
  ss_sold_time_sk int,
  ss_item_sk int,
  ss_customer_sk int,
  ss_cdemo_sk int,
  ss_hdemo_sk int,
  ss_addr_sk int,
  ss_store_sk int,
  ss_promo_sk int,
  ss_ticket_number bigint,
  ss_quantity int,
  ss_wholesale_cost decimal(7,2),
  ss_list_price decimal(7,2),
  ss_sales_price decimal(7,2),
  ss_ext_discount_amt decimal(7,2),
  ss_ext_sales_price decimal(7,2),
  ss_ext_wholesale_cost decimal(7,2),
  ss_ext_list_price decimal(7,2),
  ss_ext_tax decimal(7,2),
  ss_coupon_amt decimal(7,2),
  ss_net_paid decimal(7,2),
  ss_net_paid_inc_tax decimal(7,2),
  ss_net_profit decimal(7,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table time_dim (
  t_time_sk int,
  t_time_id varchar(16),
  t_time int,
  t_hour int,
  t_minute int,
  t_second int,
  t_am_pm varchar(2),
  t_shift varchar(20),
  t_sub_shift varchar(20),
  t_meal_time varchar(20)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table warehouse (
  w_warehouse_sk int,
  w_warehouse_id varchar(16),
  w_warehouse_name varchar(20),
  w_warehouse_sq_ft int,
  w_street_number varchar(10),
  w_street_name varchar(60),
  w_street_type varchar(15),
  w_suite_number varchar(10),
  w_city varchar(60),
  w_county varchar(30),
  w_state varchar(2),
  w_zip varchar(10),
  w_country varchar(20),
  w_gmt_offset decimal(5,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table web_page (
  wp_web_page_sk int,
  wp_web_page_id varchar(16),
  wp_rec_start_date timestamp,
  wp_rec_end_date timestamp,
  wp_creation_date_sk int,
  wp_access_date_sk int,
  wp_autogen_flag varchar(1),
  wp_customer_sk int,
  wp_url varchar(100),
  wp_type varchar(50),
  wp_char_count int,
  wp_link_count int,
  wp_image_count int,
  wp_max_ad_count int
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table web_returns (
  wr_returned_date_sk int,
  wr_returned_time_sk int,
  wr_item_sk int,
  wr_refunded_customer_sk int,
  wr_refunded_cdemo_sk int,
  wr_refunded_hdemo_sk int,
  wr_refunded_addr_sk int,
  wr_returning_customer_sk int,
  wr_returning_cdemo_sk int,
  wr_returning_hdemo_sk int,
  wr_returning_addr_sk int,
  wr_web_page_sk int,
  wr_reason_sk int,
  wr_order_number bigint,
  wr_return_quantity int,
  wr_return_amt decimal(7,2),
  wr_return_tax decimal(7,2),
  wr_return_amt_inc_tax decimal(7,2),
  wr_fee decimal(7,2),
  wr_return_ship_cost decimal(7,2),
  wr_refunded_cash decimal(7,2),
  wr_reversed_charge decimal(7,2),
  wr_account_credit decimal(7,2),
  wr_net_loss decimal(7,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table web_sales (
  ws_sold_date_sk int,
  ws_sold_time_sk int,
  ws_ship_date_sk int,
  ws_item_sk int,
  ws_bill_customer_sk int,
  ws_bill_cdemo_sk int,
  ws_bill_hdemo_sk int,
  ws_bill_addr_sk int,
  ws_ship_customer_sk int,
  ws_ship_cdemo_sk int,
  ws_ship_hdemo_sk int,
  ws_ship_addr_sk int,
  ws_web_page_sk int,
  ws_web_site_sk int,
  ws_ship_mode_sk int,
  ws_warehouse_sk int,
  ws_promo_sk int,
  ws_order_number bigint,
  ws_quantity int,
  ws_wholesale_cost decimal(7,2),
  ws_list_price decimal(7,2),
  ws_sales_price decimal(7,2),
  ws_ext_discount_amt decimal(7,2),
  ws_ext_sales_price decimal(7,2),
  ws_ext_wholesale_cost decimal(7,2),
  ws_ext_list_price decimal(7,2),
  ws_ext_tax decimal(7,2),
  ws_coupon_amt decimal(7,2),
  ws_ext_ship_cost decimal(7,2),
  ws_net_paid decimal(7,2),
  ws_net_paid_inc_tax decimal(7,2),
  ws_net_paid_inc_ship decimal(7,2),
  ws_net_paid_inc_ship_tax decimal(7,2),
  ws_net_profit decimal(7,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

create external table web_site (
  web_site_sk int,
  web_site_id varchar(16),
  web_rec_start_date timestamp,
  web_rec_end_date timestamp,
  web_name varchar(50),
  web_open_date_sk int,
  web_close_date_sk int,
  web_class varchar(50),
  web_manager varchar(40),
  web_mkt_id int,
  web_mkt_class varchar(50),
  web_mkt_desc varchar(100),
  web_market_manager varchar(40),
  web_company_id int,
  web_company_name varchar(50),
  web_street_number varchar(10),
  web_street_name varchar(60),
  web_street_type varchar(15),
  web_suite_number varchar(10),
  web_city varchar(60),
  web_county varchar(30),
  web_state varchar(2),
  web_zip varchar(10),
  web_country varchar(20),
  web_gmt_offset decimal(5,2),
  web_tax_percentage decimal(5,2)
)
row format delimited fields terminated by '|'
stored as textfile
tblproperties ('serialization.null.format'='')
;

-- copy the csv data into hdfs folders, like /user/hive/warehouse/tpcds_50_text.db/table_name

/*tables stored as textfile*/

create schema if not exists tpcds_50_parquet;
use tpcds_50_parquet;

--
-- unpartitioned tables
--

create table customer
(
  c_customer_sk             integer,
  c_customer_id             varchar(16),
  c_current_cdemo_sk        integer,
  c_current_hdemo_sk        integer,
  c_current_addr_sk         integer,
  c_first_shipto_date_sk    integer,
  c_first_sales_date_sk     integer,
  c_salutation              varchar(10),
  c_first_name              varchar(20),
  c_last_name               varchar(30),
  c_preferred_cust_flag     varchar(1),
  c_birth_day               integer,
  c_birth_month             integer,
  c_birth_year              integer,
  c_birth_country           varchar(20),
  c_login                   varchar(13),
  c_email_address           varchar(50),
  c_last_review_date_sk     integer
)
stored as parquet;

create table customer_address
(
  ca_address_sk         integer,
  ca_address_id         varchar(16),
  ca_street_number      varchar(10),
  ca_street_name        varchar(60),
  ca_street_type        varchar(15),
  ca_suite_number       varchar(10),
  ca_city               varchar(60),
  ca_county             varchar(30),
  ca_state              varchar(2),
  ca_zip                varchar(10),
  ca_country            varchar(20),
  ca_gmt_offset         decimal(5,2),
  ca_location_type      varchar(20)
)
stored as parquet;

create table item
(
  i_item_sk         integer,
  i_item_id         varchar(16),
  i_rec_start_date  timestamp,
  i_rec_end_date    timestamp,
  i_item_desc       varchar(200),
  i_current_price   decimal(7,2),
  i_wholesale_cost  decimal(7,2),
  i_brand_id        integer,
  i_brand           varchar(50),
  i_class_id        integer,
  i_class           varchar(50),
  i_category_id     integer,
  i_category        varchar(50),
  i_manufact_id     integer,
  i_manufact        varchar(50),
  i_size            varchar(20),
  i_formulation     varchar(20),
  i_color           varchar(20),
  i_units           varchar(10),
  i_container       varchar(10),
  i_manager_id      integer,
  i_product_name    varchar(50)
)
stored as parquet;

create table call_center
(
  cc_call_center_sk int,
  cc_call_center_id varchar(16),
  cc_rec_start_date timestamp,
  cc_rec_end_date timestamp,
  cc_closed_date_sk int,
  cc_open_date_sk int,
  cc_name varchar(50),
  cc_class varchar(50),
  cc_employees int,
  cc_sq_ft int,
  cc_hours varchar(20),
  cc_manager varchar(40),
  cc_mkt_id int,
  cc_mkt_class varchar(50),
  cc_mkt_desc varchar(100),
  cc_market_manager varchar(40),
  cc_division int,
  cc_division_name varchar(50),
  cc_company int,
  cc_company_name varchar(50),
  cc_street_number varchar(10),
  cc_street_name varchar(60),
  cc_street_type varchar(15),
  cc_suite_number varchar(10),
  cc_city varchar(60),
  cc_county varchar(30),
  cc_state varchar(2),
  cc_zip varchar(10),
  cc_country varchar(20),
  cc_gmt_offset decimal(5,2),
  cc_tax_percentage decimal(5,2)
)
stored as parquet;

create table catalog_page
(
  cp_catalog_page_sk int,
  cp_catalog_page_id varchar(16),
  cp_start_date_sk int,
  cp_end_date_sk int,
  cp_department varchar(50),
  cp_catalog_number int,
  cp_catalog_page_number int,
  cp_description varchar(100),
  cp_type varchar(100)
)
stored as parquet;

create table customer_demographics
(
  cd_demo_sk int,
  cd_gender varchar(1),
  cd_marital_status varchar(1),
  cd_education_status varchar(20),
  cd_purchase_estimate int,
  cd_credit_rating varchar(10),
  cd_dep_count int,
  cd_dep_employed_count int,
  cd_dep_college_count int
)
stored as parquet;

create table date_dim
(
  d_date_sk int,
  d_date_id varchar(16),
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
  d_day_name varchar(9),
  d_quarter_name varchar(6),
  d_holiday varchar(1),
  d_weekend varchar(1),
  d_following_holiday varchar(1),
  d_first_dom int,
  d_last_dom int,
  d_same_day_ly int,
  d_same_day_lq int,
  d_current_day varchar(1),
  d_current_week varchar(1),
  d_current_month varchar(1),
  d_current_quarter varchar(1),
  d_current_year varchar(1)
)
stored as parquet;

create table household_demographics
(
  hd_demo_sk int,
  hd_income_band_sk int,
  hd_buy_potential varchar(15),
  hd_dep_count int,
  hd_vehicle_count int
)
stored as parquet;

create table income_band
(
  ib_income_band_sk int,
  ib_lower_bound int,
  ib_upper_bound int
)
stored as parquet;

create table promotion
(
  p_promo_sk int,
  p_promo_id varchar(16),
  p_start_date_sk int,
  p_end_date_sk int,
  p_item_sk int,
  p_cost decimal(15,2),
  p_response_target int,
  p_promo_name varchar(50),
  p_channel_dmail varchar(1),
  p_channel_email varchar(1),
  p_channel_catalog varchar(1),
  p_channel_tv varchar(1),
  p_channel_radio varchar(1),
  p_channel_press varchar(1),
  p_channel_event varchar(1),
  p_channel_demo varchar(1),
  p_channel_details varchar(100),
  p_purpose varchar(15),
  p_discount_active varchar(1)
)
stored as parquet;

create table reason
(
  r_reason_sk int,
  r_reason_id varchar(16),
  r_reason_desc varchar(100)
)
stored as parquet;

create table ship_mode
(
  sm_ship_mode_sk int,
  sm_ship_mode_id varchar(16),
  sm_type varchar(30),
  sm_code varchar(10),
  sm_carrier varchar(20),
  sm_contract varchar(20)
)
stored as parquet;

create table store
(
  s_store_sk int,
  s_store_id varchar(16),
  s_rec_start_date timestamp,
  s_rec_end_date timestamp,
  s_closed_date_sk int,
  s_store_name varchar(50),
  s_number_employees int,
  s_floor_space int,
  s_hours varchar(20),
  s_manager varchar(40),
  s_market_id int,
  s_geography_class varchar(100),
  s_market_desc varchar(100),
  s_market_manager varchar(40),
  s_division_id int,
  s_division_name varchar(50),
  s_company_id int,
  s_company_name varchar(50),
  s_street_number varchar(10),
  s_street_name varchar(60),
  s_street_type varchar(15),
  s_suite_number varchar(10),
  s_city varchar(60),
  s_county varchar(30),
  s_state varchar(2),
  s_zip varchar(10),
  s_country varchar(20),
  s_gmt_offset decimal(5,2),
  s_tax_precentage decimal(5,2)
)
stored as parquet;

create table time_dim
(
  t_time_sk int,
  t_time_id varchar(16),
  t_time int,
  t_hour int,
  t_minute int,
  t_second int,
  t_am_pm varchar(2),
  t_shift varchar(20),
  t_sub_shift varchar(20),
  t_meal_time varchar(20)
)
stored as parquet;

create table warehouse
(
  w_warehouse_sk int,
  w_warehouse_id varchar(16),
  w_warehouse_name varchar(20),
  w_warehouse_sq_ft int,
  w_street_number varchar(10),
  w_street_name varchar(60),
  w_street_type varchar(15),
  w_suite_number varchar(10),
  w_city varchar(60),
  w_county varchar(30),
  w_state varchar(2),
  w_zip varchar(10),
  w_country varchar(20),
  w_gmt_offset decimal(5,2)
)
stored as parquet;

create table web_page
(
  wp_web_page_sk int,
  wp_web_page_id varchar(16),
  wp_rec_start_date timestamp,
  wp_rec_end_date timestamp,
  wp_creation_date_sk int,
  wp_access_date_sk int,
  wp_autogen_flag varchar(1),
  wp_customer_sk int,
  wp_url varchar(100),
  wp_type varchar(50),
  wp_char_count int,
  wp_link_count int,
  wp_image_count int,
  wp_max_ad_count int
)
stored as parquet;

create table web_site
(
  web_site_sk int,
  web_site_id varchar(16),
  web_rec_start_date timestamp,
  web_rec_end_date timestamp,
  web_name varchar(50),
  web_open_date_sk int,
  web_close_date_sk int,
  web_class varchar(50),
  web_manager varchar(40),
  web_mkt_id int,
  web_mkt_class varchar(50),
  web_mkt_desc varchar(100),
  web_market_manager varchar(40),
  web_company_id int,
  web_company_name varchar(50),
  web_street_number varchar(10),
  web_street_name varchar(60),
  web_street_type varchar(15),
  web_suite_number varchar(10),
  web_city varchar(60),
  web_county varchar(30),
  web_state varchar(2),
  web_zip varchar(10),
  web_country varchar(20),
  web_gmt_offset decimal(5,2),
  web_tax_percentage decimal(5,2)
)
stored as parquet;

--
-- partitioned tables
--

create table inventory
(
  inv_item_sk                 integer,
  inv_warehouse_sk            integer,
  inv_quantity_on_hand        integer
)
partitioned by (inv_date_sk integer)
stored as parquet;

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
  ss_net_profit               decimal(7,2)
)
partitioned by (ss_sold_date_sk integer)
stored as parquet;

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
  sr_net_loss               decimal(7,2)
)
partitioned by (sr_returned_date_sk integer)
stored as parquet;

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
  cr_net_loss               decimal(7,2)
)
partitioned by (cr_returned_date_sk integer)
stored as parquet;

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
  cs_net_profit             decimal(7,2)
)
partitioned by (cs_sold_date_sk integer)
stored as parquet;

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
  wr_net_loss               decimal(7,2)
)
partitioned by (wr_returned_date_sk integer)
stored as parquet;

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
  ws_net_profit             decimal(7,2)
)
partitioned by (ws_sold_date_sk integer)
stored as parquet;

/*copy data from text to parquet tables*/

use tpcds_50_parquet;
set SORT_RUN_BYTES_LIMIT=512mb;

insert overwrite table call_center            select * from tpcds_50_text.call_center;
insert overwrite table catalog_page           select * from tpcds_50_text.catalog_page;
insert overwrite table customer               select * from tpcds_50_text.customer;
insert overwrite table customer_address       select * from tpcds_50_text.customer_address;
insert overwrite table customer_demographics  select * from tpcds_50_text.customer_demographics;
insert overwrite table date_dim               select * from tpcds_50_text.date_dim;
insert overwrite table household_demographics select * from tpcds_50_text.household_demographics;
insert overwrite table income_band            select * from tpcds_50_text.income_band;
insert overwrite table item                   select * from tpcds_50_text.item;
insert overwrite table promotion              select * from tpcds_50_text.promotion;
insert overwrite table reason                 select * from tpcds_50_text.reason;
insert overwrite table ship_mode              select * from tpcds_50_text.ship_mode;
insert overwrite table store                  select * from tpcds_50_text.store;
insert overwrite table time_dim               select * from tpcds_50_text.time_dim;
insert overwrite table warehouse              select * from tpcds_50_text.warehouse;
insert overwrite table web_page               select * from tpcds_50_text.web_page;
insert overwrite table web_site               select * from tpcds_50_text.web_site;


insert overwrite table inventory
  partition(inv_date_sk) /*+ clustered,shuffle */
select inv_item_sk,
       inv_warehouse_sk,
       inv_quantity_on_hand,
       inv_date_sk
from tpcds_50_text.inventory;

insert overwrite table catalog_sales
  partition(cs_sold_date_sk) /*+ clustered,shuffle */
select cs_sold_time_sk,
       cs_ship_date_sk,
       cs_bill_customer_sk,
       cs_bill_cdemo_sk,
       cs_bill_hdemo_sk,
       cs_bill_addr_sk,
       cs_ship_customer_sk,
       cs_ship_cdemo_sk,
       cs_ship_hdemo_sk,
       cs_ship_addr_sk,
       cs_call_center_sk,
       cs_catalog_page_sk,
       cs_ship_mode_sk,
       cs_warehouse_sk,
       cs_item_sk,
       cs_promo_sk,
       cs_order_number,
       cs_quantity,
       cs_wholesale_cost,
       cs_list_price,
       cs_sales_price,
       cs_ext_discount_amt,
       cs_ext_sales_price,
       cs_ext_wholesale_cost,
       cs_ext_list_price,
       cs_ext_tax,
       cs_coupon_amt,
       cs_ext_ship_cost,
       cs_net_paid,
       cs_net_paid_inc_tax,
       cs_net_paid_inc_ship,
       cs_net_paid_inc_ship_tax,
       cs_net_profit,
       cs_sold_date_sk
from tpcds_50_text.catalog_sales
where cs_sold_date_sk is not null;

insert overwrite table catalog_sales
  partition(cs_sold_date_sk) /*+ noshuffle */
select cs_sold_time_sk,
       cs_ship_date_sk,
       cs_bill_customer_sk,
       cs_bill_cdemo_sk,
       cs_bill_hdemo_sk,
       cs_bill_addr_sk,
       cs_ship_customer_sk,
       cs_ship_cdemo_sk,
       cs_ship_hdemo_sk,
       cs_ship_addr_sk,
       cs_call_center_sk,
       cs_catalog_page_sk,
       cs_ship_mode_sk,
       cs_warehouse_sk,
       cs_item_sk,
       cs_promo_sk,
       cs_order_number,
       cs_quantity,
       cs_wholesale_cost,
       cs_list_price,
       cs_sales_price,
       cs_ext_discount_amt,
       cs_ext_sales_price,
       cs_ext_wholesale_cost,
       cs_ext_list_price,
       cs_ext_tax,
       cs_coupon_amt,
       cs_ext_ship_cost,
       cs_net_paid,
       cs_net_paid_inc_tax,
       cs_net_paid_inc_ship,
       cs_net_paid_inc_ship_tax,
       cs_net_profit,
       cs_sold_date_sk
from tpcds_50_text.catalog_sales
where cs_sold_date_sk is null;

insert overwrite table catalog_returns
  partition(cr_returned_date_sk) /*+ clustered,shuffle */
select cr_returned_time_sk,
       cr_item_sk,
       cr_refunded_customer_sk,
       cr_refunded_cdemo_sk,
       cr_refunded_hdemo_sk,
       cr_refunded_addr_sk,
       cr_returning_customer_sk,
       cr_returning_cdemo_sk,
       cr_returning_hdemo_sk,
       cr_returning_addr_sk,
       cr_call_center_sk,
       cr_catalog_page_sk,
       cr_ship_mode_sk,
       cr_warehouse_sk,
       cr_reason_sk,
       cr_order_number,
       cr_return_quantity,
       cr_return_amount,
       cr_return_tax,
       cr_return_amt_inc_tax,
       cr_fee,
       cr_return_ship_cost,
       cr_refunded_cash,
       cr_reversed_charge,
       cr_store_credit,
       cr_net_loss,
       cr_returned_date_sk
from tpcds_50_text.catalog_returns;

insert overwrite table store_sales
  partition(ss_sold_date_sk) /*+ clustered,shuffle */
select ss_sold_time_sk,
       ss_item_sk,
       ss_customer_sk,
       ss_cdemo_sk,
       ss_hdemo_sk,
       ss_addr_sk,
       ss_store_sk,
       ss_promo_sk,
       ss_ticket_number,
       ss_quantity,
       ss_wholesale_cost,
       ss_list_price,
       ss_sales_price,
       ss_ext_discount_amt,
       ss_ext_sales_price,
       ss_ext_wholesale_cost,
       ss_ext_list_price,
       ss_ext_tax,
       ss_coupon_amt,
       ss_net_paid,
       ss_net_paid_inc_tax,
       ss_net_profit,
       ss_sold_date_sk
from tpcds_50_text.store_sales
where ss_sold_date_sk is not null;


insert overwrite table store_sales
  partition(ss_sold_date_sk) /*+ noshuffle */
select ss_sold_time_sk,
       ss_item_sk,
       ss_customer_sk,
       ss_cdemo_sk,
       ss_hdemo_sk,
       ss_addr_sk,
       ss_store_sk,
       ss_promo_sk,
       ss_ticket_number,
       ss_quantity,
       ss_wholesale_cost,
       ss_list_price,
       ss_sales_price,
       ss_ext_discount_amt,
       ss_ext_sales_price,
       ss_ext_wholesale_cost,
       ss_ext_list_price,
       ss_ext_tax,
       ss_coupon_amt,
       ss_net_paid,
       ss_net_paid_inc_tax,
       ss_net_profit,
       ss_sold_date_sk
from tpcds_50_text.store_sales
where ss_sold_date_sk is null;

insert overwrite table store_returns
  partition(sr_returned_date_sk) /*+ clustered,shuffle */
select sr_return_time_sk,
       sr_item_sk,
       sr_customer_sk,
       sr_cdemo_sk,
       sr_hdemo_sk,
       sr_addr_sk,
       sr_store_sk,
       sr_reason_sk,
       sr_ticket_number,
       sr_return_quantity,
       sr_return_amt,
       sr_return_tax,
       sr_return_amt_inc_tax,
       sr_fee,
       sr_return_ship_cost,
       sr_refunded_cash,
       sr_reversed_charge,
       sr_store_credit,
       sr_net_loss,
       sr_returned_date_sk
from tpcds_50_text.store_returns;

insert overwrite table web_sales
  partition(ws_sold_date_sk) /*+ clustered,shuffle */
select ws_sold_time_sk,
       ws_ship_date_sk,
       ws_item_sk,
       ws_bill_customer_sk,
       ws_bill_cdemo_sk,
       ws_bill_hdemo_sk,
       ws_bill_addr_sk,
       ws_ship_customer_sk,
       ws_ship_cdemo_sk,
       ws_ship_hdemo_sk,
       ws_ship_addr_sk,
       ws_web_page_sk,
       ws_web_site_sk,
       ws_ship_mode_sk,
       ws_warehouse_sk,
       ws_promo_sk,
       ws_order_number,
       ws_quantity,
       ws_wholesale_cost,
       ws_list_price,
       ws_sales_price,
       ws_ext_discount_amt,
       ws_ext_sales_price,
       ws_ext_wholesale_cost,
       ws_ext_list_price,
       ws_ext_tax,
       ws_coupon_amt,
       ws_ext_ship_cost,
       ws_net_paid,
       ws_net_paid_inc_tax,
       ws_net_paid_inc_ship,
       ws_net_paid_inc_ship_tax,
       ws_net_profit,
       ws_sold_date_sk
from tpcds_50_text.web_sales
where ws_sold_date_sk is not null;

insert overwrite table web_sales
  partition(ws_sold_date_sk) /*+ noshuffle */
select ws_sold_time_sk,
       ws_ship_date_sk,
       ws_item_sk,
       ws_bill_customer_sk,
       ws_bill_cdemo_sk,
       ws_bill_hdemo_sk,
       ws_bill_addr_sk,
       ws_ship_customer_sk,
       ws_ship_cdemo_sk,
       ws_ship_hdemo_sk,
       ws_ship_addr_sk,
       ws_web_page_sk,
       ws_web_site_sk,
       ws_ship_mode_sk,
       ws_warehouse_sk,
       ws_promo_sk,
       ws_order_number,
       ws_quantity,
       ws_wholesale_cost,
       ws_list_price,
       ws_sales_price,
       ws_ext_discount_amt,
       ws_ext_sales_price,
       ws_ext_wholesale_cost,
       ws_ext_list_price,
       ws_ext_tax,
       ws_coupon_amt,
       ws_ext_ship_cost,
       ws_net_paid,
       ws_net_paid_inc_tax,
       ws_net_paid_inc_ship,
       ws_net_paid_inc_ship_tax,
       ws_net_profit,
       ws_sold_date_sk
from tpcds_50_text.web_sales
where ws_sold_date_sk is null;

insert overwrite table web_returns
  partition(wr_returned_date_sk) /*+ clustered,shuffle */
select wr_returned_time_sk,
       wr_item_sk,
       wr_refunded_customer_sk,
       wr_refunded_cdemo_sk,
       wr_refunded_hdemo_sk,
       wr_refunded_addr_sk,
       wr_returning_customer_sk,
       wr_returning_cdemo_sk,
       wr_returning_hdemo_sk,
       wr_returning_addr_sk,
       wr_web_page_sk,
       wr_reason_sk,
       wr_order_number,
       wr_return_quantity,
       wr_return_amt,
       wr_return_tax,
       wr_return_amt_inc_tax,
       wr_fee,
       wr_return_ship_cost,
       wr_refunded_cash,
       wr_reversed_charge,
       wr_account_credit,
       wr_net_loss,
       wr_returned_date_sk
from tpcds_50_text.web_returns;

--
-- dimension tables
--
compute stats call_center;
compute stats catalog_page;
compute stats customer;
compute stats customer_address;
compute stats customer_demographics;
compute stats date_dim;
compute stats household_demographics;
compute stats income_band;
compute stats item;
compute stats promotion;
compute stats reason;
compute stats ship_mode;
compute stats store;
compute stats time_dim;
compute stats warehouse;
compute stats web_page;
compute stats web_site;
--
-- fact tables
--
compute stats catalog_returns;
compute stats catalog_sales;
compute stats inventory;
compute stats store_returns;
compute stats store_sales;
compute stats web_returns;
compute stats web_sales;

/*compute stats for each table*/
compute stats call_center;
compute stats catalog_page;
compute stats catalog_returns;
compute stats catalog_sales;
compute stats customer_address;
compute stats customer_demographics;
compute stats customer;
compute stats date_dim;
compute stats household_demographics;
compute stats income_band;
compute stats inventory;
compute stats item;
compute stats promotion;
compute stats reason;
compute stats ship_mode;
compute stats store_returns;
compute stats store_sales;
compute stats store;
compute stats time_dim;
compute stats warehouse;
compute stats web_page;
compute stats web_returns;
compute stats web_sales;
compute stats web_site;
