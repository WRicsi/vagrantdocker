#!/bin/bash
#this sh starts the web1, 2 ,3 db, lb containers given as a parameter
# web1,web2,web3,db,lb,all

#srpits localted at /rrr/synced/web1/tunnel.sh 
#                               ..... 
# case check for parameter

case $1 in

  web1)
    sudo /rrr/synced/web1/tunnel.sh
    ;;

  web2)
    sudo /rrr/synced/web2/tunnel.sh
    ;;

  web3)
    sudo /rrr/synced/web3/tunnel.sh
    ;;

  db)
    sudo /rrr/synced/db/tunnel.sh
    ;;

  lb)
    sudo /rrr/synced/lb/tunnel.sh
    ;;

  all)
     sudo /rrr/synced/lb/tunnel.sh
     sudo /rrr/synced/db/tunnel.sh
     sudo /rrr/synced/web1/tunnel.sh
     sudo /rrr/synced/web2/tunnel.sh
     sudo /rrr/synced/web3/tunnel.sh
    ;;

esac
