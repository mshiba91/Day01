#!/bin/bash

ifconfig -a |
	awk '/^[a-z]/ { iface=$1; mac=$NF; next}
         /inet addr:/ {echo iface mac}'
