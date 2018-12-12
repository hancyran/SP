insert into school_info values(1000, 0, '四川大学', '江安校区', '四川省', '成都市');
insert into school_info values(1000, 1, '四川大学', '望江校区', '四川省', '成都市');
insert into school_info values(1000, 2, '四川大学', '华西校区', '四川省', '成都市');

insert into course_info values(1, '工科类', 0);
insert into course_info values(2, '理科类', 0);
insert into course_info values(3, '文科类', 0);
insert into course_info values(4, '艺术类', 0);
insert into course_info values(5, '其他类', 0);
insert into course_info values(10, '计算机', 1);
insert into course_info values(100, '数据库', 10);
insert into course_info values(101, '数据结构', 10);

insert into user_info values(1, 'xiaohong', 'f', '110', 'xiaohong', '123456', 1000,0, 'cs','no');
insert into user_info values(2, 'xiaolan', 'f', '120', 'xiaohong', '1234567', 1000,1, 'ee','no');
insert into user_info values(3, 'xiaolv', 'f', '119', 'xiaohong', '12345678', 1000, 1, 'stata','yes');
insert into account values(1,1,'username','xiaohong', '123');
insert into account values(2,1,'phone', '1588888888', '123');
insert into account values(3,2,'username','xiaolan', '123');
insert into account values(4,2,'email','123@qq.com', '123');
insert into account values(5,3,'username','xiaolv', '123');

insert into seller_info values(1, 3, '小律', 1000, 1, '2016141400000');

insert into order_info values(1, 100, '数据库原理与实践','数据库的基本常识和应用', 1000,  1,1, 1, '进行中', 100, null, null, null);
insert into order_info values(2, 100, '数据库设计', '数据库的基本常识和应用',1000,  1,1, null, '等待中', 200, null, null, null);
insert into order_info values(3, 100, '数据库高级编程', '数据库的基本常识和应用',1000,0, 1, null, '等待中', 100, null, null, null);
insert into order_info values(4, 101, '数据结构', 'c++应用数据结构',1000,  1,1, 1, '进行中', 100, null, null, null);
insert into order_info values(5, 100, '高级数据库设计', '数据库的基本常识和应用', 1000, 1,1, null, '等待中', 200, null, null, null);
insert into order_info values(6, 100, 'MYSQL的数据库应用','数据库的基本常识和应用',1000, 0, 1, null, '等待中', 100, null, null, null);
insert into order_info values(7, 100, '数据库实战', '数据库的基本常识和应用',1000,  1,1, 1, '进行中', 100, null, null, null);
insert into order_info values(8, 100, '大数据应用', '数据库的基本常识和应用',1000,  1,1, null, '等待中', 200, null, null, null);
insert into order_info values(9, 100, 'python数据分析','数据库的基本常识和应用',1000,  0, 1, null, '等待中', 100, null, null, null);
insert into order_info values(10, 100, 'python数据分析','数据库的基本常识和应用',1000,  0, 1, null, '等待中', 100, null, null, null);
insert into order_info values(11, 100, '数据科学入门','数据库的基本常识和应用',1000,  0, 1, null, '等待中', 100, null, null, null);
