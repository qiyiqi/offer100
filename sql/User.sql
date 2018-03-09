create table User
	(
		u_id int unsigned not null auto_increment primary key,
		u_name varchar(20) not null,
		u_password varchar(20) not null,
		u_email varchar(64) not null,
		u_phone varchar(12) ,
		u_photo varchar(255)
	);