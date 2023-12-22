apt install mailutils -y
apt install ssmtp -y
read -p "Admin:" txt
sed -i "23s/.\{5\}/&$txt/" /file/mail/ssmtp.conf
sed -i "8s/.\{5\}/&$txt/" /file/mail/revaliases
echo "echo | mail -s "test" xx@segfault.net"
rm -rf /etc/ssmtp/*
cp /file/mail/ssmtp.conf /etc/ssmtp
cp /file/mail/ssmtp.conf /etc/revaliases
