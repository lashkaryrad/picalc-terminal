#! /bin/sh

## Environment Variables 
env="../env/.env"
API_SITE=$( sed "s/#.*//; s/api=*//; s/Key.*.//; s/'//g; /^$/ d" $env ) 
API_KEY=$( sed "s/#.*//; /https:/ d;s/api....//g; s/'//g; /^$/ d" $env )
API=$API_SITE"latest?apikey="$API_KEY

# Dialog
dialog --backtitle "Forex pip Calculator" \
    --title "PIP Calculator" \
    --form "\nPIP Value Calculator" 25 60 16 \w
