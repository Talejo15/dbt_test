{%  macro limit_data_in_dev(column_name, dev_years_of_data=5)   %}
{% if target.name == 'default'   %}
where {{column_name}} >= date_sub(current_date(), interval {{dev_years_of_data}} year)
{% endif   %}
{%  endmacro    %}