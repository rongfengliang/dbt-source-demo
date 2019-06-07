{{ config(materialized='view') }}

select username,count(*) from users group by username