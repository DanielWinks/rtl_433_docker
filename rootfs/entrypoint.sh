#!/bin/sh

find /rtl_433/conf/. -type f -name '*.conf' -exec cat {} + >> /rtl_433.conf

echo -e "\n\noutput mqtt://${MQTT_HOST}:${MQTT_PORT},user=${MQTT_USER},pass=${MQTT_PASS},retain=${MQTT_RETAIN},devices=rtl_433[/model][/channel][/id]" >> /rtl_433.conf

rtl_433 -c /rtl_433.conf