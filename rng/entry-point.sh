#!/bin/ash
set -eo pipefail
#shopt -s nullglob

attempt_counter=0
max_attempts=15
CONSULADDR=consul:8500
export CONSUL_HTTP_ADDR=$CONSULADDR
until $(curl --output /dev/null --silent --head --fail http://consul:8500); do
    if [ ${attempt_counter} -eq ${max_attempts} ];then
      echo "Max attempts reached"
      exit 1
    fi

    printf '.'
    attempt_counter=$(($attempt_counter+1))
    sleep 5
done
consul kv put rng/SRVRNGPORT 80
consul kv put rng/SRVRNGNAME rng

envconsul -kill-signal=SIGHUP -upcase -sanitize -prefix rng -consul $CONSULADDR -log-level debug "$@"
