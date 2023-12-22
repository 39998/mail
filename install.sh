read -p "Admin:" txt
sed -i "23s/.\{5\}/&$txt/" /file/ssmtp.conf
sed -i "8s/.\{5\}/&$txt/"/file/revaliases
