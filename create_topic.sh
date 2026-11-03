
#!/bin/bash

cd kafka_2.12-3.7.0
bin/kafka-topics.sh --create --topic toll --bootstrap-server localhost:9092
