netstat -nt 2>/dev/null | grep -v ':22' | grep tcp | sort -k 4 | grep ESTABLISHED | awk '{print $4,$5}' | awk -F ':' '{print $1,$2}' | uniq | awk '{print $2"\t"$3}' | sort -k 1 -n | grep 443

