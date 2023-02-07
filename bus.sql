create table world.buses (id integer primary key, 
origin varchar(50), destination varchar(50), time varchar(50), 
unique (origin, destination, time) ); 
create table world.passengers ( id integer primary key, origin varchar(50) not null,
destination varchar(50) not null, time varchar(50) not null );
insert into world.buses (id, origin, destination, time) values (10, 'Warsaw', 'Berlin' , '10:55');
insert into world.buses (id, origin, destination, time) values (20,  'Berlin' , 'Paris' , '06:20');
insert into world.buses (id, origin, destination, time) values (21,  'Berlin' , 'Paris' , '14:00');
insert into world.buses (id, origin, destination, time) values (22,  'Berlin' , 'Paris' , '21:40');
insert into world.buses (id, origin, destination, time) values (30, 'Paris', 'Madrid' , '13:30');

insert into world.passengers (id, origin, destination, time) values (1 , 'Paris' , 'Madrid' , '13:30');
insert into world.passengers (id, origin, destination, time) values (2 , 'Paris' , 'Madrid' , '13:31');
insert into world.passengers (id, origin, destination, time) values (10 , 'Warsaw', 'Paris' , '10:00');
insert into world.passengers (id, origin, destination, time) values (11 , 'Warsaw', 'Berlin', '22:31');
insert into world.passengers (id, origin, destination, time) values (40 , 'Berlin', 'Paris' , '06:15');
insert into world.passengers (id, origin, destination, time) values (41 , 'Berlin', 'Paris' , '06:50');
insert into world.passengers (id, origin, destination, time) values (42 , 'Berlin', 'Paris' , '07:12');
insert into world.passengers (id, origin, destination, time) values (43 , 'Berlin', 'Paris' , '12:03');
insert into world.passengers (id, origin, destination, time) values (44 , 'Berlin', 'Paris' , '20:00');
delete  from world.buses;
delete  from world.passengers;

insert into world.buses(id,origin,destination,`time`) values (100,'Munich','Rome','13:00');
insert into world.buses(id,origin,destination,`time`) values (200,'Munich','Rome','15:30');
insert into world.buses(id,origin,destination,`time`) values (300,'Munich','Rome','20:00');

insert into world.passengers(id,origin,destination,`time`) values (1,'Munich','Rome','10:01');
insert into world.passengers(id,origin,destination,`time`) values (2,'Munich','Rome','11:30');
insert into world.passengers(id,origin,destination,`time`) values (3,'Munich','Rome','11:30');
insert into world.passengers(id,origin,destination,`time`) values (4,'Munich','Rome','12:03');
insert into world.passengers(id,origin,destination,`time`) values (5,'Munich','Rome','13:00');

select * from world.buses;
select * from world.passengers;
delete from world.buses where id > 50;