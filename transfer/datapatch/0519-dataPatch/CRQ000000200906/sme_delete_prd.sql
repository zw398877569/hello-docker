set @policy_event_no = 'GS000000411126';

SELECT @policy_by_event_id:=id FROM(SELECT * FROM inc_gr_policy_00.policy_by_event_0000 where event_no = @policy_event_no
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0001 where event_no = @policy_event_no
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0002 where event_no = @policy_event_no
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0003 where event_no = @policy_event_no
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0004 where event_no = @policy_event_no
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0005 where event_no = @policy_event_no
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0006 where event_no = @policy_event_no
union all SELECT * FROM inc_gr_policy_00.policy_by_event_0007 where event_no = @policy_event_no) a ;

update inc_gr_policy_00.issuance_by_event_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;

update inc_gr_policy_00.policy_by_event_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;

update inc_gr_policy_00.policy_by_event_liability_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_liability_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_liability_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_liability_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_liability_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_liability_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_liability_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;
update inc_gr_policy_00.policy_by_event_liability_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_no = @policy_event_no;

update inc_gr_policy_00.issuance_by_event_liability_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_liability_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_liability_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_liability_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_liability_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_liability_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_liability_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;
update inc_gr_policy_00.issuance_by_event_liability_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where issuance_by_event_no = @policy_event_no;

update inc_gr_bcp_00.bill_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.bill_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.bill_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.bill_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.bill_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.bill_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.bill_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.bill_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;

update inc_gr_bcp_00.collection_transaction_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.collection_transaction_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.collection_transaction_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.collection_transaction_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.collection_transaction_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.collection_transaction_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.collection_transaction_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.collection_transaction_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;

update inc_gr_bcp_00.receivable_payable_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.receivable_payable_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.receivable_payable_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.receivable_payable_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.receivable_payable_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.receivable_payable_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.receivable_payable_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;
update inc_gr_bcp_00.receivable_payable_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_event_no = @policy_event_no;

update inc_gr_bcp_00.pre_debit_note_data set is_deleted = 'Y',gmt_modified = SYSDATE() where event_no = @policy_event_no;

update inc_gr_policy_00.policy_event_version_0000 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
update inc_gr_policy_00.policy_event_version_0001 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
update inc_gr_policy_00.policy_event_version_0002 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
update inc_gr_policy_00.policy_event_version_0003 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
update inc_gr_policy_00.policy_event_version_0004 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
update inc_gr_policy_00.policy_event_version_0005 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
update inc_gr_policy_00.policy_event_version_0006 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
update inc_gr_policy_00.policy_event_version_0007 set is_deleted = 'Y',gmt_modified = SYSDATE() where policy_by_event_id = @policy_by_event_id;
