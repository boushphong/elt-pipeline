-- {% macro convert() %}
-- {% set sql_statement %}
--     select first_name, last_name from raw_warehouse.dim_customer where country_id = 2
-- {% endset %}
--
-- {%- set name_var = dbt_utils.get_query_results_as_dict(sql_statement) -%}
--
-- {% for var in range(name_var['first_name']|length) %}
-- UPDATE raw_warehouse.dim_customer
-- SET first_name = '{{ name_var['last_name'][var] }}'
-- where country_id = 2
-- and first_name = '{{ name_var['first_name'][var] }}' ;
-- {% endfor %}
-- {% endmacro %}