{%macro days_on_market (listed_col, sold_col)%}
datediff('day',{{listed_col}},{{sold_col}})
{%endmacro%}

