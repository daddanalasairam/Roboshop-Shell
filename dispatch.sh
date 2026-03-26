source common.sh
app_name=dispatch

if [ -z "$1" ]; then
  echo Input Rabbitmq Password is missing
  exit 1
fi

golang