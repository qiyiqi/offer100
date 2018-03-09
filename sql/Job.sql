create table Job
	(
		j_id int unsigned not null auto_increment primary key,
		j_name varchar(20) not null,
		j_location varchar(255) not null,
		j_describe varchar(500) not null,
		j_time datetime not null,
		j_require varchar(500) not null,
		j_salary varchar(20) not null,
		j_type varchar(12) not null,
		c_id int(12) not null
	);