#!/bin/bash
TIME=10
echo "Starting container as user: $(whoami)"

echo "Starting services..."
service nginx start

while [ -z ]
do
    sleep ${TIME}
done