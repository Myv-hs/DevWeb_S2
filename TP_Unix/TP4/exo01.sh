

cut -f 1,4 -d : /etc/group
grep 'frantz' /etc/group | cut -d : -f 1
grep ':freerad$' /etc/group | cut -d : -f 1
grep ':.*,.*,.*,' /etc/group | cut -d : -f 1