import os
from airflow import DAG
from airflow.operators.bash import BashOperator
from airflow.utils.dates import days_ago
from airflow.providers.airbyte.operators.airbyte import AirbyteTriggerSyncOperator

airbyte_conn = os.environ.get('AIRBYTE_CONN')
connection_id = os.environ.get('CONNECTION_ID')

with DAG(dag_id='trigger_airbyte_job_example',
         default_args={'owner': 'airflow'},
         schedule_interval='@once',
         start_date=days_ago(1)
         ) as dag:
    airbyte_sync = AirbyteTriggerSyncOperator(
        task_id='airbyte_example',
        airbyte_conn_id='airbyte_conn',
        connection_id='d4a0ca5c-ad7d-4ff7-b9c0-def404c8692f',
        asynchronous=False,
        timeout=3600,
        wait_seconds=3
    )

    dbt_run = BashOperator(
        this_will_skip=BashOperator(
        task_id='dbt run',
        bash_command='cd /opt/airflow/dwh_phongbui_transformation && dbt run',
        dag=dag,
    )
        
    dbt_snapshot = BashOperator(
        this_will_skip=BashOperator(
        task_id='dbt snapshot',
        bash_command='cd /opt/airflow/dwh_phongbui_transformation && dbt snapshot',
        dag=dag,
        )
    )
