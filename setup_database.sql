
--CREATE DATABASE AND TABLE FOR STORING LIVE TOLL DATA

CREATE DATABASE tolldata;
USE tolldata;
CREATE TABLE livetolldata(
    timestamp datetime,
    vehicle_id int,
    vehicle_type char(15),
    toll_plaza_id smallint);
