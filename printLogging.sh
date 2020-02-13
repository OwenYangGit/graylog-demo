#!/bin/bash
setList=('[2020-02-03 10:33:05,133][INFO][azure.core.pipeline.policies.http_logging_policy:430]     'Date': 'Mon, 03 Feb 2020 10:33:04 GMT'
[pid: 6635|app: 0|req: 189/426] 10.3.3.176 () {36 vars in 733 bytes} [Mon Feb  3 10:33:03 2020] POST /automation/blob/delete_container => generated 34 bytes in 1465 msecs (HTTP/1.1 200) 6 headers in 163 bytes (1 switches on core 0)' '[2020-02-03 10:49:30,647][WARNING][automation.views.virtual_machine.restart_virtual_machine:80] Error on restat VM. Azure Error: OperationNotAllowed
Message: The operation requires the VM to be running (or set to run).' '[pid: 25372|app: 0|req: 40/212] 10.3.3.176 () {36 vars in 741 bytes} [Tue Feb  4 04:03:18 2020] POST /automation/blob/list_storage_accounts => generated 1181 bytes in 1530 msecs (HTTP/1.1 200) 6 headers in 165 bytes (1 switches on core 0)
[2020-02-04 04:12:40,213][INFO][at_user.views.authorize:94] Authorized')

while true
do
    RANDOM=$$$(date +%s)
    message=${setList[$RANDOM % ${#setList[@]}]}
    echo $message
    sleep 3
done
