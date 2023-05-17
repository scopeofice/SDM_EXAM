create table Candidate(
candidate_id int primary key,
first_name VARCHAR(20) Not Null,
last_name VARCHAR(20) Not Null,
email VARCHAR(20) Unique Not Null,
mobile_no VARCHAR(20),
address VARCHAR(255),
description VARCHAR(2000));

create table Role(
role_id int primary key,
role_name varchar(20)
);

create table User(
user_id int primary key,
username varchar(20) unique not null,
password varbinary(20) not null,
email varchar (20) unique not null,
role_id int,
foreign key fk1(role_id) references Role(role_id)
);

create table Application(
application_id int primary key,
job_id int,
candidate_id int,
application_date date not null,
status varchar(20) not null,
foreign key fkc(candidate_id) references Candidate(candidate_id)
);

create table Job(
job_id int primary key,
job_title varchar(20) not null,
company_name varchar(20) not null,
description VARCHAR(255) Not Null,
requirements VARCHAR(255) Not Null,
application_deadline Date Not Null
);

create table Interview(
interview_id int primary key,
job_id int,
foreign key fk4(job_id) references job(job_id),
candidate_id int,
foreign key fk5(candidate_id) references Candidate(candidate_id),
interview_date date not null
);