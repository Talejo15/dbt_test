{%  macro limit_data_in_dev(column_name, dev_years_of_data)   %}
{% if target.name = 'default'   %}
where {{column_name}} >= date_sub(DATE current_date(), interval {{dev_years_of_data}} year)
{% endif    %}
{%  endmacro    %}