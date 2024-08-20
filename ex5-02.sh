#/bin/bash

# The script is used to monitor the status of the cron service.

sudo systemctl status cron  &> /dev/null

if [ $? -eq 0 ];then
    echo "The cron service is running."
else
    echo "The cron service is not running."
    echo "Starting the cron service..."
    sudo systemctl start cron &> /dev/null
    if [ $? -eq 0 ];then
        echo "$(date "+%F %T") : The cron service has been started ."  |tee -a /tmp/cron.log
    else
        echo "$(date "+%F %T") : Failed to start the cron service at." |tee -a /tmp/cron.log
    fi
fi