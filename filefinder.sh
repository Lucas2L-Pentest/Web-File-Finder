#!/bin/bash
echo "Simple Web File Finder by: Lucas2L"
echo "USAGE: $0  URL EXTENSION" 
echo "EXAMPLE: $0 vivo.com.br php"
lynx -dump "http://google.com/search?num=500&q=site:"$1"+ext:"$2"" | cut -d "=" -f2 | grep ".$2" | egrep -v "site|google" | sed s'/...$//'
