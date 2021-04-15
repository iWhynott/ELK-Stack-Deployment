#!/bin/bash

grep -H "$2" $1 | awk '{print $1, $2, $5, $6}' | sed s/$1/Dealer_on_Shift/

