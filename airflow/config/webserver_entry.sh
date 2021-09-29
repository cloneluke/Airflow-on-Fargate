#!/usr/bin/env bash

set -Eeuxo pipefail

airflow db init
sleep 5

#airflow create_user -r Admin -u admin -f FirstName -l LastName -p ${ADMIN_PASS} -e admin@test.com
airflow users create --role Admin --username admin --firstname FirstName --lastname LastName --password ${ADMIN_PASS} --email admin@test.com
sleep 5

airflow webserver