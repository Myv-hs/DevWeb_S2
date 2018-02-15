ls /etc/console-setup/
find /usr/bin/ -size +1000000c -exec ls -l {} \;
find /tmp/ \( -group root -a -type f \) -exec ls -l {} \;
find /tmp/ \( -group root -a -type f -a -mmin +20 \) -exec ls -l {} \;
find /tmp/ -group root -a -type f -a -mmin +20 -ok rm {} \;
find /etc/ -! -group root -exec ls -l {} \;
find /etc/ -! -group root -exec ls -l {} \; 2> errlog.txt