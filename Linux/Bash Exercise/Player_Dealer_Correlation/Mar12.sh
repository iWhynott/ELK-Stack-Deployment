#!/bin/bash

grep -H  '05:00:00 AM' 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | sed s/0312_Dealer_schedule/March-12/
grep -H  '08:00:00 AM' 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | sed s/0312_Dealer_schedule/March-12/
grep -H  '02:00:00 PM' 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | sed s/0312_Dealer_schedule/March-12/
grep -H  '08:00:00 PM' 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | sed s/0312_Dealer_schedule/March-12/
grep -H  '11:00:00 PM' 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | sed s/0312_Dealer_schedule/March-12/

