#! /bin/sh

## Environment Variables 
env="../env/.env"
API_SITE=$( sed "s/#.*//; s/api=*//; s/Key.*.//; s/'//g; /^$/ d" $env ) 
API_KEY=$( sed "s/#.*//; /https:/ d;s/api....//g; s/'//g; /^$/ d" $env )
API=$API_SITE"latest?apikey="$API_KEY

# Dialog
dialog --backtitle "Forex pip Calculator" \
    --title "PIP Calculator" \
    --form "\nPIP Value Calculator" 25 60 16 \
        "Pips" 1 1 "$pip" 1 25 25 30 \
        "Instrument" 2 1 "$instrument" 2 25 25 30 \
        "Lots" 3 1 "$lot" 3 25 25 30 \
        "Deposit currency" 4 1 "$deposite_currency" 4 25 25 30 \
        "1 Pip Size" 4 1 "$pip_size" 4 25 25 30 \
