#!/bin/bash

export TZ="$(timedatectl | grep 'Time zone' | cut -f2 -d: | awk '{print $1}')"
export EXTERNAL_URL="somedomain.my"
export DOODS_KEY="SoMe_R@ND0m_K3y"

test -d /opt/ha || mkdir -p /opt/ha
test -d /opt/zwave2mqtt || mkdir -p /opt/zwave2mqtt
test -d /opt/motioneye || mkdir -p /opt/motioneye
test -d /opt/adguard/work || mkdir -p /opt/adguard/work
test -d /opt/adguard/config || mkdir -p /opt/adguard/config
test -d /opt/doods/models || mkdir -p /opt/doods/models
test -d /opt/grafana/config || mkdir -p /opt/grafana/config
test -d /opt/grafana/data || mkdir -p /opt/grafana/data
test -d /opt/prometheus/config || mkdir -p /opt/prometheus/config
test -d /opt/prometheus/data || mkdir -p /opt/prometheus/data

docker-compose -f home-assistant.yaml config && docker-compose -f home-assistant.yaml up -d
