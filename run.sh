#!/bin/bash
sed -i "s/8000/8080/g" "nmaper-cronjob.py"
echo What is your public IP address?
read ip
sed -i "s/127.0.0.1/$ip/g" "nmaper-cronjob.py"
echo What is your SMTP user name?
read user
sed -i "s/youremail@gmail.com/$user/g" "nmaper-cronjob.py"
echo What is your SMTP password?
read pass
sed -i "s/yourpassword/$pass/g" "nmaper-cronjob.py"
echo What is your SMTP address?
read smtp
sed -i "s/smtp.gmail.com/$smtp/g" "nmaper-cronjob.py"
python manage.py migrate
python manage.py loaddata nmapprofiles
python manage.py createsuperuser
python manage.py runserver 127.0.0.1:8080 &
while true
do
python nmaper-cronjob.py
sleep 15
done
