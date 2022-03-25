# TPC-DS performance test for tidb & impala
olap performance compare between tidb and impala

## download the pre-generated data
50G data generated by tpcds kit:

https://iwop-pub-1304131386.cos.ap-beijing.myqcloud.com/performance/tpcds_50_csv.tar.gz

## create shcema and import data
use /scripts/tidb.sql for tidb

use /scripts/impala.sql for impala

## run performance test
use sqls under /quries-tidb for tidb

use sqls under /quries-impala for impala


the original sqls are from cloudera project: https://github.com/cloudera/impala-tpcds-kit

i changed some of them to fit tidb

so the sqls are not exactly same in two folders, but the logic and results are same

thats because 'with clause' process are quite diff in tidb and impala

in impala, 'with clause' is just a grammar sugar, it is directly replaced into the alias referred place

in tidb, 'with clause' is a cte, and will clone data to mem as a temp table

## unsupport_queries
there are some unsupported queries in impala 3.2.0

I put them in /unsupport_queries, I didnt try if tidb support them