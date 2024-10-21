
#SERVIDOR DNS
cat << EOL | sudo tee /etc/resolv.conf > /dev/null
nameserver 8.8.8.8
nameserver 8.8.4.4

EOL
