#! /bin/sh 
### BEGIN INIT INFO 
# Provides:    keep-vpn-alive
# Required-Start: 
# Required-Stop: 
# Should-Start:      
# Default-Start:     S 
# Default-Stop: 
# Short-Description: keep vpn alive
# Description:       manyax@manyax.net
### END INIT INFO 

do_start () { 
    /usr/bin/vpn-check & 
    exit 0 
} 

do_stop () { 
    killall -9 vpn-check & 
    exit 0 
} 
case "$1" in 
  start|"") 
    do_start 
    ;; 
  restart|reload|force-reload) 
    echo "Error: argument '$1' not supported" >&2 
    exit 3 
    ;; 
  stop) 
    do_stop
    ;; 
  status) 
    exit 0 
    ;; 
  *) 
    echo "Usage: keep-vpn-alive [start|stop]" >&2 
    exit 3 
    ;;
esac
:
