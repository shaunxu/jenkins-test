#!/bin/bash

function usage() {
    echo " -h --help"
    echo " --test : test this script"
    echo " --tocken=string : input your worktile tocken for object"
}

if [ "$1" = "" ]; then
  usage
  exit
fi

while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    VALUE=`echo $1 | awk -F= '{print $2}'`
    case $PARAM in
        -h | --help)
            usage
            exit
            ;;
       -t | --tocken)
            tocken=$VALUE
            sleep 10s
            LOG=`cat $JENKINS_HOME/jobs/$JOB_NAME/builds/$BUILD_ID/log`
            curl -X POST -d "fizz=$LOG" https://request.worktile.com/$tocken
            ;;
                --test)
            tocken=123456
         echo   "curl -X POST -d "fizz=buzz" https://request.worktile.com/$tocken"
            ;;
        *)
            echo "ERROR: unknown parameter \"$PARAM\""
            usage
            exit 1
            ;;
    esac
    shift
done
