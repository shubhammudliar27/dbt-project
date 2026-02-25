
--this is raw table


select
    date               as load_date
  , county_fips_code   as county_fips
  , parcel_number
  , street_address
  , upper(city)        as city -- standardize casing
  , state
  , zip       as zip_code
  , county
  , type
  , beds           as bedrooms
  , baths              as bathrooms
  , floor_size         as sq_ft
  , lot_size           as lot_sq_ft
  , built_in           as year_built
  , geo_lat            as latitude
  , geo_long           as longitude
  , estimated_value    as estimated_value
  , sold_date          as sold_date
  , sold_price         as sold_price
  , list_price_initial as list_price_initial
  , list_price_final   as list_price_final
  , pending_price      as pending_price
  , listed_on          as listed_date
  , pending_on         as pending_date
  , agent_name
  , agent_email
  , agent_phone
  , agent_office
from {{source("Test",'Retail')}}
