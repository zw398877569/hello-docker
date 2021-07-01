set @updateId01 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 63973 and offer_code = '104311' and trigger_category_code = 'TG0003' and status = 1 and  is_deleted = 'N' limit 1);
set @updateId02 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 61885 and offer_code = '104320' and trigger_category_code = 'TG0006' and status = 1 and  is_deleted = 'N' limit 1);
set @updateId03 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 70172 and offer_code = '104315' and trigger_category_code = 'TG0002' and status = 1 and  is_deleted = 'N' limit 1);
set @updateId04 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 70172 and offer_code = '104316' and trigger_category_code = 'TG0002' and status = 1 and  is_deleted = 'N' limit 1);

update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId01;
update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId02;
update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId03;
update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId04;

update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id in (4,6025,6027,6026,6028,53,52,1038,59,56,57,12,16,14,18);
update inc_gr_passage_00.user_offer set status = 2 where id in (31,5,7039,7040,8,989,990,11,1022,1023,40,41,1030,1031,58,60,1039,1040,13,995,993,994);
