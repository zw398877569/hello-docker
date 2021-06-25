SET SESSION group_concat_max_len = 10000;

set @eventList = 'GC000012996516,GC000012908085,GC000012914170,GC000012918098,GC000012935406,GC000012936503,GC000012995008,GC000012893099,GC000012893584';
set @claimNo = 'CLMGC00043002';
set @policyNumber = 1461;
set @policySA = '192852.0';

update inc_gr_smartclaim_00.claims_policy_match set event_policy_no = @policyNumber , total_sum_assure = @policySA where report_no = @claimNo;

set @applicationId = (select application_id from inc_gr_smartclaim_00.claims_policy_match where report_no = @claimNo);
update inc_gr_smartclaim_00.claims_policy_product_match set paid_amount = @policySA where application_id = @applicationId;

update inc_gr_smartclaim_00.claims_policy_by_event_match set is_deleted = 'Y' where find_in_set(event_no,@eventList) and application_id = @applicationId;
update inc_gr_smartclaim_00.claims_policy_by_event_person_match set is_deleted = 'Y' where find_in_set(event_no,@eventList) and application_id = @applicationId;

update inc_gr_smartclaim_00.claims_policy_by_event_liability_match set is_deleted = 'Y',paid_amount = '0' where find_in_set(policy_by_event_no,@eventList) and application_id = @applicationId;
update inc_gr_smartclaim_00.claims_policy_product_liability_match set paid_amount= @policySA where application_id = @applicationId;
update inc_gr_smartclaim_00.claims_application set claimed_amount = @policySA where id = @applicationId;
update inc_gr_smartclaim_00.claims_application_customer_refund set claim_amount = @policySA where application_id = @applicationId;