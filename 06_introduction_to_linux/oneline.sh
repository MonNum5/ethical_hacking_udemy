#!/bin/bash

for ip in $(cat ip.txt); do nmap $ip; done    
