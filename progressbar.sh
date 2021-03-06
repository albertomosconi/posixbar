#!/bin/sh

f_delay()
{
    sleep 0.2
}

CURRENT_PROGRESS=0
progressbar()
{
    PARAM_PROGRESS=$1;
    PARAM_PHASE=$2;

    if [ $CURRENT_PROGRESS -le 0 -a $PARAM_PROGRESS -ge 0 ]  ; then echo "[..........................] (0%)  $PARAM_PHASE \r\c" ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 5 -a $PARAM_PROGRESS -ge 5 ]  ; then echo "[#.........................] (5%)  $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 10 -a $PARAM_PROGRESS -ge 10 ]; then echo "[##........................] (10%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 15 -a $PARAM_PROGRESS -ge 15 ]; then echo "[###.......................] (15%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 20 -a $PARAM_PROGRESS -ge 20 ]; then echo "[####......................] (20%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 25 -a $PARAM_PROGRESS -ge 25 ]; then echo "[#####.....................] (25%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 30 -a $PARAM_PROGRESS -ge 30 ]; then echo "[######....................] (30%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 35 -a $PARAM_PROGRESS -ge 35 ]; then echo "[#######...................] (35%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 40 -a $PARAM_PROGRESS -ge 40 ]; then echo "[########..................] (40%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 45 -a $PARAM_PROGRESS -ge 45 ]; then echo "[#########.................] (45%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 50 -a $PARAM_PROGRESS -ge 50 ]; then echo "[##########................] (50%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 55 -a $PARAM_PROGRESS -ge 55 ]; then echo "[###########...............] (55%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 60 -a $PARAM_PROGRESS -ge 60 ]; then echo "[############..............] (60%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 65 -a $PARAM_PROGRESS -ge 65 ]; then echo "[#############.............] (65%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 70 -a $PARAM_PROGRESS -ge 70 ]; then echo "[###############...........] (70%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 75 -a $PARAM_PROGRESS -ge 75 ]; then echo "[#################.........] (75%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 80 -a $PARAM_PROGRESS -ge 80 ]; then echo "[####################......] (80%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 85 -a $PARAM_PROGRESS -ge 85 ]; then echo "[#######################...] (85%) $PARAM_PHASE \r\c"  ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 90 -a $PARAM_PROGRESS -ge 90 ]; then echo "[##########################] (100%) $PARAM_PHASE \r\c" ; f_delay; fi;
    if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ];then echo "Done!                                            \n\c" ; fi;

    CURRENT_PROGRESS=$PARAM_PROGRESS;
}

spinner() {
  sp='/-\|'
  printf ' '
  sleep 1
  while true; do
    printf '\r%0.9s' "loading $sp"
    sp=${sp#?}${sp%???}
    f_delay
  done
}

