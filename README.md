**RoboShop Automation using Shell Scripting**

**Project Overview**
This project automates the setup of a complete RoboShop microservices application using Shell Scripting.

The application consists of multiple services like frontend, backend APIs, databases, and messaging systems. Each service is provisioned and configured using reusable and modular shell scripts.

---

**Objective**

* Automate manual server setup
* Reduce human errors
* Follow DevOps best practices
* Build reusable and scalable scripts

---

**Architecture**
The project includes the following microservices:

* Frontend (Nginx)
* Catalogue (NodeJS)
* User (NodeJS)
* Cart (NodeJS)
* Shipping (Java + Maven)
* Payment (Python)
* Dispatch (Golang)
* MongoDB
* MySQL
* Redis
* RabbitMQ

---

**Technologies Used**

* Linux (RHEL 9)
* Shell Scripting (Bash)
* AWS EC2
* Nginx
* NodeJS, Python, Java, Golang
* MongoDB, MySQL, Redis, RabbitMQ

---

**Project Structure**

```
roboshop-shell/
│
├── frontend.sh
├── catalogue.sh
├── user.sh
├── cart.sh
├── shipping.sh
├── payment.sh
├── dispatch.sh
├── mongodb.sh
├── mysql.sh
├── redis.sh
├── rabbitmq.sh
│
├── common.sh
├── *.service
├── *.conf
```

---

**Key Features**

**Modular Design**

* Common logic written in `common.sh`
* Reusable functions across all services

**Logging**

```bash
log_file=/tmp/roboshop.log
```

* All outputs stored in log file
* Helps in debugging

**Status Check Function**

```bash
status_check() {
  if [ $1 -eq 0 ]; then
    echo "SUCCESS"
  else
    echo "FAILURE"
    exit 1
  fi
}
```

**Idempotent-like Behavior**

* Checks before creating users
* Cleans directories before deployment

**Functions Used**

* `print_heading` → display formatted output
* `status_check` → validate command execution
* `app_prerequisites` → common setup steps
* `system_setup` → service configuration

**Automation Techniques**

* Loops (`for`) for repetitive tasks
* Variables for dynamic values
* Conditions (`if`) for validations
* Functions for reusable logic

---

**Handling Sensitive Data**
Passwords are passed as arguments:

```bash
./mysql.sh MySecurePassword
./dispatch.sh RabbitMQPassword
```

* Avoids hardcoding secrets
* Improves security

---

**Example Execution**

```bash
bash frontend.sh
bash mongodb.sh
bash catalogue.sh
```

---

**Troubleshooting**

**Check logs**

```bash
cat /tmp/roboshop.log
```

**Check service status**

```bash
systemctl status nginx
```

**Check running processes**

```bash
ps -ef | grep nginx
```

---

**Real DevOps Practices Implemented**

* Infrastructure automation
* Service management using systemd
* Log monitoring
* Modular scripting
* Error handling and validation

---

**Future Improvements**

* Convert scripts to Ansible playbooks
* Implement CI/CD pipeline
* Add monitoring (Prometheus, Grafana)
* Containerization using Docker

---

**Conclusion**
This project demonstrates how shell scripting can be used to automate the deployment of a real-world microservices application and forms the foundation for advanced DevOps tools like Ansible and Terraform.

---

**Author**
Sairam - DevOps Learner

