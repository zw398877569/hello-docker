set @updateId01 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 46201 and offer_code = '54423' and trigger_category_code = 'TG0003' and status = 1 and  is_deleted = 'N' limit 1);
set @updateId02 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 46201 and offer_code = '54424' and trigger_category_code = 'TG0003' and status = 1 and  is_deleted = 'N' limit 1);
set @updateId03 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 8092 and offer_code = '54423' and trigger_category_code = 'TG0003' and status = 1 and  is_deleted = 'N' limit 1);
set @updateId04 = (select id from inc_gr_passage_00.user_offer where channel_user_id = 8092 and offer_code = '54424' and trigger_category_code = 'TG0003' and status = 1 and  is_deleted = 'N' limit 1);

update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId01;
update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId02;
update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId03;
update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id = @updateId04;

update inc_gr_passage_00.user_offer set is_deleted = 'Y', status = 2 where id in (12,15,981);
update inc_gr_passage_00.user_offer set status = 2 where id in (984,995);
