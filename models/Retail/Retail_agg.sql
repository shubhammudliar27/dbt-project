{%-set type = dbt_utils.get_column_values(source("Test",'Retail'),'TYPE')-%}
select PROPERTY_ID
{%-for i in type%}
,sum(case when TYPE = '{{i}}' then SOLD_PRICE end) as {{i}}_type 
{%-endfor%}
from {{source("Test",'Retail')}}
group by PROPERTY_ID


{%-set type = dbt_utils.get_column_values(source("Test",'Retail'),'TYPE')-%}
select PROPERTY_ID,
{%-for i in type%}
{%-if not loop.first-%} ,{%-endif%}
sum(case when TYPE = '{{i}}' then SOLD_PRICE end) as {{i}}_type 
{%-endfor%}
from {{source("Test",'Retail')}}
group by PROPERTY_ID