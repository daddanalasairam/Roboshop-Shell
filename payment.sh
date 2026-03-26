source common.sh
app_name=payment

print_heading "Copy Payment Service File"
cp payment.service /etc/systemd/system/payment.service &>>$log_file

print_heading "Install Python"
dnf install python3 gcc python3-devel -y &>>$log_file

app_prerequisites

print_heading "Download Application Dependencies"
pip3 install -r requirements.txt &>>$log_file

print_heading "Start Application Service"
systemctl daemon-reload &>>$log_file
systemctl enable payment &>>$log_file
systemctl start payment &>>$log_file