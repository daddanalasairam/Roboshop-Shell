source common.sh
app_name=mysql

print_heading "Install MySql Server"
dnf install mysql-server -y &>>$log_file
status_check $?

print_heading "Start MySql Service"
systemctl enable mysqld &>>$log_file
systemctl start mysqld &>>$log_file
status_check $?

print_heading "Setup MySql Password"
mysql_secure_installation --set-root-pass RoboShop@1 &>>$log_file
status_check $?

