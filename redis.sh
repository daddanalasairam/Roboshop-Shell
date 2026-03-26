source common.sh
app_name=redis

print_heading ""
dnf module disable redis -y &>>$log_file
status_check $?

print_heading ""
dnf module enable redis:7 -y &>>$log_file
status_check $?

print_heading ""
dnf install redis -y &>>$log_file
status_check $?

print_heading ""
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/redis/redis.conf &>>$log_file
status_check $?

print_heading ""
systemctl enable redis &>>$log_file
status_check $?

print_heading ""
systemctl start redis &>>$log_file
status_check $?