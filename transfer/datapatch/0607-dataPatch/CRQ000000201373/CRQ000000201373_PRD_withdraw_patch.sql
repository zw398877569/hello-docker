SET SESSION group_concat_max_len = 30000;
set @eventNo ='GC000055373701,GC000055379110,GC000055422711,GC000055424495,GC000055428402,GC000055431538,GC000055438237,GC000055450902,GC000055461136,GC000055464160,GC000055464759,GC000055466240,GC000055479054,GC000055480624,GC000055482011,GC000055487229,GC000055490682,GC000055501918,GC000055504348,GC000055505910,GC000055513170,GC000055517736,GC000055528915,GC000055537341,GC000055538691,GC000055574339,GC000055588220,GC000055589738,GC000055592577,GC000055601129,GC000055607494,GC000055609707,GC000055614686,GC000055628186,GC000055629585,GC000055641601,GC000055646364,GC000055647941,GC000055649452,GC000055665263,GC000055673790,GC000055678097,GC000055681861,GC000055699081,GC000055729865,GC000055730668,GC000055752066,GC000055754295,GC000055757823,GC000055766635,GC000055773718,GC000055778233,GC000055779494,GC000055785396,GC000055786755,GC000055804486,GC000055818184,GC000055820282,GC000055826171,GC000055833016,GC000055842997,GC000055855627,GC000055868273,GC000055870202,GC000055872015,GC000055907498,GC000055912817,GC000055915910,GC000055928566,GC000055931201,GC000055935030,GC000055943225,GC000055948062,GC000055949263,GC000055952106,GC000055954548,GC000055960440,GC000055969096,GC000055982402,GC000055989790,GC000056013088,GC000056015440,GC000056018632,GC000056028269,GC000056044827';
set @eventIds = (
select group_concat(id) from (
select * from inc_gr_policy_00.policy_by_event_0000 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0001 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0002 where find_in_set(event_no,@eventNo) union
select * from inc_gr_policy_00.policy_by_event_0003 where find_in_set(event_no,@eventNo) union
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