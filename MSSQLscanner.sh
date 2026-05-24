#/!/bin/bash

read -p "Start IP (last octet): " start
read -p "End IP (last octet): " end
read -p "Port to scan: " port

for ip in $(seq $start $end); do
	target="192.168.1.$ip"
	echo "Scanning $target..."

	nc -z -w 1 $target $port 2>/dev/null

	if [ $? -eq 0 ]; then
		echo "[OPEN] $target:$port"
	fi
done
