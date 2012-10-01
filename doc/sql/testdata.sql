USE vdl;

INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test1@vdongli.com', 'test1', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test2@vdongli.com', 'test2', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test3@vdongli.com', 'test3', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test4@vdongli.com', 'test4', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test5@vdongli.com', 'test5', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test6@vdongli.com', 'test6', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test7@vdongli.com', 'test7', sha1('test'), now());

/* 注意，最初base_price的单位是分，后来改成了厘，所有任务的base_price被更新为自身的十倍，在本文件的最后 */
/* create & review tasks
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 3, 1, 'review', '11142488880', 6, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 2, 2, 'review', '11414288880', 4, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 3, 1, 'review', '11412488880', 8, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 2, 2, 'review', '11412488880', 6, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 7, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 3, 1, 'review', '11142848880', 2, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 20, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 2, 2, 'review', '11414828880', 2, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 15, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 3, 1, 'review', '11142484880', 5, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 13, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_sina_wid, base_price, amount, finish_amount)values (NULL, 2, 2, 'review', '11414287880', 8, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, type, task_text, base_price, amount, finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 13, 150, 139);
*/

/* forward_tasks*/
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3492698507929504', '如洗秋冬款上新，实体与网店同时销售。网店：http://t.cn/h9k5T3','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43tw1dx43zo03tbj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43tw1dx43zo03tbj.jpg', 'http://ww3.sinaimg.cn/large/75abfa43tw1dx43zo03tbj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3489045252397835', '白露降，秋风起，如洗亚麻围巾上市，北京国子监店和网店同步销售','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dwsgf5ror4j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dwsgf5ror4j.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dwsgf5ror4j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3483238506588417', '再见，南锣鼓巷！再见，小菊儿胡同！如洗在南锣鼓巷三年整，见证了南锣鼓巷的风雨变迁，恍然若梦。这些照片记录了如洗南锣鼓巷店三年的点点滴滴。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dw9xi64p3hj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dw9xi64p3hj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dw9xi64p3hj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3476074471977047', '风青窑全手工茶器系列\'质朴的茶器\'朴素的人生。如洗国子监店有售','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dvn2qzklpdj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dvn2qzklpdj.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dvn2qzklpdj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3475729737681875', '可爱的莲蓬\'茶席添精神','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dvlz5nz810j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dvlz5nz810j.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dvlz5nz810j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3474964139263889', '如洗夏装：香云纱拼色长裙，夏日里最舒适的衣物。 薯莨和泥浆共同作用，大自然创造出的奇特面料。 实体淘宝共同销售！','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dvjj7uclwoj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dvjj7uclwoj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dvjj7uclwoj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3474568775825804', '阴沉了几日\'北京终于有了晴天\'一抹绿意\'换种心情','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dvi9tmv4csj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dvi9tmv4csj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dvi9tmv4csj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3473894172773931', '如洗搭配新品：棉麻混纺的拼色布包。 两根细带子，可以单肩也可以斜挎。 内部有棉质里衬和一个小口袋。 实体淘宝同时销售','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dvg4c9edaaj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dvg4c9edaaj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dvg4c9edaaj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3473572893004160', '国子监\'屋漏痕\'😂','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dvf3g3k46mj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dvf3g3k46mj.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dvf3g3k46mj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3473553552989639', '如洗国子监店内布局调整\'小细节','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dvf185x55lj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dvf185x55lj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dvf185x55lj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3466321495254535', '经过一天的奋战\'地面问题基本解决。明天凉一天\'后天国子监店就可营业了。所有的杂物都堆在茶室\'倒也彼此契合!','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1durymvwck6j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1durymvwck6j.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1durymvwck6j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3466031009724640', '如洗国子监店内部整修\'周二周三暂停营业\'特此公告!','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dur19w7v5bj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dur19w7v5bj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dur19w7v5bj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3465493513969404', '店内一角，铁莲蓬画意十足。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dupbjiau59j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dupbjiau59j.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dupbjiau59j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3464595178306805', '推荐: 豆瓣音乐·音乐人莫西子诗乐队的歌曲 当风儿吹过这里 故乡已很遥远 http://t.cn/aR1waO 真过瘾！','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dumgddrn9cj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dumgddrn9cj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dumgddrn9cj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3463368234942051', '如洗盛夏清凉系列之绿翼篇 :最热的时候我们选用了最薄的苎麻,如蝉翼.飘逸俊朗之美! 购买请移步：http://t.cn/h9k5T3','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1duijf6fsq3j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1duijf6fsq3j.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1duijf6fsq3j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3460498848524526', '如洗夏装，女款麻长衫，好看的红，沉静，自然，内敛而有态度。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1du9dwu3csgj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1du9dwu3csgj.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1du9dwu3csgj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3458965738173943', '如洗香云纱系列新品：疏影 国子监店和网店同时销http://t.cn/zWZuIQ3','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1du4hu4qwekj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1du4hu4qwekj.jpg', 'http://ww3.sinaimg.cn/large/75abfa43jw1du4hu4qwekj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3457271915292783', '如洗国子监店内一角：民间黑陶罐魅力再现','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dtz3b0oxu0j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dtz3b0oxu0j.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dtz3b0oxu0j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3456541455754714', '下雨天的好处就是可以早收工!明天见','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtwrew2kr5j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtwrew2kr5j.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dtwrew2kr5j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3456475827859738', '风青窑茶器系列\'手工\'自然\'值得品味。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtwjvjtqxij.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtwjvjtqxij.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dtwjvjtqxij.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3455049085221251', '黑云翻墨','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dts00n1s92j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dts00n1s92j.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dts00n1s92j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3455000304909909', '汝州张公巷窑冰裂碗','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dtruey5rn5j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dtruey5rn5j.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dtruey5rn5j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3454222848555370', '如洗新品：香云纱背心裙，简洁，气质。国子监店与淘宝同时销售.','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtpd4h3wurj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtpd4h3wurj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dtpd4h3wurj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3452064036753689', '天津老建筑之紫竹林教堂','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dtih6tosp8j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dtih6tosp8j.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dtih6tosp8j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3451395363045534', '难得好天气，最美的阳光从天窗而入，风青窑别有风致。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dtgcd7cc7pj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dtgcd7cc7pj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dtgcd7cc7pj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3450269117959682', '当足够有空闲的时间的时候，如洗会开一间卖植物的店，满眼绿色总会让人心情变好。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dtcr1ll2wkj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dtcr1ll2wkj.jpg', 'http://ww3.sinaimg.cn/large/75abfa43jw1dtcr1ll2wkj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3449915197982157', '如洗初夏新品：香云纱围巾。夏天是展现香云纱魅力的季节了！如洗国子监店有售','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtbmeanh9gj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtbmeanh9gj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dtbmeanh9gj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3448447996524693', '丝麻衣衫，清凉一夏;不尚华饰，质素如洗。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dt6xvsfes8j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dt6xvsfes8j.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dt6xvsfes8j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3445557672949450', '在国子监店里酣睡的猪猪，俨然一副主人的架势。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dsxpxvydw1j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dsxpxvydw1j.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dsxpxvydw1j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3444546165954696', '川瀬敏郎作品，几张自己很喜欢的，住到山里就可以自己侍弄花草了@石头青 @逗号163 @peipei懂','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dsuhrqzwttj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dsuhrqzwttj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dsuhrqzwttj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3444079499192119', '有阳光的时候，来一泡老枞水仙最是惬意！','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dst06aflmqj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dst06aflmqj.jpg', 'http://ww3.sinaimg.cn/large/75abfa43jw1dst06aflmqj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3443805015158503', '中国美术馆的一个展览 《伯胡斯拉夫·雷聂克——捷克的现代隐士》14号结束。挺好！看后有两个启发：一是画不在大，二是艺术家要活在自己的世界里。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dss4ngeysaj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dss4ngeysaj.jpg', 'http://ww3.sinaimg.cn/large/75abfa43jw1dss4ngeysaj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3443791253927013', '野口勇，这个好','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dss32mlwqgj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dss32mlwqgj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dss32mlwqgj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3441910129476653', '棉麻布衣，清凉一夏。如洗新品。实体淘宝同时销售','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dsm30wr3jkj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dsm30wr3jkj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dsm30wr3jkj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3437961834102885', '如洗半日闲茶室已经开业一月有余，是新老朋友相聚的小沙龙。于我们自己真是偷得浮生半日闲了。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1ds9hkk6lwuj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1ds9hkk6lwuj.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1ds9hkk6lwuj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3436192135513483', '《东方一周》对如洗国子监的报道，感谢,感谢!','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1ds3ubq8syzj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1ds3ubq8syzj.jpg', 'http://ww3.sinaimg.cn/large/75abfa43jw1ds3ubq8syzj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3430145539152201', '分享夙焉的博文：不尚华饰，质素如洗。 推荐给@头条博客 http://t.cn/zOSBv09 （分享自 @头条博客）','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1drkjvusdwlj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1drkjvusdwlj.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1drkjvusdwlj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3429955197182465', '不要辜负了这么好的阳光，半日闲茶舍新到明前龙井，碧螺春。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1drjy0uuv3sj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1drjy0uuv3sj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1drjy0uuv3sj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3427784141412919', '最喜欢海子的《祖国或以梦为马》 我要做远方的忠诚的儿子 和物质的短暂情人 和所有以梦为马的诗人一样 我不得不和烈士和小丑走在同一道路上 万人都要将火熄灭，我一人独将此火高高举起 此火为大，开花落英于神圣的祖国 和所有以梦为马的诗人一样 我藉此火得度一生的茫茫黑夜','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', '', '', '');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3426504639437582', '如洗半日闲茶舍，难得如此安静。推荐冈仓天心 Okakura Kakuzo的《茶之书》。译者: 郑夙恩。一定是这个译本的才好读！','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dr8xqcwe09j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dr8xqcwe09j.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dr8xqcwe09j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3425971992387313', '如洗国子监店和风青窑合作，展示出售他们的作品。主要是以茶器为主，都是手工拉胚高温烧制而成。从小小的茶器上面可以看到他们的执着和坚持，可以感受到他们的温度。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dr78ckl1q9j.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dr78ckl1q9j.jpg', 'http://ww3.sinaimg.cn/large/75abfa43jw1dr78ckl1q9j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3425421259422903', '如洗国子监店现已正式开业。整体分为两个区域。一个是如洗产品区，有如洗原创服饰（棉麻和香云纱）和陶艺家的手工茶器。另一个区域是半日闲茶舍，喜欢饮茶的朋友可以在茶舍品茶。欢迎大家来成贤街小坐⋯⋯','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dr5h57hysrj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dr5h57hysrj.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dr5h57hysrj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3424936619891473', '如洗出品，简洁款的长袍子，用蓝色和灰色拼起来。春日里的好伙伴。如洗南锣店国子监店有售。网店：http://t.cn/h9k5T3','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dr3xna6axtj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dr3xna6axtj.jpg', 'http://ww3.sinaimg.cn/large/75abfa43jw1dr3xna6axtj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3423085434371479', '经过一个月的努力，如洗国子监店定于本周末（3月17日）下午三点正式开业。敬请各位朋友到时大驾光临。我们会准备好音乐美酒在店里静候！地址：国子监55号（近安定门内）@蔡蛋挞@友雅youya @李沐夏同学_小五 i@古奇高 @pinking墨白@brandnu @狸空@石头青 @冬子-十方 @山人乐队小不点@铃木兔子@张啸吟','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dqy11hvkgdj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dqy11hvkgdj.jpg', 'http://ww2.sinaimg.cn/large/75abfa43jw1dqy11hvkgdj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3422319118633207', '如洗今年筹备的新店即将开业，位置在北京东城国子监55号。如洗将以一个全新的面貌展示给大家，敬请关注。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dqvl10oc08j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dqvl10oc08j.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dqvl10oc08j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3420524937917828', '如洗春装全面上新，北京如洗南锣鼓巷店有售','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dqpuz13yemj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dqpuz13yemj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43jw1dqpuz13yemj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3420168959010717', '如洗亚麻围巾，春日百搭，雅致灰','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dqoq34xp1rj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dqoq34xp1rj.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dqoq34xp1rj.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3419566732018496', '如洗春装新款，如洗南锣店有售','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dqmsx9lir3j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dqmsx9lir3j.jpg', 'http://ww1.sinaimg.cn/large/75abfa43jw1dqmsx9lir3j.jpg');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3418890803275845', '如洗新店即将开张，现招聘店员两名。 要求：1 善于沟通， 能进行简单英语交流。 2 勤奋，能吃苦耐劳。 3 诚实，善良，不撒谎，人品好。 4 认可如洗理念，能踏实的做事。 人员要求：专职一名，兼职一名。 有意者简历发至ruxixiaoba@yahoo.cn，或致电18600260114。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', '', '', '');
insert into task (owner_id, publisher_id, type, base_price, amount, finish_amount, status) values (2, 3, 1, 500, 300, 10, 1);
insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '1974204995', '3394095386785019', '冬日里难得一抹新绿，铜钱草是很倔强的，只要有阳光，就坚强无比。','如洗ruxi', NULL, NULL, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 'http://ww4.sinaimg.cn/thumbnail/75abfa43tw1dodjkx4bhkj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43tw1dodjkx4bhkj.jpg', 'http://ww4.sinaimg.cn/large/75abfa43tw1dodjkx4bhkj.jpg');
/* forward_tasks*/


