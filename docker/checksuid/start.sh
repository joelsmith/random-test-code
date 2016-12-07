#!/bin/bash -e

echo user:x:$(id -u):0:USER:/root:/bin/bash >> /etc/passwd
echo group:x:$(id -G | awk '{print $2}'):user >> /etc/group

echo "Running: /usr/bin/grep -P '^([UG]id|Cap)' /proc/self/status"
/usr/bin/grep -P '^([UG]id|Cap)' /proc/self/status
echo
echo "Running: /usr/local/bin/sugrep -P '^([UG]id|Cap)' /proc/self/status"
/usr/local/bin/sugrep -P '^([UG]id|Cap)' /proc/self/status
echo
echo "sleeping indefinitely"
while sleep 10; do
  true
done
