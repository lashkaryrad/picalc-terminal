#! /bin/sh

## Environment Variables 
# env="../env/.env"
api=$( sed "s/#.*//; s/api=*//; s/'//g; s/Key.*.//; /^$/ d" .env ) 
