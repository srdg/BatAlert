#!/bin/bash

function getRunningProcesses 
{
    ps -aux | grep -v grep | grep BatAlert.sh
}

if [[ -n "$(getRunningProcesses)" ]] ; then
    exit
fi

BatAlert.sh&