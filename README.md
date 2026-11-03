# Streaming-ETL-Pipeline-using-Kafka

Data pipeline that collects streaming data and loads it into a database. The data is artificially generated to simulate vehicles passing through a toll plaza. This would then allow to analyze the road traffic.

- Producer: It generates synthetic data about vehicles passing through toll plazas and sends that data to a Kafka topic called toll.
- Topic: The topic created is named 'toll'
- Consumer: It connects to the tolldata database, creates a Kafka Consumer and subscribes to the 'toll' topic where the producer publishes the vehicle data, reads the incoming messages, extracts the information, transforms the data and loads it into MySQL.

Execution order:
- start_kafka.sh: Configure KRaft and start server.
- setup_database.sql: Creates a database and a table to store live toll data.
- create_topic.sh: Creates a topic named 'toll'.
- producer.py: Generate synthetic data.
- consumer.py: Receives the streaming data and stores it in a MySQL database.

The streaming toll data will get stored in the table livetolldata, in the database tolldata.

Note: Python modules kafka-python and mysql-connector-python need to be installed.
