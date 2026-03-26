source common.sh
app_name=payment

echo -e "$color Copy Payment Service File $no_color"
cp payment.service /etc/systemd/system/payment.service &>>$log_file

echo -e "$color Install Python $no_color"
dnf install python3 gcc python3-devel -y &>>$log_file

app_prerequisites

echo -e "$color Download Application Dependencies $no_color"
pip3 install -r requirements.txt &>>$log_file

echo -e "$color Start Application Service $no_color"
systemctl daemon-reload &>>$log_file
systemctl enable payment &>>$log_file
systemctl start payment &>>$log_file