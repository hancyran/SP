insert into school_info values(1000, 0, '四川大学', '江安校区', '四川省', '成都市');
insert into school_info values(1000, 1, '四川大学', '望江校区', '四川省', '成都市');
insert into school_info values(1000, 2, '四川大学', '华西校区', '四川省', '成都市');

insert into course_info (id, name, parent_id) values(1, '工科类', 0);
insert into course_info (id, name, parent_id) values(2, '理科类', 0);
insert into course_info (id, name, parent_id) values(3, '文科类', 0);
insert into course_info (id, name, parent_id) values(4, '艺术类', 0);
insert into course_info (id, name, parent_id) values(5, '其他类', 0);
insert into course_info (id, name, parent_id) values(10, '计算机', 1);
insert into course_info (id, name, parent_id) values(100, '数据库', 10);
insert into course_info (id, name, parent_id) values(101, '数据结构', 10);

insert into user_info (username, gender, tel, wechat, qq, school_id, campus_id, major, balance, verification)
  values('xiaohong', 'f', '110', 'xiaohong', '123456', 1000, 0, 'cs', 10, 'no');
insert into user_info (username, gender, tel, wechat, qq, school_id, campus_id, major, balance, verification)
  values('xiaolan', 'f', '120', 'xiaohong', '1234567', 1000,1, 'ee', 0, 'no');
insert into user_info (username, gender, tel, wechat, qq, school_id, campus_id, major, balance, verification)
  values('xiaolv', 'f', '119', 'xiaohong', '12345678', 1000, 1, 'stata',1000, 'yes');

insert into account (user_id, identify_type, identifier, login_token) values(1,'username','xiaohong', '123');
insert into account (user_id, identify_type, identifier, login_token) values(1,'phone', '1588888888', '123');
insert into account (user_id, identify_type, identifier, login_token) values(2,'username','xiaolan', '123');
insert into account (user_id, identify_type, identifier, login_token) values(2,'email','123@qq.com', '123');
insert into account (user_id, identify_type, identifier, login_token) values(3,'username','xiaolv', '123');

insert into seller_info (uid, real_name, real_school_id, real_campus_id, real_stu_id, balance)
  values(3, '小律', 1000, 1, '2016141400000', 100);
insert into seller_info (uid, real_name, real_school_id, real_campus_id, real_stu_id, balance)
  values(2, '小红', 1000, 0, '2016141499999', 1000);

insert into order_info (cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values(100, '数据库原理与实践','数据库的基本常识和应用', 1000,  1,1, 1, '2', 100, null, null, null);
insert into order_info (cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values(100, '数据库设计', '数据库的基本常识和应用',1000,  1,1, null, '0', 200, null, null, null);
insert into order_info (cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, '数据库高级编程', '数据库的基本常识和应用',1000,0, 1, null, '0', 100, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values(101, '数据结构', 'c++应用数据结构',1000,  1,1, 1, '2', 100, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, '高级数据库设计', '数据库的基本常识和应用', 1000, 1,1, null, '0', 200, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, 'MYSQL的数据库应用','数据库的基本常识和应用',1000, 0, 1, null, '0', 100, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, '数据库实战', '数据库的基本常识和应用',1000,  1,1, 1, '2', 100, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, '大数据应用', '数据库的基本常识和应用',1000,  1,1, null, '0', 200, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, 'python数据分析','数据库的基本常识和应用',1000,  0, 1, null, '0', 100, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, 'python数据分析','数据库的基本常识和应用',1000,  0, 1, null, '0', 100, null, null, null);
insert into order_info ( cid, class_name, description, school_id, campus_id, seller_id, buyer_id, status, price, rate, comment, trace)
  values( 100, '数据科学入门','数据库的基本常识和应用',1000,  0, 1, null, '0', 100, null, null, null);
