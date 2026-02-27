select *, 
{{days_on_market('listed_date','sold_date')}} as DaysOnMarket,
case 
when {{days_on_market('listed_date','sold_date')}} <=30 then 'Hot' 
when {{days_on_market('listed_date','sold_date')}} <=60 then 'Normal' 
when {{days_on_market('listed_date','sold_date')}} <=120 then 'Slow' 
else 'Stale' end as Status
 from Retail