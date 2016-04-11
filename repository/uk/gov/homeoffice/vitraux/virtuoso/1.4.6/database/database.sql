CREATE DATABASE IF NOT EXISTS vitraux;
USE vitraux;


CREATE TABLE IF NOT EXISTS ci_environment (
	ip varchar(32) NOT NULL,	
	type varchar(256) NOT NULL,
	info text,
	PRIMARY KEY (ip)
);


CREATE TABLE IF NOT EXISTS perftest_suite (
	id int NOT NULL AUTO_INCREMENT,
	installation_dir varchar(256) NOT NULL,
	test_name varchar(256) NOT NULL,
	project_name varchar(256) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS perftest_suite_execution (
	id int NOT NULL AUTO_INCREMENT,
	build int NOT NULL,
	perftest_suite_id int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (perftest_suite_id) REFERENCES perftest_suite(id)
);	


CREATE TABLE IF NOT EXISTS perftest_suite_execution_results (
	id int NOT NULL AUTO_INCREMENT,
	type varchar(256) NOT NULL,
	value varchar(256) NOT NULL,
	perftest_suite_execution_id int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (perftest_suite_execution_id) REFERENCES perftest_suite_execution(id)		
);
