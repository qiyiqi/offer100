create table Company
	(
		c_id int unsigned not null auto_increment primary key,
		c_name varchar(20) not null,
		c_password varchar(20),
		c_phone varchar(12) ,
		c_location varchar(255) not null,
		c_email varchar(64) not null,
		c_time datetime not null,
		c_description varchar(255) ,
		c_photo varchar(255),
		c_type varchar(12) not null,
		c_flag int not null
	);