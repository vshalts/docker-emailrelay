#!/bin/sh

echo Run emailrelay

/usr/sbin/emailrelay $EMAILRELAY_OPTS

while [ "`pgrep emailrelay`" == "" ]; do sleep 0.1; done

pr=`pgrep emailrelay`

echo Wait PID: $pr to complete

while [ -e /proc/$pr ]; do sleep 0.1; done
