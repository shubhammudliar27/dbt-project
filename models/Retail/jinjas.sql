{%-set var="Shubham"-%}
{{var}}


{% if 1==2%}
{{'I am in 1st block'}}
{%-else-%}
{{'I am In seocnd block'}}
{%-endif-%}



{%for i in (1,2,3,4,5)%}
{{i}}
{%endfor%}