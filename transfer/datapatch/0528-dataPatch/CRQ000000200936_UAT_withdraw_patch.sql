SET SESSION group_concat_max_len = 30000;
set @eventNo = 
   'GC525309866050,GC527238015718,GC520664367626,GC529167171503,GC525665202523';
set @eventIds = (
select group_concat(id) from (
select * from inc_gr_policy_00.policy_by_event_0000 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0001 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0002 where find_in_set(event_no,@eventNo)
union
select * from inc_gr_policy_00.policy_by_event_0003 where find_in_set(event_no,@eventNo)
union
select * from inc_gr_policy_00.policy_by_event_0004 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0005 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0006 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0007 where find_in_set(event_no,@eventNo))temp
);

update inc_gr_policy_00.policy_event_version_0000 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);

update inc_gr_policy_00.policy_event_version_0001 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);

update inc_gr_policy_00.policy_event_version_0002 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);

update inc_gr_policy_00.policy_event_version_0003 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);

update inc_gr_policy_00.policy_event_version_0004 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);

update inc_gr_policy_00.policy_event_version_0005 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);

update inc_gr_policy_00.policy_event_version_0006 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);

update inc_gr_policy_00.policy_event_version_0007 set gmt_modified=now()  where find_in_set(policy_by_event_id,@eventIds);