set @policyNo='RV00000090015';

SELECT @issuance_id := id FROM(SELECT * FROM inc_gr_policy_00.issuance_0000
union all SELECT * FROM inc_gr_policy_00.issuance_0001
union all SELECT * FROM inc_gr_policy_00.issuance_0002
union all SELECT * FROM inc_gr_policy_00.issuance_0003
union all SELECT * FROM inc_gr_policy_00.issuance_0004
union all SELECT * FROM inc_gr_policy_00.issuance_0005
union all SELECT * FROM inc_gr_policy_00.issuance_0006
union all SELECT * FROM inc_gr_policy_00.issuance_0007) a where policy_no = @policyNo;

update inc_gr_policy_00.issuance_insured_auto_0000 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;
update inc_gr_policy_00.issuance_insured_auto_0001 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;
update inc_gr_policy_00.issuance_insured_auto_0002 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;
update inc_gr_policy_00.issuance_insured_auto_0003 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;
update inc_gr_policy_00.issuance_insured_auto_0004 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;
update inc_gr_policy_00.issuance_insured_auto_0005 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;
update inc_gr_policy_00.issuance_insured_auto_0006 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;
update inc_gr_policy_00.issuance_insured_auto_0007 set if_under_the_off_peak_car_scheme = 'YES' where issuance_id = @issuance_id;

SELECT @policy_id := id FROM(SELECT * FROM inc_gr_policy_00.policy_0000
union all SELECT * FROM inc_gr_policy_00.policy_0001
union all SELECT * FROM inc_gr_policy_00.policy_0002
union all SELECT * FROM inc_gr_policy_00.policy_0003
union all SELECT * FROM inc_gr_policy_00.policy_0004
union all SELECT * FROM inc_gr_policy_00.policy_0005
union all SELECT * FROM inc_gr_policy_00.policy_0006
union all SELECT * FROM inc_gr_policy_00.policy_0007) a where policy_no = @policyNo;

update inc_gr_policy_00.policy_insured_auto_0000 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;
update inc_gr_policy_00.policy_insured_auto_0001 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;
update inc_gr_policy_00.policy_insured_auto_0002 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;
update inc_gr_policy_00.policy_insured_auto_0003 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;
update inc_gr_policy_00.policy_insured_auto_0004 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;
update inc_gr_policy_00.policy_insured_auto_0005 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;
update inc_gr_policy_00.policy_insured_auto_0006 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;
update inc_gr_policy_00.policy_insured_auto_0007 set if_under_the_off_peak_car_scheme = 'YES' where policy_id = @policy_id;

update inc_gr_policy_00.policy_version_0000 set version = version+1 where policy_id = @policy_id;
update inc_gr_policy_00.policy_version_0001 set version = version+1 where policy_id = @policy_id;
update inc_gr_policy_00.policy_version_0002 set version = version+1 where policy_id = @policy_id;
update inc_gr_policy_00.policy_version_0003 set version = version+1 where policy_id = @policy_id;
update inc_gr_policy_00.policy_version_0004 set version = version+1 where policy_id = @policy_id;
update inc_gr_policy_00.policy_version_0005 set version = version+1 where policy_id = @policy_id;
update inc_gr_policy_00.policy_version_0006 set version = version+1 where policy_id = @policy_id;
update inc_gr_policy_00.policy_version_0007 set version = version+1 where policy_id = @policy_id;