#!/bin/bash

set -e

mvn clean package;
docker build department-service -t harbor.waret.net/piomin/department:1.0
docker build employee-service -t harbor.waret.net/piomin/employee:1.0
docker build gateway-service -t harbor.waret.net/piomin/gateway:1.0
docker build organization-service -t harbor.waret.net/piomin/organization:1.0

docker push harbor.waret.net/piomin/department:1.0
docker push harbor.waret.net/piomin/employee:1.0
docker push harbor.waret.net/piomin/gateway:1.0
docker push harbor.waret.net/piomin/organization:1.0



