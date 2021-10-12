#!/bin/bash

docker pull owasp/zap2docker-stable
docker run -i owasp/zap2docker-stable zap-baseline.py -t "https://spike-saas.herokuapp.com/" -l PASS > zap_report.html

echo $? > /dev/null

