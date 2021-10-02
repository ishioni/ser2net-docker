#!/bin/bash
envsubst < /ser2net.yaml > /ser2net.run.yaml
/usr/sbin/ser2net -n -c /ser2net.run.yaml 