from airflow import DAG
from airflow.providers.airbyte.operators.airbyte import AirbyteTriggerSyncOperator
from airflow.models import Variable

airbyte_conn = Variable.get("airbyte_dbt_conn")
connection_id = Variable.get("airbyte_connection_id")

with DAG(dag_id='trigger_airbyte_job_example',
         default_args={'owner': 'airflow'},
         schedule_interval='@once',
         ) as dag:
    airbyte_sync = AirbyteTriggerSyncOperator(
        task_id='airbyte_example',
        airbyte_conn_id='airbyte_conn',
        connection_id='d4a0ca5c-ad7d-4ff7-b9c0-def404c8692f',
        asynchronous=False,
        timeout=3600,
        wait_seconds=3
    )
