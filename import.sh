#!bin/bash

HOST="localhost"
PORT="37017"
USER="\"SYS\""
PASSWD="\"SYS\""

echo "LOADING COMMENTS..."
mongoimport --host $HOST --port $PORT -u $USER -p $PASSWD --db movies --collection comments --file comments.json --authenticationDatabase admin
echo "LOADING MOVIES..."
mongoimport --host $HOST --port $PORT -u $USER -p $PASSWD --db movies --collection movies --file movies.json --authenticationDatabase admin
echo "LOADING SESSIONS..."
mongoimport --host $HOST --port $PORT -u $USER -p $PASSWD --db movies --collection sessions --file sessions.json --authenticationDatabase admin
echo "LOADING THEATERS..."
mongoimport --host $HOST --port $PORT -u $USER -p $PASSWD --db movies --collection theaters --file theaters.json --authenticationDatabase admin
echo "LOADING USERS..."
mongoimport --host $HOST --port $PORT -u $USER -p $PASSWD --db movies --collection users --file users.json --authenticationDatabase admin
