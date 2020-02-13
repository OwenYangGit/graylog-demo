#!/bin/bash
setList=("[2020-02-03 10:33:05,133][INFO][azure.core.pipeline.policies.http_logging_policy:430] 'Date': 'Mon, 03 Feb 2020 10:33:04 GMT'" "[2020-02-03 10:33:07,402][INFO][azure.core.pipeline.policies.http_logging_policy:426] Response status: 200" "[2020-02-03 11:01:54,248][WARNING][automation.views.virtual_machine.restart_virtual_machine:80] Error on restat VM.
Azure Error: OperationNotAllowed Message: The operation requires the VM to be running (or set to run).")

while true
do
    RANDOM=$$$(date +%s)
    message=${setList[$RANDOM % ${#setList[@]}]}
    echo $message && echo $message >> /var/log/tools/api.log
    sleep 3
done
