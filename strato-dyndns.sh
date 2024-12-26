#!/bin/sh
#
# DynDNS Update Skript Linux v1.0 by Jonny Tutorials
# https://github.com/jonnytutorials/Strato-dyndns-linux/
#
# added line for update more fields v1.1 by andronaut42
# https://github.com/andronaut42/Strator-dyndns-linux/

#############################
###### IP-Get Services ######
#############################

#### IPv4 / IPv6 ####

# ifconfig.co
# icanhazip.com


#### only IPv4 ####

# api-ipv4.ip.sb/ip
# ifconfig.me
# checkip.amazonaws.com


IP=$(curl -s api-ipv4.ip.sb/ip) #Trage hier den IP-Get Service ein (Standartwert: api-ipv4.ip.sb/ip)


######################
###### Settings ######
######################

PASSWORD='' # gesetztes Passwort für dyndns
USER='' # Domain
DOMAIN='' # Domain

curl -s https://$USER:$PASSWORD@dyndns.strato.com/nic/update?hostname=$DOMAIN&myip=$IP
# curl -s https://$USER:$PASSWORD@dyndns.strato.com/nic/update?hostname=$DOMAIN&myip=$IP&wildcard=$IP&mx=$IP&backmx=$IP
