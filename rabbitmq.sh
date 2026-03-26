source common.sh
app_name=rabbitmq

cp rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo &>>$log_file

dnf install rabbitmq-server -y &>>$log_file

systemctl enable rabbitmq-server &>>$log_file
systemctl start rabbitmq-server &>>$log_file

rabbitmqctl add_user roboshop roboshop123 &>>$log_file
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*" &>>$log_file