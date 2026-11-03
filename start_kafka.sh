
#!/bin/bash

#CONFIGURE KRaft AND START SERVER

#Enter Kafka directory
cd kafka_2.12-3.7.0 

#Generate a cluster UUID that will uniquely identify the Kafka cluster.
KAFKA_CLUSTER_ID="$(bin/kafka-storage.sh random-uuid)"

#Configure the log directories
bin/kafka-storage.sh format -t $KAFKA_CLUSTER_ID -c config/kraft/server.properties

#Start the Kafka server
bin/kafka-server-start.sh config/kraft/server.properties

