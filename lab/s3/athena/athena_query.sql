CREATE EXTERNAL TABLE IF NOT EXISTS `demo-db`.`demo-athena` (
`id` int,
`name` string,
`age` int,
`latitude` double,
`longitude` double,
`monthly_income` int,
`experienced` boolean
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
'serialization.format' = ',',
'field.delim' = ','
) LOCATION 's3://my-aws-session-athena/dataset'
TBLPROPERTIES ('has_encrypted_data'='false','skip.header.line.count'='1');