#!/bin/bash

if [[ $1 == '-v' || $1 == '--verbose' ]]; then
    echo '=> Verbose output enabled'
    VERBOSE=true
elif [[ $1 == '--debug' ]]; then
    echo '=> DEBUG enabled'
    set -x
fi

while true ; do
    for o in $(tail /var/log/syslog | grep -o  -E 'orphaned pod \\"((\w|-)+)\\' | cut -d" " -f3 | grep -oE '(\w|-)+' | uniq); do
        p="/var/lib/kubelet/pods/$o/volumes/"
        if [ -d "$p" ] ; then
            if [ $VERBOSE ]; then echo "Removing $o"; fi
            rm -rf "$p"
        else
            if [ $VERBOSE ]; then echo '=> SKIP'; fi
        fi
    done
sleep 2
done
