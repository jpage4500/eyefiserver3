#!/bin/sh

ARG_NUM=$1
ARG_SIZE=$2
ARG_NAMES=$3

sendmail -F "Synology NAS" -f "FROMADDRESS@gmail.com" -t TOADDRESS@gmail.com << EOF
Subject: eye-fi upload complete
Uploaded $ARG_NUM pictures (size: $ARG_SIZE)

-- files --
$ARG_NAMES

EOF

