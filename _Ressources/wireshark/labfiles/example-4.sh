#!/bin/bash

file=$1
user=$2

for cookie in `tshark -r $file -Y "http.request and http contains $user" -T fields -e http.cookie | cut -d ' ' -f2`
do
   tmpfile="tmp_`echo $cookie | cut -d '=' -f 2`.pcap"
   echo "Processing session cookie $cookie to $tmpfile"

   tshark -r $file -w "$tmpfile" -Y `tshark -r "$file" -T fields -e tcp.stream \
      -Y "http.request and http.cookie contains \"$cookie\"" | \
      awk '{printf("%stcp.stream==%s",sep,$1);sep="||"}'`
done

mergecap -w $user.pcap tmp_*.pcap
rm tmp_*.pcap
