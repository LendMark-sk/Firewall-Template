#!/usr/bin/env bash

#Reset rules script by Gaetan. Add discord: 'Gaetan#0099' to get help.

echo "Reset loading..."

#------------------------------------------------------------------------------------------
#Variable

IPTABLES="sudo iptables" # The location of iptables
#------------------------------------------------------------------------------------------
 
# Reset the rules
$IPTABLES -t filter -F 
$IPTABLES -t filter -X 
$IPTABLES -t mangle -F
$IPTABLES -t mangle -X
$IPTABLES -t raw -F
$IPTABLES -t raw -X
echo "Rules#1 - The rules was reset."
 
# Accept all
$IPTABLES -t filter -P INPUT ACCEPT
$IPTABLES -t filter -P FORWARD ACCEPT
$IPTABLES -t filter -P OUTPUT ACCEPT
echo "Rules#2 - All the trafic was allowed."