/* follow_tasks */
INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2515351620', '冷蟹鸟', '113', '260', '344', 'http://tp1.sinaimg.cn/2515351620/50/39998172029/0', 'http://tp1.sinaimg.cn/2515351620/180/39998172029/0', '其他', '闲人莫入');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1678105910', 'turbosun', '259', '3168197', '846', 'http://tp3.sinaimg.cn/1678105910/50/5641780695/0', 'http://tp3.sinaimg.cn/1678105910/180/5641780695/0', '北京 朝阳区', '1+1=3');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2094818663', 'EQIQ-中国', '698', '38726', '1531', 'http://tp4.sinaimg.cn/2094818663/50/5602991020/0', 'http://tp4.sinaimg.cn/2094818663/180/5602991020/0', '北京', 'EQ:IQ，平衡着理性与感性为一体。设计理念超越了简单的时装和生活概念，为自信独立的现代女性在生活中找到新的程序。EQ:IQ的时装、配饰...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1676686060', '金拍拍ELLE', '478', '10720', '1319', 'http://tp1.sinaimg.cn/1676686060/50/1293276701/0', 'http://tp1.sinaimg.cn/1676686060/180/1293276701/0', '北京', 'ELLE杂志时装编辑 拍下去');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1871589284', 'April魔力释月在ELLE', '370', '1105', '358', 'http://tp1.sinaimg.cn/1871589284/50/5611406366/0', 'http://tp1.sinaimg.cn/1871589284/180/5611406366/0', '上海', 'Magic April @ELLE China 广告总监');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1751502302', 'Bianca陈必涵', '229', '1069', '265', 'http://tp3.sinaimg.cn/1751502302/50/5632879220/0', 'http://tp3.sinaimg.cn/1751502302/180/5632879220/0', '北京', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1586817713', 'Barbara芭芭拉', '508', '4520', '1083', 'http://tp2.sinaimg.cn/1586817713/50/1279594148/0', 'http://tp2.sinaimg.cn/1586817713/180/1279594148/0', '北京 朝阳区', '香港出生，台湾长大，美国念书、工作，回台湾和外派北京工作的幸福北京媳妇儿~~~!!');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1743841835', 'D4Duke', '603', '1667', '1387', 'http://tp4.sinaimg.cn/1743841835/50/39998192304/1', 'http://tp4.sinaimg.cn/1743841835/180/39998192304/1', '上海', '做一件事 过一种生活 爱一个人');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1850194261', 'CloeDong', '269', '555', '805', 'http://tp2.sinaimg.cn/1850194261/50/5642415959/0', 'http://tp2.sinaimg.cn/1850194261/180/5642415959/0', '上海 黄浦区', '我是叶三三。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1885349431', 'Tracysays', '623', '536', '0', 'http://tp4.sinaimg.cn/1885349431/50/5636638321/0', 'http://tp4.sinaimg.cn/1885349431/180/5636638321/0', '北京 朝阳区', '且行且珍惜。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1400019342', '赵清晖', '864', '9018', '5549', 'http://tp3.sinaimg.cn/1400019342/50/5638108964/0', 'http://tp3.sinaimg.cn/1400019342/180/5638108964/0', '北京 海淀区', '无半点闲愁去处，问三生醉梦何如？');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1465156082', 'Crystal郭璐巍', '802', '17310', '366', 'http://tp3.sinaimg.cn/1465156082/50/40000573445/0', 'http://tp3.sinaimg.cn/1465156082/180/40000573445/0', '上海', '真正的奢侈是自由，最真的自由是心的自在。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1677435801', '朱湉默Lulu', '662', '1425', '2796', 'http://tp2.sinaimg.cn/1677435801/50/40002238839/0', 'http://tp2.sinaimg.cn/1677435801/180/40002238839/0', '上海 静安区', 'Tianmo Zhu, PR manager, In The Cut Entertainment (DC，Thomas Sabo, Veld\'s)/ Marketing and Communications Manager, Ivanka Trump Fine Jewelry');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2827518980', 'DSQUARED2官方微博', '82', '646', '268', 'http://tp1.sinaimg.cn/2827518980/50/5635670247/0', 'http://tp1.sinaimg.cn/2827518980/180/5635670247/0', '海外', '加拿大安大略 Willowdale 的孪生兄弟，迪恩 和丹 ·卡登 ，自1984年即进入国际时装行业。 1983他们到纽约帕森设计学院学...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1784530397', '艺述英国', '398', '21767', '1679', 'http://tp2.sinaimg.cn/1784530397/50/5625495241/1', 'http://tp2.sinaimg.cn/1784530397/180/5625495241/1', '北京 朝阳区', '“UK Now艺述英国”是有史以来在中国举办的最大规模的英国艺术和创意产业盛会，于2012年4月至11月在中国开展。从展览到音乐会，数百场世界级精彩活动…');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1707002743', 'loonyjane', '1096', '510', '0', 'http://tp4.sinaimg.cn/1707002743/50/5603897622/0', 'http://tp4.sinaimg.cn/1707002743/180/5603897622/0', '北京', '小娇桑');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1831264503', '维他命羊', '1764', '6607', '6541', 'http://tp4.sinaimg.cn/1831264503/50/5617440123/0', 'http://tp4.sinaimg.cn/1831264503/180/5617440123/0', '北京 朝阳区', '世界上绝对有绝对美味。抱着信念寻觅。原微博账号：Beijinger羊; 原英文美食评论：http://www.thebeijinger.com/blog/Emily-Young');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2902902852', 'ELLE杂志专题组', '117', '668', '51', 'http://tp1.sinaimg.cn/2902902852/50/39996725405/0', 'http://tp1.sinaimg.cn/2902902852/180/39996725405/0', '上海', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1729987717', '阿卓卓', '258', '175128', '1741', 'http://tp2.sinaimg.cn/1729987717/50/1284434998/1', 'http://tp2.sinaimg.cn/1729987717/180/1284434998/1', '上海', '香港美食家，擅长红酒评论。典型水瓶男。对待美食，如对待工作一般追求完美。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2784961470', 'LABCONCEPT', '76', '593', '136', 'http://tp3.sinaimg.cn/2784961470/50/5635922722/0', 'http://tp3.sinaimg.cn/2784961470/180/5635922722/0', '香港', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1737940181', '许宇_Leo_Xu', '1129', '2117', '3937', 'http://tp2.sinaimg.cn/1737940181/50/5622838690/1', 'http://tp2.sinaimg.cn/1737940181/180/5622838690/1', '上海', 'i am a rock, i am an island.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1743015854', '龙虾派', '288', '244', '1351', 'http://tp3.sinaimg.cn/1743015854/50/5610804396/0', 'http://tp3.sinaimg.cn/1743015854/180/5610804396/0', '北京 东城区', 'BeiJing Tatler杂志社');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1729330773', '鄭紹康天下第一關', '1024', '251906', '4223', 'http://tp2.sinaimg.cn/1729330773/50/39999910012/1', 'http://tp2.sinaimg.cn/1729330773/180/39999910012/1', '香港', 'Occasions天機公關行政總裁Francis, 在香港從事公關工作多年，經常來回北京上海，接觸最新國際時尚品牌潮流資訊，每天踫到星閃閃的明星名人好朋友！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1970143097', 'JOYCE载思', '222', '57820', '790', 'http://tp2.sinaimg.cn/1970143097/50/40002921019/0', 'http://tp2.sinaimg.cn/1970143097/180/40002921019/0', '香港 其他', 'JOYCE为全亚洲最权威的时尚名所。\r\n\r\n早在1971年，JOYCE已率先发掘国际设计师，并把他们的作品引进香港，自此成为本地高级零售...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1429378714', '果果揪叉发', '554', '1484', '3862', 'http://tp3.sinaimg.cn/1429378714/50/5642825285/0', 'http://tp3.sinaimg.cn/1429378714/180/5642825285/0', '北京', '寻求意义又难逃虚无。 我会永远珍惜你我。 www.wei77guo.com 微博加V请私信。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1777390657', 'Lola-Qmeng', '0', '0', '0', 'http://tp2.sinaimg.cn/1777390657/50/5642513609/0', 'http://tp2.sinaimg.cn/1777390657/180/5642513609/0', '北京 西城区', 'I take everthing as a life experience, even it hurts. PS：想要加v的可以私信我，新浪加v绝对不收钱的o~');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2359562882', '僵尸小小郎君Apple', '205', '180', '775', 'http://tp3.sinaimg.cn/2359562882/50/5638708286/0', 'http://tp3.sinaimg.cn/2359562882/180/5638708286/0', '上海 卢湾区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1738572122', '音爷爷', '187', '381', '579', 'http://tp3.sinaimg.cn/1738572122/50/40002722515/0', 'http://tp3.sinaimg.cn/1738572122/180/40002722515/0', '海外 英国', 'don\'t be a drag, just be a queen.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1285701641', '郝允祥', '455', '19488', '1390', 'http://tp2.sinaimg.cn/1285701641/50/5639190071/1', 'http://tp2.sinaimg.cn/1285701641/180/5639190071/1', '北京', '我们在坚持梦想的道路上前进...I just enjoy the show ·哈哈 GO GO GO 加油！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2760336222', 'ELLE化妆室', '30', '27340', '772', 'http://tp3.sinaimg.cn/2760336222/50/5632198868/0', 'http://tp3.sinaimg.cn/2760336222/180/5632198868/0', '上海 卢湾区', '【分享SPA经历！赢取价值千元的SPA好礼】ELLE美体频道SPA专题上线！快来分享你第一次做SPA的经历就有机会赢取丰厚SPA好礼。参...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1278873022', '小马欣哦', '495', '1496', '2613', 'http://tp3.sinaimg.cn/1278873022/50/5639451167/0', 'http://tp3.sinaimg.cn/1278873022/180/5639451167/0', '北京 朝阳区', '勿忘国耻是个好标签');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1626024097', 'ffflyy_FANG', '516', '3154', '0', 'http://tp2.sinaimg.cn/1626024097/50/1287221358/1', 'http://tp2.sinaimg.cn/1626024097/180/1287221358/1', '海外 法国', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1760534705', 'ShockingElsa', '364', '1232', '0', 'http://tp2.sinaimg.cn/1760534705/50/5621259245/0', 'http://tp2.sinaimg.cn/1760534705/180/5621259245/0', '上海', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1330629394', '孟劼', '795', '1903', '2926', 'http://tp3.sinaimg.cn/1330629394/50/5633915635/1', 'http://tp3.sinaimg.cn/1330629394/180/5633915635/1', '北京 朝阳区', '“读图时代”，带着影像思维编杂志。曾经的旅游卫视《第1时尚》电视编导，现在是Air Travel《空中生活》生活方式 编辑／记者。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1717391567', '靖儿JESSICA', '432', '1523', '5522', 'http://tp4.sinaimg.cn/1717391567/50/5635665405/0', 'http://tp4.sinaimg.cn/1717391567/180/5635665405/0', '辽宁 沈阳', '≪城市生活信报≫服装行业总监 你想怎样被对待，你就怎样对待别人！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1659896124', '张丽芬flora', '369', '511', '1520', 'http://tp1.sinaimg.cn/1659896124/50/5636689204/0', 'http://tp1.sinaimg.cn/1659896124/180/5636689204/0', '北京 东城区', '做个单细胞的生物，没心没肺的活着。 喜欢发呆，喜欢睡懒觉，更喜欢到处游荡，喜欢一切简单的事···');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1884292264', 'TracyOn', '334', '1446', '3821', 'http://tp1.sinaimg.cn/1884292264/50/5620646792/0', 'http://tp1.sinaimg.cn/1884292264/180/5620646792/0', '上海 徐汇区', '美西時尚主編www.meici.com，正在尋找上海生活樂趣，不斷在國內工作環境中自我挑戰極限');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1782559571', '有恃无恐龙小希', '221', '676', '668', 'http://tp4.sinaimg.cn/1782559571/50/5638573989/0', 'http://tp4.sinaimg.cn/1782559571/180/5638573989/0', '北京', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1688401865', 'AmyWYR', '206', '524', '0', 'http://tp2.sinaimg.cn/1688401865/50/1298125405/0', 'http://tp2.sinaimg.cn/1688401865/180/1298125405/0', '北京 朝阳区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1678469301', '固力果小姐', '455', '4453', '1561', 'http://tp2.sinaimg.cn/1678469301/50/5602586829/0', 'http://tp2.sinaimg.cn/1678469301/180/5602586829/0', '上海', 'sputnik sweetheart');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1647094302', '曹涤非', '1970', '169727', '4699', 'http://tp3.sinaimg.cn/1647094302/50/5640323470/1', 'http://tp3.sinaimg.cn/1647094302/180/5640323470/1', '北京', '以主持人职业为借口的轻度购物狂，永远预算有限的时尚投机分子， 经常疑神疑鬼的生活狗仔队员');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1734431473', 'cecilyjiang', '634', '494', '613', 'http://tp2.sinaimg.cn/1734431473/50/5642241934/0', 'http://tp2.sinaimg.cn/1734431473/180/5642241934/0', '北京', '爱自己，别做傻孩子..');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2076404295', 'BottegaVeneta-宝缇嘉', '745', '85049', '1002', 'http://tp4.sinaimg.cn/2076404295/50/5597204205/0', 'http://tp4.sinaimg.cn/2076404295/180/5597204205/0', '上海 静安区', 'When your own initials are enough');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1014930030', '法语同传哥', '1705', '9251', '15882', 'http://tp3.sinaimg.cn/1014930030/50/5628003621/1', 'http://tp3.sinaimg.cn/1014930030/180/5628003621/1', '北京 宣武区', '自由职业法语同传.上过北外,经贸大和外交学院,学过法语,工商管理和国际关系,在国企干过,在非洲呆过,在欧洲逛过.自由十余年,爱好历史,文艺,旅游,美食');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2619313761', '施養德', '1397', '1389', '0', 'http://tp2.sinaimg.cn/2619313761/50/5624349677/1', 'http://tp2.sinaimg.cn/2619313761/180/5624349677/1', '上海 卢湾区', '畫漫畫非本行， 但漫畫確能表達更多想法， 而想法又能使每個人有不同看法。 不同看法更富人生意義。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1738078463', 'keithLam', '371', '2520', '1244', 'http://tp4.sinaimg.cn/1738078463/50/5618044333/1', 'http://tp4.sinaimg.cn/1738078463/180/5618044333/1', '香港', '林欣傑，新媒體藝術家，dimension+藝術總監，理大設計學院和藝術學院客席講師。奧地利電子藝術節及香港藝術發展獎青年藝術家之得主。作品展於世界各地');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1497429133', '神气飞天猪', '820', '14946', '5111', 'http://tp2.sinaimg.cn/1497429133/50/5624637901/1', 'http://tp2.sinaimg.cn/1497429133/180/5624637901/1', '北京 朝阳区', 'can be crushed, not defeated!!');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1747079737', '李林枫', '453', '1119', '944', 'http://tp2.sinaimg.cn/1747079737/50/5630244904/1', 'http://tp2.sinaimg.cn/1747079737/180/5630244904/1', '上海 徐汇区', '电子音乐制作人／DJ ／S.T.D.Party 计划生育委员会会长');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1581266912', '柏如真CICI', '443', '6828', '1381', 'http://tp1.sinaimg.cn/1581266912/50/5641657361/0', 'http://tp1.sinaimg.cn/1581266912/180/5641657361/0', '北京 朝阳区', 'Lady Danger');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1670077105', '梁翘柏', '367', '105077', '1877', 'http://tp2.sinaimg.cn/1670077105/50/5611626001/1', 'http://tp2.sinaimg.cn/1670077105/180/5611626001/1', '其他', '🌺');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2275292564', 'NOWNESS官方网站', '229', '3939', '235', 'http://tp1.sinaimg.cn/2275292564/50/5618316926/0', 'http://tp1.sinaimg.cn/2275292564/180/5618316926/0', '海外 美国', 'NOWNESS.com是一家享有独立编辑自由的文化网站。独家预览当今全球最具影响力的文化和生活风尚，内容跨界涉足时尚、美食、艺术、电影、...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1748149815', 'Igouz', '763', '563', '0', 'http://tp4.sinaimg.cn/1748149815/50/1288530903/0', 'http://tp4.sinaimg.cn/1748149815/180/1288530903/0', '北京', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1825929150', 'YifangWan', '543', '8366', '482', 'http://tp3.sinaimg.cn/1825929150/50/5639739491/0', 'http://tp3.sinaimg.cn/1825929150/180/5639739491/0', '海外 英国', '万一方 www.yf-wan.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1655611385', '何潇', '440', '3555', '74', 'http://tp2.sinaimg.cn/1655611385/50/5635425413/0', 'http://tp2.sinaimg.cn/1655611385/180/5635425413/0', '北京 朝阳区', '空山不见人。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1838439155', 'DarkRunners', '271', '2167', '792', 'http://tp4.sinaimg.cn/1838439155/50/5597292222/1', 'http://tp4.sinaimg.cn/1838439155/180/5597292222/1', '上海', '都市夜跑文化领跑团体 ，团队成立于2009年，最初由眼镜设计师 CHairYUAN 发起，当时在深夜观看的一部...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1661335650', '纹子手记', '469', '3928', '1279', 'http://tp3.sinaimg.cn/1661335650/50/1288083879/0', 'http://tp3.sinaimg.cn/1661335650/180/1288083879/0', '北京', '江山未老春常在~老家长春圃 I\'m always chasing rainbows, waiting to find a little bluebird...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2342317761', '蒙尼咔', '24', '81', '245', 'http://tp2.sinaimg.cn/2342317761/50/5610080280/0', 'http://tp2.sinaimg.cn/2342317761/180/5610080280/0', '海外 马来西亚', '马来西亚《女友》杂志时装总监');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1679060355', '亮子FF', '480', '18221', '3116', 'http://tp4.sinaimg.cn/1679060355/50/5624080060/1', 'http://tp4.sinaimg.cn/1679060355/180/5624080060/1', '其他', 'Instagram:liangziff');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1680727465', '布兰达', '1018', '12101', '0', 'http://tp2.sinaimg.cn/1680727465/50/5621494531/0', 'http://tp2.sinaimg.cn/1680727465/180/5621494531/0', '上海 静安区', 'primadonna bear');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1098431735', 'Cosmo毕婧', '608', '20783', '2764', 'http://tp4.sinaimg.cn/1098431735/50/5637762493/0', 'http://tp4.sinaimg.cn/1098431735/180/5637762493/0', '北京', '不靠谱小姐');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2183354480', '李小星sunshine', '180', '11756', '334', 'http://tp1.sinaimg.cn/2183354480/50/5639119401/0', 'http://tp1.sinaimg.cn/2183354480/180/5639119401/0', '北京 朝阳区', 'keep going......模特 工作联系 sabrina@mplusmodels.com\nxiaoxingmodel@gmail.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1667088677', '埃里克杨', '328', '11798', '0', 'http://tp2.sinaimg.cn/1667088677/50/1279885435/1', 'http://tp2.sinaimg.cn/1667088677/180/1279885435/1', '上海 卢湾区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1759423815', '杨颖Amery', '563', '2313', '652', 'http://tp4.sinaimg.cn/1759423815/50/1297242825/0', 'http://tp4.sinaimg.cn/1759423815/180/1297242825/0', '上海 长宁区', '猫奴一枚(^o^)');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1015176940', '杰奎琳wang', '503', '866', '1509', 'http://tp1.sinaimg.cn/1015176940/50/5607441807/0', 'http://tp1.sinaimg.cn/1015176940/180/5607441807/0', '北京', '未来是个迷');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1838798053', '者者金IN我爱我甲', '58', '60', '74', 'http://tp2.sinaimg.cn/1838798053/50/5631421688/0', 'http://tp2.sinaimg.cn/1838798053/180/5631421688/0', '北京 朝阳区', '爱你，爱我，爱大家。。。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2132075275', 'chAAccc', '161', '25519', '3842', 'http://tp4.sinaimg.cn/2132075275/50/5638335543/0', 'http://tp4.sinaimg.cn/2132075275/180/5638335543/0', '其他', 'He said to be cool but I\'m already coolest.（悄悄联络请私信）');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1870096342', '小sarah玥', '1050', '1058', '0', 'http://tp3.sinaimg.cn/1870096342/50/5613448450/0', 'http://tp3.sinaimg.cn/1870096342/180/5613448450/0', '上海 杨浦区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1829490311', '旗袍Anne', '275', '4450', '797', 'http://tp4.sinaimg.cn/1829490311/50/5603435519/0', 'http://tp4.sinaimg.cn/1829490311/180/5603435519/0', '上海', '雅诗兰黛品牌高级公关经理');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1765850067', '兰兰宋', '417', '3810', '481', 'http://tp4.sinaimg.cn/1765850067/50/5642177365/0', 'http://tp4.sinaimg.cn/1765850067/180/5642177365/0', '上海', '当时只道是寻常');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2411070541', '留家雯', '260', '637', '234', 'http://tp2.sinaimg.cn/2411070541/50/5621410609/0', 'http://tp2.sinaimg.cn/2411070541/180/5621410609/0', '北京', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1835691297', 'Hello杨小雪', '451', '188', '452', 'http://tp2.sinaimg.cn/1835691297/50/5614347171/0', 'http://tp2.sinaimg.cn/1835691297/180/5614347171/0', '北京', '心花若怒放 开到荼蘼又何妨');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1664119412', 'EV-aka-EricA', '300', '1836', '1376', 'http://tp1.sinaimg.cn/1664119412/50/5639763455/0', 'http://tp1.sinaimg.cn/1664119412/180/5639763455/0', '上海', 'Sorry, I\'m not so EASY.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2171604883', 'Rihanna中国歌迷会', '130', '13422', '0', 'http://tp4.sinaimg.cn/2171604883/50/5634801370/1', 'http://tp4.sinaimg.cn/2171604883/180/5634801370/1', '海外 美国', '百度Rihanna贴吧&Rihanna中国歌迷会，及时发布Rihanna新闻、图片、视频、资源下载，应有尽有，欢迎关注。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1830369215', 'huan1feng', '537', '1443', '8870', 'http://tp4.sinaimg.cn/1830369215/50/5641363975/1', 'http://tp4.sinaimg.cn/1830369215/180/5641363975/1', '河南 信阳', '欧美Diva控~~爱以Daria Strokous&Karlie Kloss等一众欧美女麻豆 男麻豆独爱Clement Chabernaud');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1406601053', 'ELLE中文网Vivian', '744', '1160', '3523', 'http://tp2.sinaimg.cn/1406601053/50/5636122256/0', 'http://tp2.sinaimg.cn/1406601053/180/5636122256/0', '上海', 'Look yourself in the mirror , and then look outside the window.工作联系：weiwei.quan@hearst.com.cn');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1731870511', 'shaoo-shaooshadow', '869', '23049', '1370', 'http://tp4.sinaimg.cn/1731870511/50/1288914177/0', 'http://tp4.sinaimg.cn/1731870511/180/1288914177/0', '海外 法国', 'www.shaoo.fr');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2497052030', 'Michael-Kors', '89', '76145', '997', 'http://tp3.sinaimg.cn/2497052030/50/5615214208/1', 'http://tp3.sinaimg.cn/2497052030/180/5615214208/1', '海外 美国', 'Michael Kors\n中国专卖店：\n \n北京新光天地店 \n北京市朝阳区建国路87号新光天地百货\n\n台北101店 \n台北市信义区信义路...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1876939245', 'Patrick李达康', '534', '200931', '410', 'http://tp2.sinaimg.cn/1876939245/50/5637809095/1', 'http://tp2.sinaimg.cn/1876939245/180/5637809095/1', '上海', '现任: Michael Kors 大中华区主席兼首席执行官， 曾任: 迪奥时装、珠宝，化妆品及LVMH香水化妆品集团 总裁');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1961348847', 'Danya章小晖', '652', '1750', '0', 'http://tp4.sinaimg.cn/1961348847/50/5618138489/0', 'http://tp4.sinaimg.cn/1961348847/180/5618138489/0', '上海 静安区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1794847363', 'elsainshanghigh', '856', '1682', '2302', 'http://tp4.sinaimg.cn/1794847363/50/5610073345/0', 'http://tp4.sinaimg.cn/1794847363/180/5610073345/0', '上海', '曾经的ESTEE LAUDER集团M.A.C和LVMH集团MAKE UP FOR EVER公关经理');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1614801080', '慧慧是我的小名', '204', '12273', '742', 'http://tp1.sinaimg.cn/1614801080/50/5638029273/0', 'http://tp1.sinaimg.cn/1614801080/180/5638029273/0', '海外 美国', '工作邮箱bridget414@hotmail.com📢📩📫📮');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1751736024', '玛丽链_Liz', '628', '1481', '3716', 'http://tp1.sinaimg.cn/1751736024/50/5609426229/0', 'http://tp1.sinaimg.cn/1751736024/180/5609426229/0', '北京', '馒头妈 思想肤浅 拒绝装b 只知道爱家爱生活爱花钱');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1766882052', 'Ada零度空间', '230', '497', '2444', 'http://tp1.sinaimg.cn/1766882052/50/5640583446/0', 'http://tp1.sinaimg.cn/1766882052/180/5640583446/0', '北京', '仿佛是昨天 原来是昨天 一直是昨天......我在回家的路上等您🙏');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1680231141', '咯嘣咯嘣笑笑', '251', '6668', '1377', 'http://tp2.sinaimg.cn/1680231141/50/5630202120/0', 'http://tp2.sinaimg.cn/1680231141/180/5630202120/0', '上海 卢湾区', '让我等你？~切~~不可能！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1677966452', 'VivianeELLE', '413', '1267', '0', 'http://tp1.sinaimg.cn/1677966452/50/1262586239/0', 'http://tp1.sinaimg.cn/1677966452/180/1262586239/0', '上海 卢湾区', 'rien');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2612356501', '小浜Eric', '29', '25', '31', 'http://tp2.sinaimg.cn/2612356501/50/5624102596/1', 'http://tp2.sinaimg.cn/2612356501/180/5624102596/1', '北京', 'living in Beijing from LA');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1779499191', 'model刘旭', '240', '16981', '0', 'http://tp4.sinaimg.cn/1779499191/50/5619770898/0', 'http://tp4.sinaimg.cn/1779499191/180/5619770898/0', '北京 朝阳区', '北京服装学院在读生 esee英模模特');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1752834022', '叶溥Yepp', '296', '10076', '3812', 'http://tp3.sinaimg.cn/1752834022/50/5608498830/1', 'http://tp3.sinaimg.cn/1752834022/180/5608498830/1', '海外 英国', '厨子+平面设计师+摄影师+视觉艺术工作者。 Last fm：http://cn.last.fm/user/yeh1224 Flickr: http://www.flickr.com/photos/yeh1224/');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1664258611', '艾力Alex', '784', '422', '0', 'http://tp4.sinaimg.cn/1664258611/50/40001137262/1', 'http://tp4.sinaimg.cn/1664258611/180/40001137262/1', '香港', '纯私人微博，生活琐事。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2587525502', '玩长线', '683', '1007', '1743', 'http://tp3.sinaimg.cn/2587525502/50/39996383897/1', 'http://tp3.sinaimg.cn/2587525502/180/39996383897/1', '海外 加拿大', '只要不是采用公平的差额选举来选择掌握最高军权的国家元首，那么法律和宪法都只能是一纸空文。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1903730755', '姗姗Melanie', '793', '859', '1813', 'http://tp4.sinaimg.cn/1903730755/50/5610471783/0', 'http://tp4.sinaimg.cn/1903730755/180/5610471783/0', '北京 崇文区', '做最爱你的朋友');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1718498684', '刘旭Alfie', '369', '1195', '2046', 'http://tp1.sinaimg.cn/1718498684/50/5631801392/1', 'http://tp1.sinaimg.cn/1718498684/180/5631801392/1', '北京 崇文区', '滑滑的 水水的 嫩嫩的 杠杠的 - -#');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1676681833', '叶子LeafGreener', '484', '30815', '2305', 'http://tp2.sinaimg.cn/1676681833/50/5637323489/0', 'http://tp2.sinaimg.cn/1676681833/180/5637323489/0', '上海 静安区', 'ELLE CHINA资深时装编辑，时装造型师，时装趋势和文化研究者，视觉语言创作者。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1927956967', '哪吒是只猪猪', '627', '406', '1011', 'http://tp4.sinaimg.cn/1927956967/50/5608892333/0', 'http://tp4.sinaimg.cn/1927956967/180/5608892333/0', '北京 宣武区', '金嗓子妞儿 学兽医的娃 时装迷 我要看世界！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1782966857', '陆海伦', '434', '528', '3582', 'http://tp2.sinaimg.cn/1782966857/50/5643200755/0', 'http://tp2.sinaimg.cn/1782966857/180/5643200755/0', '上海', '浅浅满足，淡淡伤感。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1807082000', 'Leon喜喜', '404', '3223', '668', 'http://tp1.sinaimg.cn/1807082000/50/5640429092/1', 'http://tp1.sinaimg.cn/1807082000/180/5640429092/1', '上海 静安区', '一家一世界！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1895332380', '室内设计师网', '449', '189067', '6643', 'http://tp1.sinaimg.cn/1895332380/50/1293642488/0', 'http://tp1.sinaimg.cn/1895332380/180/1293642488/0', '江苏 南京', '乐享设计生活。欢迎访问室内设计师官网http://www.idzoom.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1762661245', '泶哩', '1546', '2107', '0', 'http://tp2.sinaimg.cn/1762661245/50/5625505512/0', 'http://tp2.sinaimg.cn/1762661245/180/5625505512/0', '上海', '上苍保佑妈妈。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2387508193', '韦鸣恩勋爵', '372', '37772', '1041', 'http://tp2.sinaimg.cn/2387508193/50/5612236500/1', 'http://tp2.sinaimg.cn/2387508193/180/5612236500/1', '海外 英国', '我是英国上议院的一位爵士勋爵，英国国会跨党派东亚商务议员团组长。英文名字叫Lord Wei of Shoreditch，');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1564258070', 'Ben小犇', '333', '11460', '4627', 'http://tp3.sinaimg.cn/1564258070/50/5623710892/1', 'http://tp3.sinaimg.cn/1564258070/180/5623710892/1', '海外 英国', '一枚在英國認真生活/學習/工作的廚男。。。我們Chinatown节目的地址http://www.bbc.co.uk/programmes/p001d7qy，欢迎私信联系采访事宜。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2375424527', '碧浪', '573', '97917', '1981', 'http://tp4.sinaimg.cn/2375424527/50/5627104915/0', 'http://tp4.sinaimg.cn/2375424527/180/5627104915/0', '北京', '连碧浪姐你都不认识？Not Fashion！——世界上最火辣的洗衣界天后！不仅教你玩美洗衣，还让你乐享生活！当然，最要紧的是，让你的衣物...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1877127123', 'AugustineWong', '745', '3586', '1055', 'http://tp4.sinaimg.cn/1877127123/50/1290952081/1', 'http://tp4.sinaimg.cn/1877127123/180/1290952081/1', '香港', '香港连卡佛平面设计师 //////////////////////////////TUMBLR////////////////////////////// http://augustinewong.tumblr.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1414750937', 'BinWANG', '290', '110959', '0', 'http://tp2.sinaimg.cn/1414750937/50/1279878399/1', 'http://tp2.sinaimg.cn/1414750937/180/1279878399/1', '北京', '接地气儿的活着、干着、爱着');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1908396547', 'ZM-Noir', '230', '224', '1077', 'http://tp4.sinaimg.cn/1908396547/50/5635233994/1', 'http://tp4.sinaimg.cn/1908396547/180/5635233994/1', '北京', 'La Vraie vie est absente.Nous ne sommes pas au monde\nPour vivre heureux, vivre cachés');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1280761142', '刘雯', '370', '3720848', '1464', 'http://tp3.sinaimg.cn/1280761142/50/39997077383/0', 'http://tp3.sinaimg.cn/1280761142/180/39997077383/0', '北京', '本是个微不足道的人，不小心陷入了时尚的大舞台。 自己还是微不足道的自己，承载了大家太多的关心。工作联系@迷死任');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1752960887', '名车志_冯维', '673', '657', '0', 'http://tp4.sinaimg.cn/1752960887/50/5620656218/1', 'http://tp4.sinaimg.cn/1752960887/180/5620656218/1', '北京 朝阳区', '躁！finding my inner peace...！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1963068461', '名车志_兰天', '434', '539', '0', 'http://tp2.sinaimg.cn/1963068461/50/1297414471/1', 'http://tp2.sinaimg.cn/1963068461/180/1297414471/1', '北京 海淀区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1819945431', 'elisa七七', '367', '476', '0', 'http://tp4.sinaimg.cn/1819945431/50/5607609889/0', 'http://tp4.sinaimg.cn/1819945431/180/5607609889/0', '北京 朝阳区', '永远追寻爱与幸福！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2143234195', 'mindy-lv', '226', '320', '435', 'http://tp4.sinaimg.cn/2143234195/50/5638801048/0', 'http://tp4.sinaimg.cn/2143234195/180/5638801048/0', '上海 徐汇区', 'COCCINELLE,BELFE,MANDARINA DUCK,SUTOR MANTELASSI,Kate spade,Guess');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1866354945', '法语情话', '279', '34826', '1119', 'http://tp2.sinaimg.cn/1866354945/50/1295459841/0', 'http://tp2.sinaimg.cn/1866354945/180/1295459841/0', '海外 法国', '年轻的时候，应该去巴黎。【法语爱好者】【法国背包客】【欢迎大家踊跃投稿，各种浪漫的句子、好看的电影、好听的香颂，只要@我或发私信都可以】');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1734190285', '陶立夏', '613', '16472', '53', 'http://tp2.sinaimg.cn/1734190285/50/39998115035/0', 'http://tp2.sinaimg.cn/1734190285/180/39998115035/0', '上海 徐汇区', 'checkmate.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2179686555', '果库', '883', '21303', '2492', 'http://tp4.sinaimg.cn/2179686555/50/5605610866/0', 'http://tp4.sinaimg.cn/2179686555/180/5605610866/0', '北京 朝阳区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1745571382', '纽约买手丽贝卡吴', '833', '11562', '4714', 'http://tp3.sinaimg.cn/1745571382/50/1276144249/0', 'http://tp3.sinaimg.cn/1745571382/180/1276144249/0', '海外 美国', '现居纽约 现供职于时尚买手&造型师　奢侈品潮牌代购&形象咨询（工作&代购E-mail: rebeccastyling@gmail.com QQ:154529662 淘宝旺旺: clover5）');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1806345305', '早乙喜乱丸', '647', '1743', '0', 'http://tp2.sinaimg.cn/1806345305/50/5636180895/0', 'http://tp2.sinaimg.cn/1806345305/180/5636180895/0', '上海 卢湾区', '有一张无欲无求eco-friendly的脸');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1741473255', '露诗Lush', '315', '12012', '1155', 'http://tp4.sinaimg.cn/1741473255/50/40001344780/0', 'http://tp4.sinaimg.cn/1741473255/180/40001344780/0', '海外 英国', '如有任何订单问题，请直接邮件至order@lush.com.hk查询，谢谢配合！\n辦公時間 : 星期一至五 上午9時至下午5時\nQQ客服 : 2516964106');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1587303135', '文冤阁大学士', '1397', '21976', '4396', 'http://tp4.sinaimg.cn/1587303135/50/1286358547/1', 'http://tp4.sinaimg.cn/1587303135/180/1286358547/1', '海外 蒙古', '八卦全书馆正总裁❀加汰子少师❀领参知闲事❀袭一等糊国公❀兼书觅院副使❀协理各国灌水潜水挖坑挖坟事务衙门❀督办紧徳镇官谣暨围脖制造局');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2103720960', 'ChocChoco巧克力', '651', '3188', '371', 'http://tp1.sinaimg.cn/2103720960/50/5608373517/1', 'http://tp1.sinaimg.cn/2103720960/180/5608373517/1', '上海 徐汇区', '服务范畴： \n零售、企业及个人高级定制、巧克力品鉴及讲座沙龙等。 \n中秋巧克力月饼正在预约中。\n\n订购请垂询：4006 197 917\n...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1615391094', 'JACKY钱海', '199', '29529', '834', 'http://tp3.sinaimg.cn/1615391094/50/1294420423/1', 'http://tp3.sinaimg.cn/1615391094/180/1294420423/1', '北京 东城区', '时尚潮流，发型设计，造型师，艺术，茶道：因为专业成就完美，美。。。因你而精彩');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1439545115', '杜之樱LOFFICIEL', '563', '2176', '953', 'http://tp4.sinaimg.cn/1439545115/50/5643297923/0', 'http://tp4.sinaimg.cn/1439545115/180/5643297923/0', '北京 东城区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1794207473', 'Triple颜', '148', '185', '233', 'http://tp2.sinaimg.cn/1794207473/50/5629773210/0', 'http://tp2.sinaimg.cn/1794207473/180/5629773210/0', '北京 朝阳区', '媒体人');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1758390967', 'ELLE中文网_高曉Yan_', '476', '997', '1781', 'http://tp4.sinaimg.cn/1758390967/50/39997327120/0', 'http://tp4.sinaimg.cn/1758390967/180/39997327120/0', '上海 静安区', '尽管叫我疯子，不准叫我傻子。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1707539452', 'MacZhou', '788', '44121', '3670', 'http://tp1.sinaimg.cn/1707539452/50/5624032413/1', 'http://tp1.sinaimg.cn/1707539452/180/5624032413/1', '上海 杨浦区', '奋斗中的孔雀！！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2154942517', 'Wendy叶温汀', '103', '1586', '0', 'http://tp2.sinaimg.cn/2154942517/50/5615867073/0', 'http://tp2.sinaimg.cn/2154942517/180/5615867073/0', '海外 法国', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1705306287', '郭巍郭', '361', '2212', '0', 'http://tp4.sinaimg.cn/1705306287/50/5624096109/0', 'http://tp4.sinaimg.cn/1705306287/180/5624096109/0', '北京 朝阳区', '每个人都是珠宝，值得去爱！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1742018371', 'BenCheung先生', '162', '4524', '3133', 'http://tp4.sinaimg.cn/1742018371/50/1289283214/1', 'http://tp4.sinaimg.cn/1742018371/180/1289283214/1', '海外 越南', '买书不手软');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2189223662', 'Next-Idea-China', '112', '227', '167', 'http://tp3.sinaimg.cn/2189223662/50/5603770694/1', 'http://tp3.sinaimg.cn/2189223662/180/5603770694/1', '上海 卢湾区', 'Next Idea China与佰草集公司共同出品微电影《逆时·恒美》，敬请在优酷、土豆、iTunes搜索“逆时恒美”，无限想象，绝美跨越。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1761696440', '王灵littlehotel', '774', '2697', '0', 'http://tp1.sinaimg.cn/1761696440/50/5626102639/0', 'http://tp1.sinaimg.cn/1761696440/180/5626102639/0', '上海', '分身术师 有时在Θ仙人掌旅馆 www.littlehotel.cn');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1654030464', 'ELLE中文网朱荔靖', '1536', '55383', '8234', 'http://tp1.sinaimg.cn/1654030464/50/40003027880/0', 'http://tp1.sinaimg.cn/1654030464/180/40003027880/0', '上海 静安区', 'ELLE中文网 网络编辑主管 工作邮箱：lijing.zhu@hearst.com.cn');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1899723011', '英国Barker手工鞋', '900', '576', '378', 'http://tp4.sinaimg.cn/1899723011/50/5628514086/1', 'http://tp4.sinaimg.cn/1899723011/180/5628514086/1', '北京 东城区', '英国Barker 拥有132年手工鞋经验，于2010年获得英国最佳出口奖。Barker皮鞋在英国北安普敦生产，为了保持高超的手工艺，Barker控制年产量22万对以内。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1547191423', '雨问', '492', '746', '4982', 'http://tp4.sinaimg.cn/1547191423/50/40002102990/1', 'http://tp4.sinaimg.cn/1547191423/180/40002102990/1', '上海 静安区', '书中江山怀今古，梦里青天情何处');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1762509182', '飞机的坏品位', '1930', '201131', '7969', 'http://tp3.sinaimg.cn/1762509182/50/5612006318/1', 'http://tp3.sinaimg.cn/1762509182/180/5612006318/1', '海外 菲律宾', '“只想做一名边旅行边写作的情色作家。” ——我的随笔《香蕉哲学》即将出版，约稿及品牌推广合作请私信。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1738813177', '阿童木achildwood', '109', '400', '2675', 'http://tp2.sinaimg.cn/1738813177/50/5638248426/0', 'http://tp2.sinaimg.cn/1738813177/180/5638248426/0', '上海', ' ');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1719410917', '野蛮大白菜', '446', '716', '890', 'http://tp2.sinaimg.cn/1719410917/50/1300187496/0', 'http://tp2.sinaimg.cn/1719410917/180/1300187496/0', '上海', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1074737505', '嘿顾顾', '1992', '1439', '0', 'http://tp2.sinaimg.cn/1074737505/50/5627087436/0', 'http://tp2.sinaimg.cn/1074737505/180/5627087436/0', '北京', '@VOGUE时尚网 微博+ VOGUE影像 管理员 优秀作品上传至 http://photo.vogue.com.cn/ 有机会在《Vogue》杂志上刊登噢。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1765219533', '铮馒头', '573', '789', '1143', 'http://tp2.sinaimg.cn/1765219533/50/40001477330/1', 'http://tp2.sinaimg.cn/1765219533/180/40001477330/1', '北京 朝阳区', '之前忙碌于搜狐男士频道编辑/媒体外联、品牌合作。现在活跃在GQ男士网-生活频道-美食美酒/型男护肤/健身健康/情感。微博内容仅代表个人观点。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2024385965', '夕雾小婷', '200', '172', '782', 'http://tp2.sinaimg.cn/2024385965/50/5604115806/0', 'http://tp2.sinaimg.cn/2024385965/180/5604115806/0', '北京', '《时尚家居》风格版总监');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2073051641', 'ELLETW', '0', '0', '0', 'http://tp2.sinaimg.cn/2073051641/50/40001020297/0', 'http://tp2.sinaimg.cn/2073051641/180/40001020297/0', '台湾 台北市', 'ELLE台灣官方微博新開張! 女人的事 就是ELLE的事 最引領潮流的女性雜誌 時尚 美妝 生活 風格養成指標 盡在www.ELLE.com.tw');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1675163164', '铃兰Cynthia', '698', '1147', '1758', 'http://tp1.sinaimg.cn/1675163164/50/40002059772/0', 'http://tp1.sinaimg.cn/1675163164/180/40002059772/0', '浙江', '随情，随意，随心，随缘！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1723895117', 'ELLE中文网船长遥遥', '107', '291', '0', 'http://tp2.sinaimg.cn/1723895117/50/1279891139/0', 'http://tp2.sinaimg.cn/1723895117/180/1279891139/0', '上海', '经常失意');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1211035037', 'Henryzhaoyan', '520', '3365', '186', 'http://tp2.sinaimg.cn/1211035037/50/5641658358/1', 'http://tp2.sinaimg.cn/1211035037/180/5641658358/1', '其他', '大叔身有所属，萝莉 正太勿扰！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2154693184', '小二Vivi', '179', '224', '728', 'http://tp1.sinaimg.cn/2154693184/50/5629555000/0', 'http://tp1.sinaimg.cn/2154693184/180/5629555000/0', '浙江 宁波', '爱大笑 外表文艺 内心凌乱 游戏人生的二货女青年');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1549341950', '可爱美鹿', '1244', '652', '2959', 'http://tp3.sinaimg.cn/1549341950/50/5607408804/0', 'http://tp3.sinaimg.cn/1549341950/180/5607408804/0', '北京', '《女友花园》资深时装编辑 爱植物、爱天空、爱拍摄、爱蔡健雅的歌、爱张小川的设计、为了babyghost的衣服减肥中。。。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1747375630', 'Milktea谈小耶', '399', '104438', '2034', 'http://tp3.sinaimg.cn/1747375630/50/39997254693/0', 'http://tp3.sinaimg.cn/1747375630/180/39997254693/0', '上海 浦东新区', '爱物明星团成员，参演《爱情公寓第三季》，时尚撰稿人 1.工作请加：38994006 1号群：88492242 2号群（已满）：165132750 3号群：181379081');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1678266380', '徐赫立', '367', '1288', '682', 'http://tp1.sinaimg.cn/1678266380/50/5627382494/0', 'http://tp1.sinaimg.cn/1678266380/180/5627382494/0', '北京', 'VOGUE时尚网主编');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1727419512', 'ErikaYue', '120', '838', '0', 'http://tp1.sinaimg.cn/1727419512/50/5633228611/0', 'http://tp1.sinaimg.cn/1727419512/180/5633228611/0', '北京 朝阳区', '我，站在天空的交叉口');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1834708413', '田晓龙', '943', '53513', '4514', 'http://tp2.sinaimg.cn/1834708413/50/5601372678/1', 'http://tp2.sinaimg.cn/1834708413/180/5601372678/1', '北京 朝阳区', '如果你想成为龙腾精英模特，可以将你的资料发到邮箱：tian@longtengmodels.com.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1739939361', '顧芷宜catherine', '200', '2321', '0', 'http://tp2.sinaimg.cn/1739939361/50/5609305479/0', 'http://tp2.sinaimg.cn/1739939361/180/5609305479/0', '香港', '經常穿著有大方扣的鞋子及包包！也必會在上海恆隆廣場及香港的置地廣埸走來走去的公關！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1671912495', '刘焱', '753', '48210', '6054', 'http://tp4.sinaimg.cn/1671912495/50/39999894443/0', 'http://tp4.sinaimg.cn/1671912495/180/39999894443/0', '北京 朝阳区', '舟遥遥以轻飏，风飘飘而吹衣。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1424003375', 'Rayli石璐', '510', '1263', '1457', 'http://tp4.sinaimg.cn/1424003375/50/5612025603/0', 'http://tp4.sinaimg.cn/1424003375/180/5612025603/0', '北京', '低调、平淡的生活 高调、折腾的工作 平衡其中的才是高手\n《瑞丽服饰美容》编辑部主任');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2477598102', 'Hogan', '178', '1674', '489', 'http://tp3.sinaimg.cn/2477598102/50/5632643105/1', 'http://tp3.sinaimg.cn/2477598102/180/5632643105/1', '上海', 'HOGAN隶属于意大利TOD’S集团，自1986年诞生以来，其优雅而不拘谨、前卫而时髦的设计风格，深受全球时尚人士与众多艺术家的推崇与喜爱。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1718549757', 'CHairYUAN', '769', '4415', '2507', 'http://tp2.sinaimg.cn/1718549757/50/5635487853/1', 'http://tp2.sinaimg.cn/1718549757/180/5635487853/1', '上海', 'www.CHairEYES.com / www.DarkRunner.com.cn');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2192804700', 'RasTan', '600', '349', '1352', 'http://tp1.sinaimg.cn/2192804700/50/5641569053/1', 'http://tp1.sinaimg.cn/2192804700/180/5641569053/1', '上海 静安区', '不負責言論');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2175173250', 'Pomellato宝曼兰朵', '66', '1148', '382', 'http://tp3.sinaimg.cn/2175173250/50/40000496867/0', 'http://tp3.sinaimg.cn/2175173250/180/40000496867/0', '北京 朝阳区', 'POMELLATO宝曼兰朵是由Pino Rabolini先生于1967年在意大利米兰创立的高级珠宝品牌。创新颠覆的设计，臻至化境的工艺，...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1783868937', 'Qiaoran-Babyghost', '369', '17389', '4047', 'http://tp2.sinaimg.cn/1783868937/50/1293520588/0', 'http://tp2.sinaimg.cn/1783868937/180/1293520588/0', '海外 美国', 'Dreamer, Fashion Designer. 网店：http://babyghost.taobao.com/ 网站：http://www.mybabyghost.com/');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1671079195', 'Licheng_Ling', '1353', '17421', '1305', 'http://tp4.sinaimg.cn/1671079195/50/5642122800/0', 'http://tp4.sinaimg.cn/1671079195/180/5642122800/0', '海外 美国', 'Branding');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1793725255', '代小烨', '564', '9692', '2915', 'http://tp4.sinaimg.cn/1793725255/50/5617040543/1', 'http://tp4.sinaimg.cn/1793725255/180/5617040543/1', '北京 东城区', '一年的Y-3公关 — 两年的DIESEL公关 — 现在的STELLALUNA 公关主管，但大家都忘记了我是一名国家认证的平面设计师，公关之路难回头啊！');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1681089831', '季艺', '558', '1306', '144', 'http://tp4.sinaimg.cn/1681089831/50/39999301834/1', 'http://tp4.sinaimg.cn/1681089831/180/39999301834/1', '北京 朝阳区', '猪咪咪王国国王，申请加入王国者请关注@猪咪咪王国。本王国充满童话色彩，只有国王拥有智力，你可以选择扮演精灵、大树、绵羊这些没有智商的角色');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1836338084', 'Vie二公主', '389', '1062', '3502', 'http://tp1.sinaimg.cn/1836338084/50/5639893347/0', 'http://tp1.sinaimg.cn/1836338084/180/5639893347/0', '北京 朝阳区', '唉，太菜，没人爱，做人失败，丑得被砖盖；去整容变帅，成了例外，变妖怪，无奈，唉。。。。。。其实我人不坏。。。。。。才怪');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2171037543', 'NikeMediaRunClub', '209', '735', '530', 'http://tp4.sinaimg.cn/2171037543/50/5643185305/0', 'http://tp4.sinaimg.cn/2171037543/180/5643185305/0', '北京', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2273849044', 'AlbertaFerretti', '153', '2801', '749', 'http://tp1.sinaimg.cn/2273849044/50/39996016979/0', 'http://tp1.sinaimg.cn/2273849044/180/39996016979/0', '海外 意大利', 'ALBERTA FERRETTI 2012官网全新形象正式在8月27日发布！全新页面和导航设计，优雅感与功能性融于一体，重建www.al...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1450953741', 'malhomme', '49', '267', '95', 'http://tp2.sinaimg.cn/1450953741/50/5609852240/1', 'http://tp2.sinaimg.cn/1450953741/180/5609852240/1', '北京', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1689381201', 'BAZAAR王古古', '662', '8111', '3651', 'http://tp2.sinaimg.cn/1689381201/50/5642603045/1', 'http://tp2.sinaimg.cn/1689381201/180/5642603045/1', '北京', 'Harper\'s BAZAAR China 时装编辑');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1735147133', 'Donnaliu', '286', '1384', '0', 'http://tp2.sinaimg.cn/1735147133/50/1279896905/0', 'http://tp2.sinaimg.cn/1735147133/180/1279896905/0', '北京 朝阳区', 'Creative Fashion Designer');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1735315045', '迪少的摩天輪', '226', '738', '4179', 'http://tp2.sinaimg.cn/1735315045/50/5621120692/1', 'http://tp2.sinaimg.cn/1735315045/180/5621120692/1', '上海 卢湾区', 'No matter where I am, my heart already left to another place, where is my destination? Am I can meet my heart again?');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1732016997', '赐我冬眠的幸运吧', '276', '1941', '1599', 'http://tp2.sinaimg.cn/1732016997/50/5639976752/0', 'http://tp2.sinaimg.cn/1732016997/180/5639976752/0', '上海 静安区', '谢倩');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1723794233', '李娜Leila', '230', '1711', '0', 'http://tp2.sinaimg.cn/1723794233/50/5607783287/0', 'http://tp2.sinaimg.cn/1723794233/180/5607783287/0', '上海', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1743896640', '董晨Sabrina', '1281', '2882', '4174', 'http://tp1.sinaimg.cn/1743896640/50/5629677326/0', 'http://tp1.sinaimg.cn/1743896640/180/5629677326/0', '北京 朝阳区', 'M PLUS模特经纪公司执行董事\n公司旗下模特：张抒扬，廖诗宇，李小星，迪力娜尔，李冰，顾燕君，古君亮\n 联系方式：sabrina@mplusmodels.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1229210072', '张小米饭', '664', '15005', '3575', 'http://tp1.sinaimg.cn/1229210072/50/5638599957/0', 'http://tp1.sinaimg.cn/1229210072/180/5638599957/0', '北京 朝阳区', '一个时尚的好管家');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1658915013', 'NANA妞', '1250', '21591', '6937', 'http://tp2.sinaimg.cn/1658915013/50/1279884602/0', 'http://tp2.sinaimg.cn/1658915013/180/1279884602/0', '北京', '金牛座B型血，推崇一切以“快乐”和“健康” 作为主要原料的生活方式。首饰DIY http://blog.sina.com.cn/u/1426870574');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1733170405', '何小晨', '498', '5551', '1318', 'http://tp2.sinaimg.cn/1733170405/50/5630166753/0', 'http://tp2.sinaimg.cn/1733170405/180/5630166753/0', '北京 朝阳区', '须弥山巅 浮云万里');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1803381517', '男人风尚LEON倪亚', '672', '3793', '0', 'http://tp2.sinaimg.cn/1803381517/50/5617782409/1', 'http://tp2.sinaimg.cn/1803381517/180/5617782409/1', '北京', '《男人风尚LEON》形象总监');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1759820363', 'LindaTing66', '284', '4407', '681', 'http://tp4.sinaimg.cn/1759820363/50/5619719295/0', 'http://tp4.sinaimg.cn/1759820363/180/5619719295/0', '北京', 'V girl');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1252036043', '尚雯婕', '1321', '1666125', '2367', 'http://tp4.sinaimg.cn/1252036043/50/5640244030/0', 'http://tp4.sinaimg.cn/1252036043/180/5640244030/0', '北京', '工作联系: laureworks@163.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1743079907', '月落狮滴唯豹豹', '905', '789', '3867', 'http://tp4.sinaimg.cn/1743079907/50/5637927505/0', 'http://tp4.sinaimg.cn/1743079907/180/5637927505/0', '北京 朝阳区', '大梦谁先觉');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1614137095', 'Chrison克里森', '402', '105334', '8059', 'http://tp4.sinaimg.cn/1614137095/50/40001782500/1', 'http://tp4.sinaimg.cn/1614137095/180/40001782500/1', '上海', '天生审美偏差的非典型代表 Email : Chrison.w@hotmail.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1762608042', '杨毅Victorien', '1324', '9241', '1943', 'http://tp3.sinaimg.cn/1762608042/50/1300759267/1', 'http://tp3.sinaimg.cn/1762608042/180/1300759267/1', '海外 法国', '常驻巴黎时尚摄影师 工作联系：jestonyy@hotmail.com \n微信：59902028');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1762187782', 'MissPriss_Melody', '576', '832', '2298', 'http://tp3.sinaimg.cn/1762187782/50/5639735158/0', 'http://tp3.sinaimg.cn/1762187782/180/5639735158/0', '上海 黄浦区', '再随性一些✨');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1656268302', '先生聂心遠', '1387', '13124', '8087', 'http://tp3.sinaimg.cn/1656268302/50/5598032962/1', 'http://tp3.sinaimg.cn/1656268302/180/5598032962/1', '北京 朝阳区', '修内。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1828022494', 'Lisa常依龄', '461', '2453', '2058', 'http://tp3.sinaimg.cn/1828022494/50/1285411910/0', 'http://tp3.sinaimg.cn/1828022494/180/1285411910/0', '上海 徐汇区', 'Work hard, play hard. 美国法学博士,法国企管硕士,上海ICS外语频道主持人,现代传播\"品味生活\"主持人,宁大法学教授,加州纽约州执行律师,两个宝贝的妈.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1686595111', '王未末', '234', '4071', '1408', 'http://tp4.sinaimg.cn/1686595111/50/5612972815/1', 'http://tp4.sinaimg.cn/1686595111/180/5612972815/1', '上海', 'know everything and stay behind the scenes');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1864325310', '孔德筠', '233', '343', '0', 'http://tp3.sinaimg.cn/1864325310/50/5597676170/0', 'http://tp3.sinaimg.cn/1864325310/180/5597676170/0', '上海 徐汇区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1757584863', 'KFCC', '335', '1574', '0', 'http://tp4.sinaimg.cn/1757584863/50/1276418770/0', 'http://tp4.sinaimg.cn/1757584863/180/1276418770/0', '海外', '本微博上的文章，图片或其他任何信息系个人意见，并不代表任职公司的立场、主张或意见');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2364600362', '绿野菲踪', '59', '2378', '259', 'http://tp3.sinaimg.cn/2364600362/50/40002864723/0', 'http://tp3.sinaimg.cn/2364600362/180/40002864723/0', '海外 美国', '超模孙菲菲follower；时尚圈新闻，国际潮流动态；模特、时装小评，秀场视频、精选美图推介。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1921305575', 'glassrose', '713', '13318', '4128', 'http://tp4.sinaimg.cn/1921305575/50/1294994636/0', 'http://tp4.sinaimg.cn/1921305575/180/1294994636/0', '其他', '时装撰稿人，GLASSROSE FASHION FOCUS博主');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1737999141', 'Maggie周靜雯_CK', '737', '2081', '1997', 'http://tp2.sinaimg.cn/1737999141/50/5643032327/0', 'http://tp2.sinaimg.cn/1737999141/180/5643032327/0', '香港', '曾任職雜誌編輯及無印良品公關，現職Calvin Klein Asia推廣及公關。典型處女座，喜愛很多，也想很多。Stay true。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1729045144', '阿芬仔仔', '112', '1696', '256', 'http://tp1.sinaimg.cn/1729045144/50/5602732155/1', 'http://tp1.sinaimg.cn/1729045144/180/5602732155/1', '香港 其他', '別讓我獨自死去...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1741060640', 'ELLE网站吉小利小吉利', '461', '733', '2942', 'http://tp1.sinaimg.cn/1741060640/50/39996772335/0', 'http://tp1.sinaimg.cn/1741060640/180/39996772335/0', '上海', 'ELLE中文网美容编辑ANN');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1095622633', '王嘉Gordon', '331', '25787', '5889', 'http://tp2.sinaimg.cn/1095622633/50/5640079670/1', 'http://tp2.sinaimg.cn/1095622633/180/5640079670/1', '北京 东城区', '爱生活、爱享乐，每个人都可以成为摄影师');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2042108621', 'Sindy_Fashion', '189', '532', '5573', 'http://tp2.sinaimg.cn/2042108621/50/5635330451/0', 'http://tp2.sinaimg.cn/2042108621/180/5635330451/0', '海外 英国', 'PhD. Luxury Fashion Branding; specialize in Marketing Strategies & Emerging Markets. Colomnist for parischerie.com. Freelancer for Elle.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2391206504', 'MOSCHINO莫斯奇诺', '342', '8411', '1015', 'http://tp1.sinaimg.cn/2391206504/50/40002746109/0', 'http://tp1.sinaimg.cn/2391206504/180/40002746109/0', '海外 意大利', '始终坚持品牌历史、独具个性的Moschino在国际时装舞台上占有重要的一席之地。Moschino、Moschino Cheap and ...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1796805244', 'Lin_Guan', '0', '0', '0', 'http://tp1.sinaimg.cn/1796805244/50/1283229040/0', 'http://tp1.sinaimg.cn/1796805244/180/1283229040/0', '海外 美国', 'Just a boy inside a woman');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1659488493', '令千千', '266', '294', '0', 'http://tp2.sinaimg.cn/1659488493/50/5606186425/0', 'http://tp2.sinaimg.cn/1659488493/180/5606186425/0', '北京 朝阳区', '一切福田，不离方寸。');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1644464587', '孙赛赛', '592', '3223', '0', 'http://tp4.sinaimg.cn/1644464587/50/5616078323/1', 'http://tp4.sinaimg.cn/1644464587/180/5616078323/1', '北京 朝阳区', '');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1993594967', 'MANGO中国官网', '144', '54738', '1265', 'http://tp4.sinaimg.cn/1993594967/50/5625898450/0', 'http://tp4.sinaimg.cn/1993594967/180/5625898450/0', '上海', 'MANGO秋冬新款全面上市！来看看哪款是你心中的最爱！特卖专区持续进行中，精彩不容错过！http://shop.mango.com');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2001121323', 'FontanesiandLee', '63', '782', '54', 'http://tp4.sinaimg.cn/2001121323/50/5609858639/1', 'http://tp4.sinaimg.cn/2001121323/180/5609858639/1', '海外 法国', '我们推荐旗下签约摄影师，造型师，化妆，发型师，同时包括一切杂志广告拍片需要的场地提供模特联络，及组织.我们在巴黎.照片欢迎转发，切勿转载.');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '2329770312', '雨果博斯HUGOBOSS', '159', '53345', '644', 'http://tp1.sinaimg.cn/2329770312/50/5609301805/1', 'http://tp1.sinaimg.cn/2329770312/180/5609301805/1', '海外 德国', 'HUGO BOSS (雨果博斯) 因独特鲜明且富有新意的时尚理念而享誉世界，分店更遍布全球124多个国家。集团旗下品牌包括：BOSS B...');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1623511764', 'ChrissieCheung', '503', '2766', '1837', 'http://tp1.sinaimg.cn/1623511764/50/5638303995/0', 'http://tp1.sinaimg.cn/1623511764/180/5638303995/0', '其他', '༄་། བྱང་ཆུབ་སེམས་ནི་རྟག་ཏུ་བདེ་བའི་རྒྱུ། ＂༄། ཚེ་རིང་ལྷ་མོ་།།');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1191967613', '赵波', '2000', '258981', '11525', 'http://tp2.sinaimg.cn/1191967613/50/40002841574/0', 'http://tp2.sinaimg.cn/1191967613/180/40002841574/0', '江苏 南京', '作家:著有<巴黎情事><浮生.十二怨><双重生命><都市女巫><北京流水>等21种.兼演出，展览，文化交流活动策划。http://www.douban.com/people/37681195/');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status )VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1873800085', 'ELLE网站兰花指星人', '81', '113', '288', 'http://tp2.sinaimg.cn/1873800085/50/5597898912/0', 'http://tp2.sinaimg.cn/1873800085/180/5597898912/0', '其他', '这位妇女，你心思又活络了？');

INSERT INTO `task` (owner_id, publisher_id, type, base_price, amount, finish_amount, status)VALUES (1, 1, 2, 700, 100, 39, 1);
insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '1578815367', '韩小兔Tulip', '1991', '3824', '10071', 'http://tp4.sinaimg.cn/1578815367/50/5634532765/0', 'http://tp4.sinaimg.cn/1578815367/180/5634532765/0', '北京 西城区', '魔鬼的情怀魔鬼的心，魔鬼的神经比较大条～');
/* follow_tasks */



/* 测试用户都没有绑定微博， 所以下面这些 do_task 数据不合逻辑 故注释掉*/
/*
INSERT INTO `do_task` (task_id, user_id, status, time) values(111, 4, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 1, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 2, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 3, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 4, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 1, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 2, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 3, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 4, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 1, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 2, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 3, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 4, 'finish', now());
*/
