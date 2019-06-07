{{ config(materialized='table') }}

select username,count(*) from {{ source('users', 'users') }} group by username