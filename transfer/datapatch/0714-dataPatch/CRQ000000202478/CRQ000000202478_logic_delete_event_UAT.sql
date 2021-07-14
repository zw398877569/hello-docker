set @policy_event_no1 = 'GS000000160010';
set @policy_event_no2 = 'GS000000160025';
SELECT @policy_by_event_id1:=id FROM(SELECT * FROM inc_gr_policy_00.policy_by_event_0000 where event_no = @policy_event_no1
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0001 where event_no = @policy_event_no1
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0002 where event_no = @policy_event_no1
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0003 where event_no = @policy_event_no1
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0004 where event_no = @policy_event_no1
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0005 where event_no = @policy_event_no1
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0006 where event_no = @policy_event_no1
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0007 where event_no = @policy_event_no1) a ;
set @policy_event_no3 = 'GS000000160030';
SELECT @policy_by_event_id3:=id FROM(SELECT * FROM inc_gr_policy_00.policy_by_event_0000 where event_no = @policy_event_no3
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0001 where event_no = @policy_event_no3
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0002 where event_no = @policy_event_no3
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0003 where event_no = @policy_event_no3
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0004 where event_no = @policy_event_no3
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0005 where event_no = @policy_event_no3
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0006 where event_no = @policy_event_no3
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0007 where event_no = @policy_event_no3) a ;

update inc_gr_policy_00.issuance_by_event_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no2;

update inc_gr_policy_00.issuance_by_event_liability_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_liability_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_liability_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_liability_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_liability_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_liability_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_liability_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;
update inc_gr_policy_00.issuance_by_event_liability_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no2;

update inc_gr_policy_00.issuance_by_event_0000 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_0001 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_0002 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_0003 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_0004 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_0005 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_0006 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_0007 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;

update inc_gr_policy_00.issuance_by_event_liability_0000 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_liability_0001 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_liability_0002 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_liability_0003 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_liability_0004 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_liability_0005 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_liability_0006 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;
update inc_gr_policy_00.issuance_by_event_liability_0007 set issuance_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no1;

update inc_gr_policy_00.policy_by_event_0000 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_0001 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_0002 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_0003 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_0004 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_0005 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_0006 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_0007 set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;

update inc_gr_policy_00.policy_by_event_liability_0000 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_liability_0001 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_liability_0002 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_liability_0003 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_liability_0004 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_liability_0005 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_liability_0006 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;
update inc_gr_policy_00.policy_by_event_liability_0007 set policy_by_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no1;

update inc_gr_bcp_00.bill_0000 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.bill_0001 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.bill_0002 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.bill_0003 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.bill_0004 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.bill_0005 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.bill_0006 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.bill_0007 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;

update inc_gr_bcp_00.collection_transaction_0000 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.collection_transaction_0001 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.collection_transaction_0002 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.collection_transaction_0003 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.collection_transaction_0004 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.collection_transaction_0005 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.collection_transaction_0006 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.collection_transaction_0007 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;

update inc_gr_bcp_00.receivable_payable_0000 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.receivable_payable_0001 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.receivable_payable_0002 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.receivable_payable_0003 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.receivable_payable_0004 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.receivable_payable_0005 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.receivable_payable_0006 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;
update inc_gr_bcp_00.receivable_payable_0007 set policy_event_no = @policy_event_no2,gmt_modified = SYSDATE() where policy_event_no = @policy_event_no1;

update inc_gr_bcp_00.pre_debit_note_data set event_no = @policy_event_no2,gmt_modified = SYSDATE() where event_no = @policy_event_no1;

update inc_gr_policy_00.policy_event_version_0000 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;
update inc_gr_policy_00.policy_event_version_0001 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;
update inc_gr_policy_00.policy_event_version_0002 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;
update inc_gr_policy_00.policy_event_version_0003 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;
update inc_gr_policy_00.policy_event_version_0004 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;
update inc_gr_policy_00.policy_event_version_0005 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;
update inc_gr_policy_00.policy_event_version_0006 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;
update inc_gr_policy_00.policy_event_version_0007 set version=version+1,gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id1;


update inc_gr_policy_00.issuance_by_event_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;

update inc_gr_policy_00.issuance_by_event_liability_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_liability_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_liability_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_liability_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_liability_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_liability_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_liability_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;
update inc_gr_policy_00.issuance_by_event_liability_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no3;

update inc_gr_policy_00.policy_by_event_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;

update inc_gr_policy_00.policy_by_event_liability_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_liability_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_liability_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_liability_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_liability_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_liability_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_liability_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;
update inc_gr_policy_00.policy_by_event_liability_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no3;

update inc_gr_bcp_00.bill_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.bill_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.bill_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.bill_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.bill_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.bill_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.bill_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.bill_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;

update inc_gr_bcp_00.collection_transaction_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.collection_transaction_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.collection_transaction_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.collection_transaction_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.collection_transaction_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.collection_transaction_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.collection_transaction_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.collection_transaction_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;

update inc_gr_bcp_00.receivable_payable_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.receivable_payable_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.receivable_payable_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.receivable_payable_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.receivable_payable_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.receivable_payable_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.receivable_payable_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;
update inc_gr_bcp_00.receivable_payable_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no3;

update inc_gr_bcp_00.pre_debit_note_data set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no3;

update inc_gr_policy_00.policy_event_version_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
update inc_gr_policy_00.policy_event_version_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
update inc_gr_policy_00.policy_event_version_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
update inc_gr_policy_00.policy_event_version_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
update inc_gr_policy_00.policy_event_version_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
update inc_gr_policy_00.policy_event_version_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
update inc_gr_policy_00.policy_event_version_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
update inc_gr_policy_00.policy_event_version_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id3;
