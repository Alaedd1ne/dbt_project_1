-- models/model_C.sql

with

source_a as (
    select * from {{ source('my_source', 'table_A') }}
),

source_b as (
    select * from {{ source('my_source', 'table_B') }}
)

select
    a.*,
    b.*
from source_a a
join source_b b on a.id = b.id
