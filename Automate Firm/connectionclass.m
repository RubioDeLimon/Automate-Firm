           //
//  connectionclass.m
//  Automate Firm
//
//  Created by leonine on 19/10/15.
//  Copyright © 2015 leonine. All rights reserved.
//

#import "connectionclass.h"
#import "settingsViewController.h"


#define serverUrl






NSString *const subDomainMainURL = @"http://automatefirm.com/automate_new/";
NSString *const subdomainURL = @"http://192.168.1.22/af1.1/";


//-----------------------------------Time--------------------------------------------------

#define insertTimesettingurl @"settings/time_rule/insert_time"
#define getallTimerulesurl @"settings/time_rule_response/get_time_data?"
#define getselectedTimerulesurl @"settings/time_rule/time_edit?"
#define updateTimeRuleUrl @"settings/time_rule/time_update_details"
#define deleteTimeRuleUrl @"settings/time_rule/time_delete?"

//----------------------------------Round--Up------------------------------------------------
#define getAllRoundUpUrl @"settings/round_rule/round_up_details"
#define updateRoundUpUrl @"settings/round_rule/update_data"

//--------------------------------------Shift------------------------------------------------

#define myUrl = [nss]
#define createNewShiftUrl @"settings/shift_rule/add_shift"
#define getAllShiftRules @"settings/shift_rule/shift_view_all?"
#define getSelectedShiftRule @"settings/shift_rule/get_shift_data_by_id?"
#define updateShiftRuleUrl @"settings/shift_rule/update_shift?"
#define deleteShiftRuleUrl @"settings/shift_rule/del_shift?"

//--------------------------------------Designation-------------------------------------------
#define createNewDesignationUrl @"settings/designations/add"
#define listdesignationsUrl @"settings/designations/getdata"
#define deleteResponsibiltyURL @"settings/designations/delete_job_resp/"
#define updateDesignationURL @"settings/designations/edit"
#define deleteDesignationUrl  @"settings/designations/delete"
#define moveDesignationUrl @"settings/designations/change_desig"

//-----------------------------------------Bank-----------------------------------------------
#define createBankURL @"http://automatefirm.com/automate_new/index.php/banks/add?"
#define viewAllBankUrl @"http://automatefirm.com/automate_new/index.php/banks/getdata?"
#define viewIndividualBankUrl @"http://automatefirm.com/automate_new/index.php/banks/getdata?"
#define updateBankURL @"http://automatefirm.com/automate_new/index.php/banks/edit?"
#define deleteBankURL @"http://automatefirm.com/automate_new/index.php/banks/delete?"

//-----------------------------------------Office---------------------------------------------
#define viewIndividualofficeUrl @"http://automatefirm.com/automate_new/index.php/office/get_office?"
#define logourl @"http://automatefirm.com/automate_new/images/office/images/"

#define viewstoreurl @"http://automatefirm.com/automate_new/index.php/store/get_store?"
#define storedetailsurl @"http://automatefirm.com/automate_new/index.php/store/get_store_details?"
#define getbankListUrl @"http://automatefirm.com/automate_new/index.php/welcome/get_bank?"
#define updateofficeurl @"http://automatefirm.com/automate_new/index.php/individual_office/edit_office"
#define UpdateStoreurl @"http://automatefirm.com/automate_new/index.php/individual_store/update_store"
#define createorUpdateDeptURL @"http://automatefirm.com/automate_new/index.php/individual_office/update_dpmt"
#define deleteDepartmentUrl @"http://automatefirm.com/automate_new/index.php/individual_office/del_dpmt?id="
#define moveDepartmentUrl @"http://automatefirm.com/automate_new/index.php/settings/office/change_dpmt"
#define createorUpdateCategoryURL @"http://automatefirm.com/automate_new/index.php/individual_office/update_cat"
#define deleteCategoryURL @"http://automatefirm.com/automate_new/index.php/individual_office/del_cat?id="
#define moveCategoryURL @"http://automatefirm.com/automate_new/index.php/settings/office/change_cat"
//------------------------------------------Login----------------------------------------------
//#define getAllCompanyOfficeUrl @"http://automatefirm.com/automate_new/index.php/office/office_list"
//#define loginurl @"http://automatefirm.com/automate_new/index.php/login/validate"
//------------------------Registration----------------------------------------------------------
#define  registerUrl @"http://automatefirm.com/automate_new/index.php/staffing/employee_login/get_app_url"
//-----------------------------------------Login Local----------------------------------------

#define getAllCompanyOfficeUrl @"office/office_list"

#define loginurl @"login/validate"


//--------------------------------------------Week---------------------------------------------

#define createNewweeekRule @"settings/week_rule/insert_week_rule"
#define viewCreatedWeekRule @"settings/week_rule_list/list_of_week_rule/"
#define viewUpdatedWeekRule @"settings/week_rule/update_week_rule"
#define viewIndivdualWeekRule @"settings/week_rule_list/show_week_rule_list"
#define deleteteWeekRule @"settings/week_rule/del_week_rule/"

//-------------------------------------------Common---------------------------------------------

#define viewallcountryurl @"http://automatefirm.com/automate_new/index.php/get_details/get_country"
#define nationalityUrl @"http://automatefirm.com/automate_new/index.php/get_details/get_nationality"
#define viewselecedStaes @"http://automatefirm.com/automate_new/index.php/get_details/get_state?"
#define viewselecedCity @"http://automatefirm.com/automate_new/index.php/get_details/get_city?"


//--------------------------------------Add New Employee-----------------------------------------
//#define uploadEmpImageUrl @"http://automatefirm.com/automate_new/index.php/staffing/add_new_employee/upload_employee_image? online"
#define uploadEmpImageUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/upload_employee_image?"
#define addNewEmployeeOfficeDetailsViewUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/get_details/"
#define getLocalCityUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/get_city_designation/"
#define addNewEmployeeSaveUrl1 @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/insert_employee"
#define addNewEmployeeSaveUrl2 @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/add_section_2/"



//To list employees corresponding Rule

#define listEmployeeRuleUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/get_employeedesignation_rule/"

//To List Leave Conditions


#define listLeaveConcitionUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/get_leave_details/"

#define listExpenseConditionUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/get_expense_reimberse_details/"

#define listLoanConditionURL @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/get_loan_details/"

#define addNewEmployeeSaveUrl3 @"http://192.168.1.45/work/automate_new1/index.php/staffing/add_new_employee/add_section_3"

//-------------------------------------To Edit Employee---------------------------------------

#define updateEmployeeDetailsUrl1 @"http://192.168.1.45/work/automate_new1/index.php/staffing/edit_employees/update_employee"
#define updateProfilePicUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/edit_employees/upload_employee_image?"
#define updateEmployeeDetailsUrl2 @"http://192.168.1.45/work/automate_new1/index.php/staffing/edit_employees/add_section_2"
#define updateEmployeeDetailsUrl3 @"http://192.168.1.45/work/automate_new1/index.php/staffing/edit_employees/add_section_3"
//-------------------------------------------------------------------------------------------


//-----------------------------------New holiday online--------------------------------------
#define createNewHolidayRule @"http://automatefirm.com/automate_new/index.php/holiday_rule/insert_first_data?"
#define secondCategryDonUrl @"http://automatefirm.com/automate_new/index.php/holiday_rule/update_holiday_rule"
#define viewIndividualHilidayView @"http://automatefirm.com/automate_new/index.php/holiday_response/show_holiday_rule?"
#define firstServiceFordisplayWorkingPrmiseUrl @"http://automatefirm.com/automate_new/index.php/holiday_rule_exp?"
#define secondServiceUrl @"http://automatefirm.com/automate_new/index.php/holiday_rule_exp/get_holiday_data?"
#define viewAllHolydays @"http://automatefirm.com/automate_new/index.php/holiday_response/get?"
#define createmainDoneUrl @"http://automatefirm.com/automate_new/index.php/holiday_rule/update_holiday_details"
#define deleteHolidayurl @"http://automatefirm.com/automate_new/index.php/holiday_rule/del_holiday_rule?"






//old

//#define holidayWorkingPremise @"http://192.168.1.45/work/automate_new1/index.php/holiday_response/get_office?"
//#define holidayDepartmenturl @"http://192.168.1.45/work/automate_new1/index.php/holiday_response/get_department?"
//#define holidayCategoryurl @"http://192.168.1.45/work/automate_new1/index.php/holiday_response/get_category?"
//
//
//
////#define createmainDoneUrl @"http://192.168.1.45/work/automate_new1/index.php/holiday_response/update_first_data?"
//#define updateHolidayRule @"http://192.168.1.45/work/automate_new1/index.php/holiday_rule/update_holiday_rule?"
//#define individualHolidayDetailsUrl @"http://192.168.1.45/work/automate_new1/index.php/holiday_response/show_holiday_rule?"
//#define deleteHolidayurl @"http://192.168.1.45/work/automate_new1/index.php/holiday_rule/del_holiday_rule?"
//#define holidayOfficeAndDepartmenturl @"http://192.168.1.45/work/automate_new1/index.php/holiday_response/get_second_data?"



//--------------------------------Include Designation-----------------------------------------

//---------------------------------Include Designation------------------(Excpet Tile Class)
//#define designationURL @"settings/week_rule_list/get_include_designation?"
#define designationURL @"settings/week_rule_list/get_include_designation?"



//------------------------------IncludeDesignation for tile class--------------------


#define includeDesignationUrl @"settings/get_include_designation?"


//#define includeDesignationUrl @"settings/get_include_designation?"

//----------------------------Include Designation for Paperwork Authority------------------

#define includeDesignationUrl3 @"http://192.168.1.45/work/automate_new1/index.php/settings/get_employee_details/desig_list?"

//---------------------------------------Leave Settings Url-------------------------------------

#define viewAllLeavesUrl @"http://192.168.1.45/work/automate_new1/index.php/leave_rule/leave_view_all?"

#define individualLeaveViewUrl @"http://automatefirm.com/automate_new/index.php/leave_rule/get_leave_data_by_id?"

#define individualLeaveConditionViewUrl @"http://automatefirm.com/automate_new/index.php/leave_rule/get_conditions_by_id?"

#define updateLeaveUrl @"http://automatefirm.com/automate_new/index.php/leave_rule/update_leave_condition"
#define finalUpdateUrl @"http://automatefirm.com/automate_new/index.php/leave_rule/update_leave_details"
#define deleteLeaveConditionUrl @"http://automatefirm.com/automate_new/index.php/leave_rule/del_leave_condition?"
#define deleteLeaveRuleUrl @"http://automatefirm.com/automate_new/index.php/leave_rule/del_leave_rule?"

#define saveLeaveCondition @"http://automatefirm.com/automate_new/index.php/leave_rule/new_leave_rule_save"

//-------------------------------------Borrowing-Fine----------------------------------------


#define createNewFineRule @"http://automatefirm.com/automate_new/index.php/fine_rule/insert_data"
#define viewAllfineUrl @"http://automatefirm.com/automate_new/index.php/fine_response/get?"
#define individualFineViewUrl @"http://automatefirm.com/automate_new/index.php/fine_response/show_update_data?"
#define updateFineRule @"http://automatefirm.com/automate_new/index.php/fine_rule/update_fine_rule"
#define deleteFineRule @"http://automatefirm.com/automate_new/index.php/fine_rule/del_fine_rule?"

#define leaveAbbrivationurl @"http://automatefirm.com/automate_new/index.php/loan_response/get_leave_abbreviation?"


//---------------------------------------loan-service--------------------------------------

#define creatingnewloanurl @"http://automatefirm.com/automate_new/index.php/loan_rule/insert_data"

#define secondtimecreatingnewloanurl @"http://automatefirm.com/automate_new/index.php/loan_rule/insert_condition"

#define loanmaindonebuttonserviceurl @"http://automatefirm.com/automate_new/index.php/loan_rule/update_final_data"

#define viewAlloanlistUrl @"http://automatefirm.com/automate_new/index.php/loan_response/get?"

#define deleteloanTileurl @"http://automatefirm.com/automate_new/index.php/loan_rule/del_individual_loan_rule?"


#define updationofindividualloanrules @"http://automatefirm.com/automate_new/index.php/loan_response/show_loan_rule?"

#define updationofloanrulesurl @"http://automatefirm.com/automate_new/index.php/loan_rule/insert_condition_for_updation"

#define deleteloanRulesurl @"http://automatefirm.com/automate_new/index.php/loan_rule/del_loan_rule?"

#define individualtileruleurl @"http://automatefirm.com/automate_new/index.php/loan_rule/get_existing_data?"




///-----------------------------------------Advance-------------------------------------------

//online

#define viewAdvanceViewUrl @"http://automatefirm.com/automate_new/index.php/advance_rule/advance_view/?"
#define viewTilesUrl @"http://automatefirm.com/automate_new/index.php/advance_rule/advance_condition_list/?"
#define individualAdvanceUrl @"http://automatefirm.com/automate_new/index.php/advance_rule/advance_condition_by_id/?"
#define  updateAdvanceCondition @"http://automatefirm.com/automate_new/index.php/advance_rule/update_advance_condition/"
#define createadvance @"http://automatefirm.com/automate_new/index.php/advance_rule/new_advance_condition_save"
#define deleteadvanceCondtion @"http://automatefirm.com/automate_new/index.php/advance_rule/del_advance_condition/?"

//------------------------------------------payrule-------------------------------------------
 //online pay url
#define viewAllPay @"http://automatefirm.com/automate_new/index.php/payroll/payrol_list?"
#define createNewPay @"http://automatefirm.com/automate_new/index.php/payroll/insert_payroll_rule"
#define deletepay @"http://automatefirm.com/automate_new/index.php/payroll/del_payroll?"
#define individualDisplay @"http://automatefirm.com/automate_new/index.php/payroll/view_details?"
#define updatepay @"http://automatefirm.com/automate_new/index.php/payroll/update_pay_roll"

//------------------------------------------Documents----------------------------------------

#define viewdocuments @"settings/documents/get_document_details/"
#define createdoc @"settings/documents/insert_document_data"
#define dateurl @"settings/documents/get_date/"
#define deleteDoc @"settings/documents/del_document"
#define deleteDocWithFile @"settings/documents/del_doc_list"


//<<-----------------------------------Expense Reimbursement-------------------------------->>

#define ViewAllExpenseUrl @"http://192.168.1.45/work/automate_new1/index.php/re_imbursement/re_imbursment_all_list?"
#define individualExpenseViewUrl @"http://192.168.1.45/work/automate_new1/index.php/re_imbursement/get_re_imbursment_by_id?"
#define expenseCreateUrl @"http://192.168.1.45/work/automate_new1/index.php/re_imbursement/re_imbursement_save"
#define saveExpenseConditionUrl @"http://192.168.1.45/work/automate_new1/index.php/re_imbursement/condition_save"
#define expenseConditionViewUrl @"http://192.168.1.45/work/automate_new1/index.php/re_imbursement/get_condition_details?"
#define deleteExpenseConditionUrl @"http://192.168.1.45/work/automate_new1/index.php/re_imbursement/condition_del?"
#define deleteExpenseRuleUrl @"http://192.168.1.45/work/automate_new1/index.php/re_imbursement/expen_del?"


//<<---------------------------------------Overtime Urls---------------------------------->>

#define viewAllOvertimeUrl @"http://automatefirm.com/automate_new/index.php/overtime/view_overtime_list/"
#define createOvertimeRuleUrl @"http://automatefirm.com/automate_new/index.php/overtime/insert_overtime"
#define individualOvertimeViewUrl @"http://automatefirm.com/automate_new/index.php/overtime/get_overtime_details"
#define updateOvertimeUrl @"http://automatefirm.com/automate_new/index.php/overtime/update_overtime"
#define deleteOvertimeUrl @"http://automatefirm.com/automate_new/index.php/overtime/del_overtime/"

//-----------------------------------------Income tax-------------------------------------

#define createtaxUrl @"http://automatefirm.com/automate_new/index.php/income_tax/update"

#define displayincomtaxUrl @"http://automatefirm.com/automate_new/index.php/income_tax/get_incometax_details/"

//------------------------------------Earnings Rule...Online---------------------------------
#define createerningrule @"settings/earnings/earnings_save/"
#define updateErningUrl @"settings/earnings/insert_condition"
#define viewall @"settings/earnings/earnings_all_list/"

#define individaualEarningrule @"settings/earnings/get_earnings_by_id?"
#define conditionDetailsUrl @"settings/earnings/get_earnings_condition_by_id/"
#define deleteEarningRuleUrl @"settings/earnings/earnings_del/"

#define deleteConditionUrl @"settings/earnings/condition_del/"
#define deleteAllConditionUrl @"settings/earnings/condition_del_by_earnings_id/"
#define finalDoneUrl @"settings/earnings/earnings_final_save"


//----------------------------------------Deduction Url---------------------------------------

#define deductCreteUrl @"settings/Deduction/insert_data"
#define viewAlldedction @"settings/deduction/list_deduction_details/"
#define updateDeductionUrl @"settings/Deduction/insert_condition"
#define finaldeductionDone @"settings/Deduction/update_final_data"
#define viewdeductionRuleCondition @"settings/deduction/deduction_edit_details/"
#define individualConditionViewUrl @"settings/Deduction/get_existing_data/"
#define deleteDeductionRuleUrl @"settings/Deduction/del_deduction?"
#define deleteDeductiontileUrl @"settings/Deduction/del_individual_deduction_rule?"


//------------------------------------------AUTOCODING------------------------------------------
#define autocodeListUrl @"settings/autocoding/get_details/"
#define insertAutocode @"settings/autocoding/insert_autocoding_data"


//----------------------------------staffing employee listing----------------------------------

#define staffingemployeeListing @"http://192.168.1.45/work/automate_new1/index.php/staffing/employee_attendance/get_employee_details/"


#define workingpremiseALLlisting @"http://192.168.1.45/work/automate_new1/index.php/staffing/employee_filter/get_details/"

#define filteringEmployeelistservice @"http://192.168.1.45/work/automate_new1/index.php/staffing/employee_filter/get_filter_data"


//<<<-----------------------------------PORTAL SETTINGS----------------------------------->>>
#define createPortalURL @"settings/portal/insert_data"
#define viewPortalURL @"settings/portal/get_details/"



//<<<-------------------------------------Employeeidcard--------------------------------->>>

#define employeesidcardUrl @"http://automatefirm.com/automate_new/index.php/staffing/employee_id/get_employee_details/"



//<<<---------------------------------Employeeindividualviewservice--------------------------->>>

#define employeeindividualServiceUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/edit_employee/get_emp_details/"
#define saveDescriptionUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/edit_employees/update_description"

#define uploadDocumentToFolderURL @"http://192.168.1.45/work/automate_new1/index.php/staffing/emp_documents_details/upload_emp_documents/"

#define viewUploadedDocUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/emp_documents_details/get_emp_documents/"


///<<<<-----------------------------DOCUMENT FORMS------------------------->>>

#define employeeListUrlforForms @"http://automatefirm.com/automate_new/index.php/documentation/expense_form/get_details/"
//Expense Reimbursement
#define listingExpenseReimbursement @"http://automatefirm.com/automate_new/index.php/documentation/expense_form/show_emp_dtls/"
#define listingCategoriesUrl @"http://automatefirm.com/automate_new/index.php/documentation/expense_form/get_cat?exp_id="
//Fine
#define listingAllEmployeeUrl @"http://automatefirm.com/automate_new/index.php/documentation/fine_form/get_details/"
#define listingEmpDetailsFineRuleListingUrl @"http://automatefirm.com/automate_new/index.php/documentation/fine_form/show_emp_dtls/"
#define listCorrespondingFineUrl @"http://automatefirm.com/automate_new/index.php/documentation/fine_form/get_fine_dtls?fine_id="


//Documentationlisting

#define documentationListingservice @"http://192.168.1.45/work/automate_new1/index.php/staffing/documentation/document_list"

//add new document folder

#define addnewdocumentfolder @"http://192.168.1.45/work/automate_new1/index.php/staffing/documentation/insert_custom_folder"

//delete a document in employee individual

#define deletedDocumentemployeeindividualsurl @"http://192.168.1.45/work/automate_new1/index.php/staffing//emp_documents_details/delete_emp_documents/"


//delete a document/orgroupdocumentsin documentationfrontscreen

#define deletedDocumentinsdocumentationFrontscreen @"http://192.168.1.45/work/automate_new1/index.php/staffing//emp_documents_details/delete_emp_documents/"

//deletedocumentmainFolderurl

#define deltedMaindocumentFolderdocuments @"http://192.168.1.45/work/automate_new1/index.php/staffing//emp_documents_details/delete_emp_documents/"

//add documents to custom folder

#define customfolderDocumentsaddedUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/emp_documents_details/upload_custom_documents/"

//move or copy documents

#define moveorcopydocumentsUrl @"http://192.168.1.45/work/automate_new1/index.php/staffing/emp_documents_details/upload_custom_documents/"

//filteremployeedocumentsin frontscreen

#define filterEmployeeDocumentsinFrontscreen @"http://192.168.1.45/work/automate_new1/index.php/staffing/emp_documents_details/upload_custom_documents/"


//documentRenamein document front screen

#define documentRenameindocumentationFrontscreen @"http://192.168.1.45/work/automate_new1/index.php/staffing/emp_documents_details/upload_custom_documents/"



//<<<-------------------paperwork Settings Urls--------------------->>>

#define listingEmpAccordingtoTypeUrl @"http://192.168.1.45/work/automate_new1/index.php/settings/get_employee_details/emp_list?"
#define filterEmpPopUrl @"http://192.168.1.45/work/automate_new1/index.php/settings/pw_employee_filter/get_filter_data"

#define assifntoSpecificEmployeeURL @"http://192.168.1.45/work/automate_new1/index.php/settings/get_employee_details/whole_employee_list?"

#define listallLeavePaperworkRuleURL @"http://192.168.1.45/work/automate_new1/index.php/settings/paperwork_leave/leave_view_all?office_id="
#define individualProtocolViewUrl @"http://192.168.1.45/work/automate_new1/index.php/settings/paperwork_leave/get_rule_edit_details/"

#define saveLeaveProtocolURL @"http://192.168.1.45/work/automate_new1/index.php/settings/paperwork_leave/insert_protocol"


@implementation connectionclass
//Registration


#pragma mark Login and Register

//register Service
-(void)registerServiceFunction:(NSString *)usrName paswrd:(NSString *)pasWrd cmpnyId:(NSString *)cmpnyId
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",registerUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:usrName,@"c_id",nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:mainMsg:)]&&(self.mydelegate!=NULL))
            {
                
                // [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            self.cmpanyDomainUrl=[mystring stringByReplacingOccurrencesOfString:@" " withString:@""];
            [[NSUserDefaults standardUserDefaults]setObject:self.cmpanyDomainUrl forKey:@"domainUrl"];
            NSLog(@"%@",mystring);
            NSString *newLoginUrl=[NSString stringWithFormat:@"%@index.php/staffing/employee_login/get_employee_login",mystring];
            
            [self registerResponseservice:pasWrd AuthCode:cmpnyId urlString:newLoginUrl officeDomainString:mystring];
            
            
        }
        
    }];
    
    [postDataTask resume];
    
}
-(void)registerResponseservice:(NSString *)empId AuthCode:(NSString *)authCode urlString:(NSString *)urlString officeDomainString:(NSString *)officedomainString
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString1=[urlString stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSURL *url = [NSURL URLWithString:urlString1];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    [[NSUserDefaults standardUserDefaults]setObject:empId forKey:@"employeeIdNumber"];
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:empId,@"u_id",authCode,@"password",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:mainMsg:)]&&(self.mydelegate!=NULL))
            {
                
                // [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if (!([mystring isEqualToString:@" fail"])) {
                NSString *newDetailsUrl=[NSString stringWithFormat:@"%@index.php/staffing/edit_employee/get_emp_details/%@",officedomainString,mystring];
                NSLog(@"%@",newDetailsUrl);
                [self getUserDetails:newDetailsUrl];
            }
            else{
              //  [self.mydelegate showalerviewcontroller:@"Registration Failed" mainMsg:@"Try Again Later"];
            }
            
        }
        
    }];
    
    [postDataTask resume];
    
    
}

//List User Details
-(void)getUserDetails:(NSString *)detailUrl
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString1=[detailUrl stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *urlString=[NSString stringWithFormat:@"%@",urlString1];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            //            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            //            {
            //               // [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            //            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //  NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            //   NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(registrationDetailResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate registrationDetailResponse:mydict];
                
            }
            
            
            
        }
        
    }];
    
    [dataTask resume];
}


//send User paswrd
-(void)sendUserDetails:(NSString *)paaswrd language:(NSString *)language emId:(NSString *)empId
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@index.php/staffing/employee_login/emp_password_change",[[NSUserDefaults standardUserDefaults]objectForKey:@"domainUrl"]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:empId,@"u_id",paaswrd,@"password",language,@"language",nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:mainMsg:)]&&(self.mydelegate!=NULL))
            {
                
                // [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(registraionCmpleteResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate registraionCmpleteResponse:mystring];
                
            }
            
            
        }
        
    }];
    
    [postDataTask resume];
    
}


// Login Function

-(void)LoginService:(NSString *)username paswrd:(NSString *)pasword officeid:(NSString *)officeid
{
    
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,loginurl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:username,@"username",pasword,@"password",officeid,@"office",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(loginResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate loginResponse:mystring];
                
            }
            
        }
        
    }];
    
    
    [postDataTask resume];
    
}

//Office Listing In Login Page

-(void)officeListingService
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,getAllCompanyOfficeUrl];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(officeListingResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate officeListingResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    

}

#pragma mark Time Settings

//Create Time Rule

-(void)createnewTimerule:(NSString *)office_id :(NSString *)rulename abbrv:(NSString *)abbrv descripton:(NSString *)descripton checkgracetime:(NSString *)checkgracetime checkgracetimetextvalue:(NSString *)checkgracetimetextvalue workfirstdetails:(NSString *)workfirstdetails workfirstdetailstextvalue:(NSString *)workfirstdetailstextvalue worksecondetails:(NSString *)worksecondetails workthirddetails:(NSString *)workthirdetails latearrivaloption:(NSString *)latearrivaloption latearrivalvalue1:(NSString *)latearrivalvalue1 latearrivalvalue2:(NSString *)latearrivalvalue2 latearrivalvalue3:(NSString *)latearrivalvalue3 latearrivalvalue4:(NSString *)latearrivalvalue4 firstpenalty:(NSString *)firstpenalty secondpenalty:(NSString *)secondpenalty thirdpenalty:(NSString *)thirdpenalty workhoursfirst:(NSString *)workhoursfirst workhourssecond:(NSString *)workhourssecond workhoursthird:(NSString *)workhoursthird workhoursfourth:(NSString *)workhoursfourth workhoursfifth:(NSString *)workhoursfifth timestatusflag:(NSString *)timestatusflag createdby:(NSString *)createdby :(NSString *)selectedDesignation : (NSMutableDictionary *)designationDict
{
    
    
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,insertTimesettingurl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    if(designationDict.count > 0)
    {
        NSDictionary *time_data = [[NSDictionary alloc] initWithObjectsAndKeys:office_id,@"office_id",rulename,@"time_rule_name",abbrv,@"time_abbr",descripton,@"description",checkgracetime,@"grace_time_status",checkgracetimetextvalue,@"grace_time",workfirstdetails,@"calculate_absent_status",workfirstdetailstextvalue,@"calculate_absent_value",worksecondetails,@"ignore_checkout_status",workthirdetails,@"adjust_late_overtime",latearrivaloption,@"late_arrival_option",latearrivalvalue1,@"hours",latearrivalvalue2,@"week",latearrivalvalue3,@"mark",latearrivalvalue4,@"day",firstpenalty,@"penalties_late_duration",secondpenalty,@"penalties_break_duration", thirdpenalty,@"penalties_exit_duration",workhoursfirst,@"deduct_late_working_hours",workhourssecond,@"include_break_working",workhoursthird,@"deduct_prolonged_working",workhoursfourth,@"deduct_early_exit_working",workhoursfifth,@"on_duty_working_hours",timestatusflag,@"time_status",createdby,@"created_by",selectedDesignation,@"selected_desig",designationDict,@"designation_list",nil];
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:time_data options:0 error:&error];
        [request setHTTPBody:postData];

    }
    else
    {
        NSDictionary *time_data = [[NSDictionary alloc] initWithObjectsAndKeys:office_id,@"office_id",rulename,@"time_rule_name",abbrv,@"time_abbr",descripton,@"description",checkgracetime,@"grace_time_status",checkgracetimetextvalue,@"grace_time",workfirstdetails,@"calculate_absent_status",workfirstdetailstextvalue,@"calculate_absent_value",worksecondetails,@"ignore_checkout_status",workthirdetails,@"adjust_late_overtime",latearrivaloption,@"late_arrival_option",latearrivalvalue1,@"hours",latearrivalvalue2,@"week",latearrivalvalue3,@"mark",latearrivalvalue4,@"day",firstpenalty,@"penalties_late_duration",secondpenalty,@"penalties_break_duration", thirdpenalty,@"penalties_exit_duration",workhoursfirst,@"deduct_late_working_hours",workhourssecond,@"include_break_working",workhoursthird,@"deduct_prolonged_working",workhoursfourth,@"deduct_early_exit_working",workhoursfifth,@"on_duty_working_hours",timestatusflag,@"time_status",createdby,@"created_by",selectedDesignation,@"selected_desig",@"",@"designation_list",nil];

        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:time_data options:0 error:&error];
        [request setHTTPBody:postData];
    }
     
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                [self getviewalltimerules:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"1"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Existed"];
                    
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Existed"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Time Rule"];
                    
                }

            }
        }

        
        }];
    
    
    [postDataTask resume];
    
}
//List all created Time Rule
-(void)getviewalltimerules:(NSString *)office_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@office_id=%@",subdomainURL,getallTimerulesurl,office_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
      
        
        if (data==Nil) {
            

            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }

            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(initiallyruleviewresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate initiallyruleviewresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];

    
}
//Display Selected Time Rule
-(void)updatesettingsviewrule:(NSString *)ruleid : (NSString *)officeId
{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@edit_id=%@&office_id=%@",subdomainURL,getselectedTimerulesurl,ruleid,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
           
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(updateruleviewresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate updateruleviewresponse:json];
                
            }

        }

        
    }];
    
    [dataTask resume];
    
    
}
//Update Time Rule
-(void)updateTimerule:(NSString *)office_id :(NSString *)id rulename:(NSString *)rulename abbrv:(NSString *)abbrv descripton:(NSString *)descripton checkgracetime:(NSString *)checkgracetime checkgracetimetextvalue:(NSString *)checkgracetimetextvalue workfirstdetails:(NSString *)workfirstdetails workfirstdetailstextvalue:(NSString *)workfirstdetailstextvalue worksecondetails:(NSString *)worksecondetails workthirddetails:(NSString *)workthirdetails latearrivaloption:(NSString *)latearrivaloption latearrivalvalue1:(NSString *)latearrivalvalue1 latearrivalvalue2:(NSString *)latearrivalvalue2 latearrivalvalue3:(NSString *)latearrivalvalue3 latearrivalvalue4:(NSString *)latearrivalvalue4 firstpenalty:(NSString *)firstpenalty secondpenalty:(NSString *)secondpenalty thirdpenalty:(NSString *)thirdpenalty workhoursfirst:(NSString *)workhoursfirst workhourssecond:(NSString *)workhourssecond workhoursthird:(NSString *)workhoursthird workhoursfourth:(NSString *)workhoursfourth workhoursfifth:(NSString *)workhoursfifth timestatusflag:(NSString *)timestatusflag createdby:(NSString *)createdby :(NSString *)selectedDesignation : (NSMutableDictionary *)designationDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,updateTimeRuleUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    if(designationDict.count > 0)
    {
        NSDictionary *time_data = [[NSDictionary alloc] initWithObjectsAndKeys:office_id,@"office_id",id
                                   ,@"time_edit_id",rulename,@"time_rule_name",abbrv,@"time_abbr",descripton,@"description",checkgracetime,@"grace_time_status",checkgracetimetextvalue,@"grace_time",workfirstdetails,@"calculate_absent_status",workfirstdetailstextvalue,@"calculate_absent_value",worksecondetails,@"ignore_checkout_status",workthirdetails,@"adjust_late_overtime",latearrivaloption,@"late_arrival_option",latearrivalvalue1,@"hours",latearrivalvalue2,@"week",latearrivalvalue3,@"mark",latearrivalvalue4,@"day",firstpenalty,@"penalties_late_duration",secondpenalty,@"penalties_break_duration", thirdpenalty,@"penalties_exit_duration",workhoursfirst,@"deduct_late_working_hours",workhourssecond,@"include_break_working",workhoursthird,@"deduct_prolonged_working",workhoursfourth,@"deduct_early_exit_working",workhoursfifth,@"on_duty_working_hours",timestatusflag,@"time_status",createdby,@"created_by",selectedDesignation,@"selected_desig",designationDict,@"designation_list",nil];
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:time_data options:0 error:&error];
        [request setHTTPBody:postData];
        
    }
    else
    {
        NSDictionary *time_data = [[NSDictionary alloc] initWithObjectsAndKeys:office_id,@"office_id",id,@"time_edit_id",rulename,@"time_rule_name",abbrv,@"time_abbr",descripton,@"description",checkgracetime,@"grace_time_status",checkgracetimetextvalue,@"grace_time",workfirstdetails,@"calculate_absent_status",workfirstdetailstextvalue,@"calculate_absent_value",worksecondetails,@"ignore_checkout_status",workthirdetails,@"adjust_late_overtime",latearrivaloption,@"late_arrival_option",latearrivalvalue1,@"hours",latearrivalvalue2,@"week",latearrivalvalue3,@"mark",latearrivalvalue4,@"day",firstpenalty,@"penalties_late_duration",secondpenalty,@"penalties_break_duration", thirdpenalty,@"penalties_exit_duration",workhoursfirst,@"deduct_late_working_hours",workhourssecond,@"include_break_working",workhoursthird,@"deduct_prolonged_working",workhoursfourth,@"deduct_early_exit_working",workhoursfifth,@"on_duty_working_hours",timestatusflag,@"time_status",createdby,@"created_by",selectedDesignation,@"selected_desig",@"",@"designation_list",nil];
        
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:time_data options:0 error:&error];
        [request setHTTPBody:postData];
    }
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            
            NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if([[json objectForKey:@"status"] isEqualToString:@"200"])
            {
                [self getviewalltimerules:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"1"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Existed"];
                    
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Existed"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Update Time Rule"];
                    
                }
            }
        }
        
        
    }];
    
    
    [postDataTask resume];
}

//Delete Time Rule
-(void)deleteTimeRule:(NSString *)officeID : (NSString *)rid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@delete_id=%@&office_id=%@",subdomainURL,deleteTimeRuleUrl,rid,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(deleteSettingsRuleResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteSettingsRuleResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
                                                                                                                                                                                                                                                                                                                                                                 
#pragma mark RoundUp Settings
//List All RoundUp Rules && Individual WholeView

-(void)roundUpViewAll:(NSString *)office_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",subdomainURL,getAllRoundUpUrl,office_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(initiallyRoundupRuleViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate initiallyRoundupRuleViewResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

//RoundUp Update

-(void)roundUpUpdate:(NSString *)officeID :(NSString *)roundupName :(NSString *)description :(NSString *)checkinRounding :(NSString *)checkinValue :(NSString *)checkoutRounding :(NSString *)checkoutValue :(NSString *)breakStart :(NSString *)breakEnd
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",subdomainURL,updateRoundUpUrl,officeID];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *roundupDict = [[NSDictionary alloc] initWithObjectsAndKeys:roundupName,@"round_up_name",description,@"round_up_description",checkinRounding,@"round_up_checkbox1",checkinValue,@"round_up_time1",checkoutRounding,@"round_up_checkbox2",checkoutValue,@"round_up_time2",breakStart,@"round_up_checkbox3",breakEnd,@"round_up_checkbox4",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:roundupDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if([[json objectForKey:@"status"] isEqualToString:@"200"])
            {
                [self roundUpViewAll:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Update Time Rule"];
                    
                }
            }
        }
        
        
    }];
    
    
    [postDataTask resume];
}


#pragma mark Shift Settings

//Create New Shift Rule
-(void)createNewShiftRule:(NSString *)shift_name shift_abbrv:(NSString *)shift_abbrv shift_type:(NSString *)shift_type shift_description:(NSString *)shift_description day_punch_start:(NSString *)day_punch_start day_shift_start:(NSString *)day_shift_start day_shift_end:(NSString *)day_shift_end day_working_hours:(NSString *)day_working_hours day_break_type:(NSString *)day_break_type day_break_begin:(NSString *)day_break_begin day_break_end:(NSString *)day_break_end day_break_duration:(NSString *)day_break_duration day_intime_chekbox:(NSString *)day_intime_chekbox day_outtime_checkbox:(NSString *)day_outtime_checkbox day_intime_value:(NSString *)day_intime_value day_outtime_value:(NSString *)day_outtime_value swing_punch_start:(NSString *)swing_punch_start swing_shift_start:(NSString *)swing_shift_start swing_shift_end:(NSString *)swing_shift_end swing_working_hours:(NSString *)swing_working_hours swing_break_type:(NSString *)swing_break_type swing_break_begin:(NSString *)swing_break_begin swing_break_end:(NSString *)swing_break_end swing_break_duration:(NSString *)swing_break_duration swing_inttime_checkbox:(NSString *)swing_inttime_checkbox swing_outtime_checkbox:(NSString *)swing_outtime_checkbox swing_intime_value:(NSString *)swing_intime_value swing_outtime_value:(NSString *)swing_outtime_value night_punch_start:(NSString *)night_punch_start night_shift_start:(NSString *)night_shift_start night_shift_end:(NSString *)night_shift_end night_working_hours:(NSString *)night_working_hours night_break_type:(NSString *)night_break_type night_break_begin:(NSString *)night_break_begin night_break_end:(NSString *)night_break_end night_break_duration:(NSString *)night_break_duration night_intime_checkbox:(NSString *)night_intime_checkbox night_outtime_checkbox:(NSString *)night_outtime_checkbox night_intime_value:(NSString *)night_intime_value night_outtime_value:(NSString *)night_outtime_value shift_status:(NSString *)shift_status shift_created_by:(NSString *)shift_created_by officeID:(NSString *)office_Id :(NSString *)selectedDesig : (NSMutableDictionary *)designationDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createNewShiftUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    if (designationDict.count > 0) {
        NSDictionary *shift_data = [[NSDictionary alloc] initWithObjectsAndKeys:shift_name,@"shift_name",shift_abbrv,@"shift_abbrv",shift_description,@"shift_description",shift_type,@"shift_type",day_punch_start,@"day_punch_start",day_shift_start,@"day_shift_start",day_shift_end,@"day_shift_end",day_working_hours,@"day_working_hours",day_break_type,@"day_break_type",day_break_begin,@"day_break_begin",day_break_end,@"day_break_end",day_break_duration,@"day_break_duration",day_intime_chekbox,@"day_intime_chekbox",day_outtime_checkbox,@"day_outtime_checkbox",day_intime_value,@"day_intime_value",day_outtime_value,@"day_outtime_value",swing_punch_start,@"swing_punch_start", swing_shift_start,@"swing_shift_start",swing_shift_end,@"swing_shift_end",swing_working_hours,@"swing_working_hours",swing_break_type,@"swing_break_type",swing_break_begin,@"swing_break_begin",swing_break_end,@"swing_break_end",swing_break_duration,@"swing_break_duration",swing_inttime_checkbox,@"swing_intime_chekbox",swing_outtime_checkbox,@"swing_outtime_checkbox",swing_intime_value,@"swing_intime_value",swing_outtime_value,@"swing_outtime_value",night_punch_start,@"night_punch_start",night_shift_start,@"night_shift_start",night_shift_end,@"night_shift_end",night_working_hours,@"night_working_hours",night_break_type,@"night_break_type",night_break_begin,@"night_break_begin",night_break_end,@"night_break_end",night_break_duration,@"night_break_duration",night_intime_checkbox,@"night_intime_checkbox",night_outtime_checkbox,@"night_outtime_checkbox",night_intime_value,@"night_intime_value",night_outtime_value,@"night_outtime_value",shift_status,@"shift_status",shift_created_by,@"shift_created_by",office_Id,@"office_id",selectedDesig,@"selected_desig",designationDict,@"designation_list",nil];
        
        
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:shift_data options:0 error:&error];
        [request setHTTPBody:postData];
    }
    else
    {
        NSDictionary *shift_data = [[NSDictionary alloc] initWithObjectsAndKeys:shift_name,@"shift_name",shift_abbrv,@"shift_abbrv",shift_description,@"shift_description",shift_type,@"shift_type",day_punch_start,@"day_punch_start",day_shift_start,@"day_shift_start",day_shift_end,@"day_shift_end",day_working_hours,@"day_working_hours",day_break_type,@"day_break_type",day_break_begin,@"day_break_begin",day_break_end,@"day_break_end",day_break_duration,@"day_break_duration",day_intime_chekbox,@"day_intime_chekbox",day_outtime_checkbox,@"day_outtime_checkbox",day_intime_value,@"day_intime_value",day_outtime_value,@"day_outtime_value",swing_punch_start,@"swing_punch_start", swing_shift_start,@"swing_shift_start",swing_shift_end,@"swing_shift_end",swing_working_hours,@"swing_working_hours",swing_break_type,@"swing_break_type",swing_break_begin,@"swing_break_begin",swing_break_end,@"swing_break_end",swing_break_duration,@"swing_break_duration",swing_inttime_checkbox,@"swing_intime_chekbox",swing_outtime_checkbox,@"swing_outtime_checkbox",swing_intime_value,@"swing_intime_value",swing_outtime_value,@"swing_outtime_value",night_punch_start,@"night_punch_start",night_shift_start,@"night_shift_start",night_shift_end,@"night_shift_end",night_working_hours,@"night_working_hours",night_break_type,@"night_break_type",night_break_begin,@"night_break_begin",night_break_end,@"night_break_end",night_break_duration,@"night_break_duration",night_intime_checkbox,@"night_intime_checkbox",night_outtime_checkbox,@"night_outtime_checkbox",night_intime_value,@"night_intime_value",night_outtime_value,@"night_outtime_value",shift_status,@"shift_status",shift_created_by,@"shift_created_by",office_Id,@"office_id",selectedDesig,@"selected_desig",designationDict,@"designation_list",nil];
        
        
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:shift_data options:0 error:&error];
        [request setHTTPBody:postData];
    }
    
    
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([mystring isEqualToString:@"1"]) {
                [self getViewAllShiftRules:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else if ([mystring isEqualToString:@"exist"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Existed"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Shift Rule"];
                    
                }
                
            }
        }
    }];
    
    
    [postDataTask resume];
}


//Display all the created shift rules

-(void)getViewAllShiftRules:(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@office_id=%@",getAllShiftRules,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(initiallyShiftRuleViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate initiallyShiftRuleViewResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];

}


//Display Selected Shift Rule
-(void)displaySelectedShiftRule:(NSString *)officeID :(NSString *)ruleid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@office_id=%@&&shift_id=%@",getSelectedShiftRule,officeID,ruleid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(updateruleviewresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate updateruleviewresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}


//Update Shift Rule
-(void)updateShiftRule:(NSString *)id shift_name:(NSString *)shift_name shift_abbrv:(NSString *)shift_abbrv shift_type:(NSString *)shift_type shift_description:(NSString *)shift_description day_punch_start:(NSString *)day_punch_start day_shift_start:(NSString *)day_shift_start day_shift_end:(NSString *)day_shift_end day_working_hours:(NSString *)day_working_hours day_break_type:(NSString *)day_break_type day_break_begin:(NSString *)day_break_begin day_break_end:(NSString *)day_break_end day_break_duration:(NSString *)day_break_duration day_intime_chekbox:(NSString *)day_intime_chekbox day_outtime_checkbox:(NSString *)day_outtime_checkbox day_intime_value:(NSString *)day_intime_value day_outtime_value:(NSString *)day_outtime_value swing_punch_start:(NSString *)swing_punch_start swing_shift_start:(NSString *)swing_shift_start swing_shift_end:(NSString *)swing_shift_end swing_working_hours:(NSString *)swing_working_hours swing_break_type:(NSString *)swing_break_type swing_break_begin:(NSString *)swing_break_begin swing_break_end:(NSString *)swing_break_end swing_break_duration:(NSString *)swing_break_duration swing_inttime_checkbox:(NSString *)swing_inttime_checkbox swing_outtime_checkbox:(NSString *)swing_outtime_checkbox swing_intime_value:(NSString *)swing_intime_value swing_outtime_value:(NSString *)swing_outtime_value night_punch_start:(NSString *)night_punch_start night_shift_start:(NSString *)night_shift_start night_shift_end:(NSString *)night_shift_end night_working_hours:(NSString *)night_working_hours night_break_type:(NSString *)night_break_type night_break_begin:(NSString *)night_break_begin night_break_end:(NSString *)night_break_end night_break_duration:(NSString *)night_break_duration night_intime_checkbox:(NSString *)night_intime_checkbox night_outtime_checkbox:(NSString *)night_outtime_checkbox night_intime_value:(NSString *)night_intime_value night_outtime_value:(NSString *)night_outtime_value shift_status:(NSString *)shift_status shift_created_by:(NSString *)shift_created_by officeID:(NSString *)officeID : (NSString *)selectedDesig :(NSMutableDictionary *)designationDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@shift_id=%@",updateShiftRuleUrl,id];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    if (designationDict.count > 0) {
        NSDictionary *shift_data = [[NSDictionary alloc] initWithObjectsAndKeys:shift_name,@"shift_name",shift_abbrv,@"shift_abbrv",shift_description,@"shift_description",shift_type,@"shift_type",day_punch_start,@"day_punch_start",day_shift_start,@"day_shift_start",day_shift_end,@"day_shift_end",day_working_hours,@"day_working_hours",day_break_type,@"day_break_type",day_break_begin,@"day_break_begin",day_break_end,@"day_break_end",day_break_duration,@"day_break_duration",day_intime_chekbox,@"day_intime_chekbox",day_outtime_checkbox,@"day_outtime_checkbox",day_intime_value,@"day_intime_value",day_outtime_value,@"day_outtime_value",swing_punch_start,@"swing_punch_start", swing_shift_start,@"swing_shift_start",swing_shift_end,@"swing_shift_end",swing_working_hours,@"swing_working_hours",swing_break_type,@"swing_break_type",swing_break_begin,@"swing_break_begin",swing_break_end,@"swing_break_end",swing_break_duration,@"swing_break_duration",swing_inttime_checkbox,@"swing_intime_chekbox",swing_outtime_checkbox,@"swing_outtime_checkbox",swing_intime_value,@"swing_intime_value",swing_outtime_value,@"swing_outtime_value",night_punch_start,@"night_punch_start",night_shift_start,@"night_shift_start",night_shift_end,@"night_shift_end",night_working_hours,@"night_working_hours",night_break_type,@"night_break_type",night_break_begin,@"night_break_begin",night_break_end,@"night_break_end",night_break_duration,@"night_break_duration",night_intime_checkbox,@"night_intime_checkbox",night_outtime_checkbox,@"night_outtime_checkbox",night_intime_value,@"night_intime_value",night_outtime_value,@"night_outtime_value",shift_status,@"shift_status",shift_created_by,@"shift_created_by",officeID,@"office_id",selectedDesig,@"selected_desig",designationDict,@"designation_list",id,@"shift_id", nil];
        
        
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:shift_data options:0 error:&error];
        [request setHTTPBody:postData];
    }
    else
    {
        NSDictionary *shift_data = [[NSDictionary alloc] initWithObjectsAndKeys:shift_name,@"shift_name",shift_abbrv,@"shift_abbrv",shift_description,@"shift_description",shift_type,@"shift_type",day_punch_start,@"day_punch_start",day_shift_start,@"day_shift_start",day_shift_end,@"day_shift_end",day_working_hours,@"day_working_hours",day_break_type,@"day_break_type",day_break_begin,@"day_break_begin",day_break_end,@"day_break_end",day_break_duration,@"day_break_duration",day_intime_chekbox,@"day_intime_chekbox",day_outtime_checkbox,@"day_outtime_checkbox",day_intime_value,@"day_intime_value",day_outtime_value,@"day_outtime_value",swing_punch_start,@"swing_punch_start", swing_shift_start,@"swing_shift_start",swing_shift_end,@"swing_shift_end",swing_working_hours,@"swing_working_hours",swing_break_type,@"swing_break_type",swing_break_begin,@"swing_break_begin",swing_break_end,@"swing_break_end",swing_break_duration,@"swing_break_duration",swing_inttime_checkbox,@"swing_intime_chekbox",swing_outtime_checkbox,@"swing_outtime_checkbox",swing_intime_value,@"swing_intime_value",swing_outtime_value,@"swing_outtime_value",night_punch_start,@"night_punch_start",night_shift_start,@"night_shift_start",night_shift_end,@"night_shift_end",night_working_hours,@"night_working_hours",night_break_type,@"night_break_type",night_break_begin,@"night_break_begin",night_break_end,@"night_break_end",night_break_duration,@"night_break_duration",night_intime_checkbox,@"night_intime_checkbox",night_outtime_checkbox,@"night_outtime_checkbox",night_intime_value,@"night_intime_value",night_outtime_value,@"night_outtime_value",shift_status,@"shift_status",shift_created_by,@"shift_created_by",officeID,@"office_id",selectedDesig,@"selected_desig",@"",@"designation_list",id,@"shift_id",nil];
        
        
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:shift_data options:0 error:&error];
        [request setHTTPBody:postData];
    }

    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                [self getViewAllShiftRules:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else if ([mystring isEqualToString:@"exist"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Existed"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Shift Rule"];
                }
            }
        }
    }];
    
    
    [postDataTask resume];

}
-(void)deleteShiftRule:(NSString *)officeID :(NSString *)rid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@shift_id=%@",deleteShiftRuleUrl,rid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(deleteSettingsRuleResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteSettingsRuleResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}


#pragma mark Designation Settings
//General Settings_ ADD NEW DESIGNATION

-(void)createNewDesignations:(id)desigDict
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,createNewDesignationUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    //  NSDictionary *createdDesignation = [[NSDictionary alloc] initWithObjectsAndKeys:designation_title,@"designation_title",job_code,@"job_code",designation_description,@"designation_description",job_descriptions,@"job_description_list",desig_created_by,@"desig_created_by",@"ios",@"req",nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:desigDict options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"1"]) {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Designation Title Already Exists"];
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Job Code Already Exists"];
                }
            }
            else if([[json objectForKey:@"status"] isEqualToString:@"200"])
            {
                [self viewAllDesignations];
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Failed to Create a Designation"];
                }
            }
        }
    }];
    [postDataTask resume];
    
}

//General Settings_VIEW ALL DESIGNATIONS
-(void)viewAllDesignations
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,listdesignationsUrl];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            if ([self.mydelegate respondsToSelector:@selector(designationsGotresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate designationsGotresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
}

//General Settings_INDIVIDUAL DESIGNATION VIEW

-(void)individualDesignationView:(NSString *)desig_ID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",subdomainURL,listdesignationsUrl,desig_ID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            if ([self.mydelegate respondsToSelector:@selector(updateruleviewresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate updateruleviewresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
}
//Delete Responsibilty
-(void)deleteResponsibility:(NSString *)responsibilityID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,deleteResponsibiltyURL,responsibilityID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",json);
            //            if ([self.mydelegate respondsToSelector:@selector(updateruleviewresponse:)]&&(self.mydelegate!=NULL))
            //            {
            //
            //                [self.mydelegate updateruleviewresponse:json];
            //
            //            }
        }
    }];
    
    [dataTask resume];
}

//General Settings_UPDATE DESIGNATION
-(void)updateDesignation:(id)desigDict
{
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,updateDesignationURL];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    //NSDictionary *createdDesignation = [[NSDictionary alloc] initWithObjectsAndKeys:designation_title,@"designation_title",job_code,@"job_code",designation_description,@"designation_description",job_descriptions,@"job_description_list",desig_created_by,@"desig_created_by",@"ios",@"req",nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:desigDict options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"1"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Designation Title Already Exists"];
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Job Code Already Exists"];
                }
            }
            else if([[json objectForKey:@"status"] isEqualToString:@"200"])
            {
                [self viewAllDesignations];
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Failed to Create a Designation"];
                }
            }
        }
    }];
    
    
    [postDataTask resume];
}

//General Settings_DELETE DESIGNATION

-(void)deleteDesignation:(NSString *)desig_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",subdomainURL,deleteDesignationUrl,desig_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            
            if ([self.mydelegate respondsToSelector:@selector(deleteResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteResponse:json];
                
            }
            
        }
        
    }];
    
    [dataTask resume];
    
}
//Move Existing Employees to Another Designation
-(void)moveEmployeesToDesignation:(id)DesignationDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,moveDesignationUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:DesignationDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:json];
            }
        }
    }];
    [postDataTask resume];
}

#pragma mark Bank Settings
//General Settings_CREATE NEW BANK

-(void)createNewBank:(NSString *)bank_name :(NSString *)bank_abbrv :(NSString *)bank_branch :(NSString *)bank_description :(NSString *)bank_holder_name :(NSString *)bank_account_number :(NSString *)bank_iban :(NSString *)bank_bic :(NSString *)bank_address :(NSString *)bank_created_date :(NSString *)bank_modifide_date :(NSString *)bank_status
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@req=ios",createBankURL];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    NSDictionary *createdDesignation = [[NSDictionary alloc] initWithObjectsAndKeys:bank_name,@"bank_name",bank_abbrv,@"bank_abbrv",bank_branch,@"bank_branch",bank_description,@"bank_description",bank_holder_name,@"bank_holder_name",bank_account_number,@"bank_account_number",bank_iban,@"bank_iban",bank_bic,@"bank_bic",bank_address,@"bank_address",bank_created_date,@"bank_created_date",bank_modifide_date,@"bank_modifide_date",bank_status,@"bank_status",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:createdDesignation options:0 error:&error];
    [request setHTTPBody:postData];
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"\t\r\n1"]) {
                [self viewAllBank];
            }
            else if ([mystring isEqualToString:@"\t\r\nabbreviation exist"]) {
                
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exists"];
                }
            }
            else if ([mystring isEqualToString:@"\t\r\niban exist"]) {
                
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"IBAN Already Exists"];
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Failed to create a new Bank"];
                }
            }
            
        }
        
    }];
    
    [postDataTask resume];

}

//General Settings_LIST ALL BANK
-(void)viewAllBank
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@req=ios",viewAllBankUrl];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(allBankViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate allBankViewResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
//General Settings_INDIVIDUAL BANK VIEW

-(void)individualBankView:(NSString *)bank_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@req=ios&bank_id=%@",viewIndividualBankUrl,bank_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            id jsonDict=[json objectAtIndex:0];
            if ([self.mydelegate respondsToSelector:@selector(updateruleviewresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate updateruleviewresponse:jsonDict];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];

}


//General Settings_UPDATE BANK

-(void)updateBank:(NSString *)bankID :(NSString *)bank_name :(NSString *)bank_abbrv :(NSString *)bank_branch :(NSString *)bank_description :(NSString *)bank_holder_name :(NSString *)bank_account_number :(NSString *)bank_iban :(NSString *)bank_bic :(NSString *)bank_address :(NSString *)bank_created_date :(NSString *)bank_modifide_date :(NSString *)bank_status
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@req=ios&bank_id=%@",updateBankURL,bankID];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    NSDictionary *createdDesignation = [[NSDictionary alloc] initWithObjectsAndKeys:bank_name,@"bank_name",bank_abbrv,@"bank_abbrv",bank_branch,@"bank_branch",bank_description,@"bank_description",bank_holder_name,@"bank_holder_name",bank_account_number,@"bank_account_number",bank_iban,@"bank_iban",bank_bic,@"bank_bic",bank_address,@"bank_address",bank_created_date,@"bank_created_date",bank_modifide_date,@"bank_modifide_date",bank_status,@"bank_status",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:createdDesignation options:0 error:&error];
    [request setHTTPBody:postData];
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"\t\nabbreviation exist"]) {
                
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Bank Abbreviation Already Exists"];
                    
                }
            }
            else if ([mystring isEqualToString:@"\t\nabbreviation exist"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Bank IBAN Number Already Exists"];
                    
                }
            }
            
            else if([mystring isEqualToString:@"\t\n1"])
            {
                [self viewAllBank];

            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Failed to Update Bank Settings"];
                }
            }
        }
        
    }];
    
    
    [postDataTask resume];

}
//General Settings_DELETE BANK

-(void)deleteBank:(NSString *)bankID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@req=ios&bank_id=%@",deleteBankURL,bankID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
    
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            
            
            NSLog(@"%@",json);
            
        }
        
        
    }];
    
    [dataTask resume];

}


#pragma mark Office Settings
//Office Creation

-(void)displayOfficeDetail:(NSString *)officeid
{
   
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@id=%@",viewIndividualofficeUrl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSURLSession *session = [NSURLSession sharedSession];
            NSString *logostring = [NSString stringWithFormat:@"%@/%@",logourl,[[[json objectForKey:@"office"]objectAtIndex:0]objectForKey:@"logo"]];
            
            NSString *secondString = [logostring stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
           
            NSURLSessionDataTask *dataTask1 = [session dataTaskWithURL:[NSURL URLWithString:secondString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                
                
                if (data==Nil) {
                    
                    
                    if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                    {
                        
                        [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                        
                    }
                    
                    
                }
                
                else
                {
                    self.logoimag = [UIImage imageWithData:data];
                    
                    if ([self.mydelegate respondsToSelector:@selector(individualOfficeView::)]&&(self.mydelegate!=NULL))
                    {
                        
                        [self.mydelegate individualOfficeView:json:self.logoimag];
                        
                    }
                    
                }
            }];
            
            [dataTask1 resume];
           
            
            
        }
        
    }];
    
    [dataTask resume];
          
    
}

-(void)displayAllCountries{
    dispatch_async(dispatch_get_main_queue(), ^{
   
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@",viewallcountryurl];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(allcountryresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate allcountryresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
     });
}

-(void)displayNationality{
    dispatch_async(dispatch_get_main_queue(), ^{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@",nationalityUrl];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(allcountryresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate allcountryresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    });
 
}

-(void)displaySelectedStates:(NSString *)countryid
{
    dispatch_async(dispatch_get_main_queue(), ^{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@c_id=%@",viewselecedStaes,countryid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                        if ([self.mydelegate respondsToSelector:@selector(allstateresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate allstateresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
});
    
}
-(void)displayAllCities:(NSString *)stateid
{
dispatch_async(dispatch_get_main_queue(), ^{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@s_id=%@",viewselecedCity,stateid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
           
            if ([self.mydelegate respondsToSelector:@selector(allcityresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate allcityresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
  });
}

-(void)getallBankList
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@",getbankListUrl];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==nil) {
            
        }
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:json];
            }
        }
        
    }];
    
    [dataTask resume];
    
}

-(void)Editofficefunction:(NSMutableDictionary *)officeDict;//(NSString *)officename officeId:(NSString *)officeid abbrev:(NSString *)abbrev subtittle:(NSString *)subtittle sector:(NSString *)sector regid:(NSString *)registerid currency:(NSString *)currency financialyear:(NSString *)finanicalyear emailid:(NSString *)emailid telephonenumber:(NSString *)telephone fax:(NSString *)fax website:(NSString *)website building:(NSString *)building block:(NSString *)block street:(NSString *)street country:(NSString *)country state:(NSString *)state city:(NSString *)city postcode:(NSString *)postcode landmark:(NSString *)landmark department_listarray:(NSMutableArray *)deptArray category_listarray:(NSMutableArray *)categoryArray bank_listarray:(NSMutableArray *)bankArray printer_listarray:(NSMutableArray *)printerArray otherdetails_array:(NSMutableArray *)otherdetailsarray
{
    
    dispatch_async(dispatch_get_main_queue(), ^{
    

    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateofficeurl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    //NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:officename,@"office_name",officeid,@"id",abbrev,@"abrivation",subtittle,@"sub_title",sector,@"sector",registerid,@"reg_id",currency,@"currency",finanicalyear,@"year",emailid,@"email",telephone,@"telephone",fax,@"fax",website,@"website",building,@"building",block,@"block",street,@"street",country,@"country",state,@"state",city,@"city",postcode,@"pincode",landmark,@"landmark",deptArray,@"selected_department",categoryArray,@"selected_category",bankArray,@"selected_bank",printerArray,@"printer_array",otherdetailsarray,@"otherdetails",
                         //    nil];
    
    
   
    NSData *postData = [NSJSONSerialization dataWithJSONObject:officeDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            //   NSString *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(updateofficeResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate updateofficeResponse:mystring];
                
            }
            
            
            
        }
        
        
    }];
    
    
    [postDataTask resume];
    
    });
}
-(void)createorupdateDepartment:(id)deptDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createorUpdateDeptURL];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:deptDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            //   NSString *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate createResponse:mystring];
                
            }
            
            
            
        }
        
        
    }];
    
    
    [postDataTask resume];
}
-(void)deleteDepartment:(NSString *)deptID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",deleteDepartmentUrl,deptID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);

            if ([self.mydelegate respondsToSelector:@selector(deleteResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteResponse:mystring];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
-(void)moveEmployeesToAnotherDepartment:(NSMutableDictionary *)deptDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",moveDepartmentUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:deptDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            //   NSString *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(deleteResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteResponse:mystring];
                
            }
        }
        
        
    }];
    
    
    [postDataTask resume];
}
-(void)createorUpdateCategory:(id)catDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createorUpdateCategoryURL];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:catDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            //   NSString *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllResponse:mystring];
                
            }
        }
        
        
    }];
    
    
    [postDataTask resume];
}
-(void)deleteCategory:(NSString *)categoryID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",deleteCategoryURL,categoryID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:mystring];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
-(void)moveEmployeesToAnotherCategory:(id)catDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",moveCategoryURL];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:catDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            //   NSString *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:mystring];
                
            }
        }
        
        
    }];
    
    
    [postDataTask resume];
}
-(void)uploadNewImage:(UIImage *)image : (NSString *)officeId
{
    dispatch_async(dispatch_get_main_queue(), ^{

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    
    
    NSData *imageData =UIImageJPEGRepresentation(image, 90);
    NSString *imageString= @"http://192.168.1.11/work/automate/automate/index.php/individual_office/edit_office_image?";
    NSString *urlString=[NSString stringWithFormat:@"%@oid=%@",imageString,officeId];
    NSMutableURLRequest *request =[[NSMutableURLRequest alloc]init];
    [request setURL:[NSURL URLWithString:urlString]];
    [request setHTTPMethod:@"POST"];
    NSString *boundary = @"---------------------------14737809831466499882746641449";
    
    NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@" ,boundary];
    [request addValue:contentType forHTTPHeaderField:@"Content-Type"];
    NSMutableData *body= [NSMutableData data];
    
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n" , boundary]dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Disposition: form-data; name=\"office_img\";filename=\".jpg\"\r\n"
                      dataUsingEncoding:NSUTF8StringEncoding]];
    
    [body appendData:[[NSString stringWithFormat:@"Content-Type: application/octet-stream\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
    //  [body appendData:[@"Content-Type:application/octet-stream\r\n\r\n"dataUsingEncoding:NSUTF8StringEncoding]];
    [ body appendData:[NSData dataWithData:imageData]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n", boundary] dataUsingEncoding :NSUTF8StringEncoding]] ;
    
    [request setHTTPBody:body];
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        NSString *returnString =[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",returnString);
        
        
    }];
    
    
    [postDataTask resume];
       });
}
//storview
-(void)OfficeStoreView:(NSString *)officeid
{
    dispatch_async(dispatch_get_main_queue(), ^{

    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@",viewstoreurl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                       if ([self.mydelegate respondsToSelector:@selector(storeviewresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate storeviewresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
 });
}
//Store Details View
-(void)StoreViewDetails:(NSString *)storeid
{
 dispatch_async(dispatch_get_main_queue(), ^{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@st_id=%@",storedetailsurl,storeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(StoreDetailsViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate StoreDetailsViewResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
     });
}

-(void)updateStorefunction:(NSString *)outletName officeId:(NSString *)officeid storeid:(NSString *)storeid outletType:(NSString *)outlettype abbrev:(NSString *)abbrev subtittle:(NSString *)subtittle sector:(NSString *)sector regid:(NSString *)registerid currency:(NSString *)currency financialyear:(NSString *)finanicalyear emailid:(NSString *)emailid telephonenumber:(NSString *)telephone fax:(NSString *)fax website:(NSString *)website building:(NSString *)building block:(NSString *)block street:(NSString *)street country:(NSString *)country state:(NSString *)state city:(NSString *)city postcode:(NSString *)postcode landmark:(NSString *)landmark  bank_listarray:(NSMutableArray *)bankArray printer_listarray:(NSMutableArray *)printerArray otherdetails_array:(NSMutableArray *)otherdetailsarray;


    {
dispatch_async(dispatch_get_main_queue(), ^{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",UpdateStoreurl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
      NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:outletName,@"store_name",officeid,@"id",storeid,@"store_id",outlettype,@"type",abbrev,@"abrivation",subtittle,@"sub_title",sector,@"sector",registerid,@"reg_id",currency,@"currency",finanicalyear,@"year",emailid,@"email",telephone,@"telephone",fax,@"fax",website,@"website",building,@"building",block,@"block",street,@"street",country,@"country",state,@"state",city,@"city",postcode,@"pincode",landmark,@"landmark",bankArray,@"selected_bank",printerArray,@"printer_array",otherdetailsarray,@"otherdetails",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            //   NSString *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(updateStoreResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate updateStoreResponse:mystring];
                
            }
   
        }
        
    }];
    
    
    [postDataTask resume];
    
    
  });
}


-(void)testing
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"http://192.168.1.11/work/automate/automate/index.php/gen_bar_code/index/17/59921"];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            
            
            NSLog(@"%@",json);
            
        }
        
        
    }];
    
    [dataTask resume];
}

#pragma mark Add New Employee
//<<<<<<<------------------ADD NEW EMPLOYEE------------------->>>>

//Display Add New Employee Screen1 WorkingPremise, department, category, all designation and Bank Details
-(void)addNewEmployeeOfficeDisplayDetails:(NSString *)officeId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",addNewEmployeeOfficeDetailsViewUrl,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(AddNewEmployeeIntitalResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate AddNewEmployeeIntitalResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
//-(void)generateEmployeeCode
//{
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSString *urlString=[NSString stringWithFormat:@"%@req=ios",generateEmpCodeUrl];
//    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        
//        
//        if (data==Nil) {
//            
//            
//            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
//            {
//                
//                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
//                
//            }
//            
//            
//        }
//        
//        else
//        {
//            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//            NSLog(@"%@",mystring);
//            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
//            {
//                
//                [self.mydelegate serviceGotResponse:json];
//                
//            }
//            
//        }
//        
//        
//    }];
//    
//    [dataTask resume];
//}

-(void)uploadEmpImage:(UIImage *)image :(NSString *)empID
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    
    NSData *imageData =UIImageJPEGRepresentation(image, 90);
    
    NSString *urlString= uploadEmpImageUrl ;
    NSString *url=[NSString stringWithFormat:@"%@emp_id=%@",urlString,empID];
    
    NSMutableURLRequest *request =[[NSMutableURLRequest alloc]init];
    
    [request setURL:[NSURL URLWithString:url]];
    
    [request setHTTPMethod:@"POST"];
    
    NSString *boundary = @"---------------------------14737809831466499882746641449";
    
    NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@" ,boundary];
    
    [request addValue:contentType forHTTPHeaderField:@"Content-Type"];
    
    NSMutableData *body= [NSMutableData data];
    
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n" , boundary]dataUsingEncoding:NSUTF8StringEncoding]];
    
    [body appendData:[@"Content-Disposition: form-data; name=\"employee_image\";filename=\".jpg\"\r\n"
                      
                      dataUsingEncoding:NSUTF8StringEncoding]];
    
    [body appendData:[[NSString stringWithFormat:@"Content-Type: application/octet-stream\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
    
    //  [body appendData:[@"Content-Type:application/octet-stream\r\n\r\n"dataUsingEncoding:NSUTF8StringEncoding]];
    
    //NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:empID, @"emp_id",                          nil];
    
   // NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    
    //  [ body appendData:postData];
    
    [ body appendData:[NSData dataWithData:imageData]];
   // [body appendData:postData];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n", boundary] dataUsingEncoding :NSUTF8StringEncoding]] ;
    [request setHTTPBody:body];
    
    //[request setHTTPBody:postData];
    // NSData *returnData =[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    // NSString *returnString =[[NSString alloc]initWithData:returnData encoding:NSUTF8StringEncoding];
    
    // NSLog(@"%@",returnString);
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSString *returnString =[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@",returnString);
        
        if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
        {
            [self.mydelegate serviceGotResponse:returnString];
        }
        
    }];
    
    [postDataTask resume];

}
//Add New Employee 1st Save

-(void)addNewEmployeeSave:(NSMutableDictionary *)personaleDetailsDict
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",addNewEmployeeSaveUrl1];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
        [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:personaleDetailsDict options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(addNewEmployeeSaveResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate addNewEmployeeSaveResponse:mystring];
                
            }
            
        }
        
    }];
    
    
    [postDataTask resume];
}

-(void)getLocalCity:(NSString *)emp_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",getLocalCityUrl,emp_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
-(void)addNewEmployeeSave2:(NSMutableDictionary *)contactDetailsDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",addNewEmployeeSaveUrl2];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    //NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:contactDetailsDict,@"contact_details",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:contactDetailsDict options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(addNewEmployeeSaveResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate addNewEmployeeSaveResponse:mystring];
                
            }
            
        }
        
    }];
    
    
    [postDataTask resume];
}

//To List Employees Corresponding Rules

-(void)listRuleAccordingtoDesignation:(NSString *)empID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",listEmployeeRuleUrl,empID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

//List Leave Conditions

-(void)listLeaveConditions:(NSString *)leaveID :(NSString *)emp_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",listLeaveConcitionUrl,leaveID,emp_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(individualDisplayResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate individualDisplayResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

//List Expense Condition

-(void)listExpenseCondition:(NSString *)expenseID :(NSString *)empID
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",listExpenseConditionUrl,expenseID,empID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(allearningsResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate allearningsResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
//List Loan Conditions

-(void)listLoanCondition:(NSString *)loanID :(NSString *)empID
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",listLoanConditionURL,loanID,empID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(viewAllLoanResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllLoanResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}


//Save 3rd Screen
-(void)addEmployeeSave3:(id)employeeDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",addNewEmployeeSaveUrl3];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:employeeDict options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(addNewEmployeeSaveResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate addNewEmployeeSaveResponse:mystring];
                
            }
            
        }
        
    }];
    
    
    [postDataTask resume];
}


//<<<<<-----------------------------Update Employee------------------------->>>

//Edit Employee 1st Screen

-(void)updateEmployee1:(id)empDetails
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateEmployeeDetailsUrl1];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:empDetails options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate createResponse:mystring];
                
            }
            
        }
        
    }];
    [postDataTask resume];
}

//Update Profile Pic
-(void)updateProfilePic:(UIImage *)image :(NSString *)EmpID
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    
    NSData *imageData =UIImageJPEGRepresentation(image, 90);
    
    NSString *urlString= updateProfilePicUrl;
    NSString *url=[NSString stringWithFormat:@"%@emp_id=%@",urlString,EmpID];
    
    NSMutableURLRequest *request =[[NSMutableURLRequest alloc]init];
    
    [request setURL:[NSURL URLWithString:url]];
    
    [request setHTTPMethod:@"POST"];
    
    NSString *boundary = @"---------------------------14737809831466499882746641449";
    
    NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@" ,boundary];
    
    [request addValue:contentType forHTTPHeaderField:@"Content-Type"];
    
    NSMutableData *body= [NSMutableData data];
    
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n" , boundary]dataUsingEncoding:NSUTF8StringEncoding]];
    
    [body appendData:[@"Content-Disposition: form-data; name=\"employee_image\";filename=\".jpg\"\r\n"
                      
                      dataUsingEncoding:NSUTF8StringEncoding]];
    
    [body appendData:[[NSString stringWithFormat:@"Content-Type: application/octet-stream\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
    
    //  [body appendData:[@"Content-Type:application/octet-stream\r\n\r\n"dataUsingEncoding:NSUTF8StringEncoding]];
    
    //NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:empID, @"emp_id",                          nil];
    
    // NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    
    //  [ body appendData:postData];
    
    [ body appendData:[NSData dataWithData:imageData]];
    // [body appendData:postData];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n", boundary] dataUsingEncoding :NSUTF8StringEncoding]] ;
    [request setHTTPBody:body];
    
    //[request setHTTPBody:postData];
    // NSData *returnData =[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    // NSString *returnString =[[NSString alloc]initWithData:returnData encoding:NSUTF8StringEncoding];
    
    // NSLog(@"%@",returnString);
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSString *returnString =[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@",returnString);
        
        if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
        {
            [self.mydelegate serviceGotResponse:returnString];
        }
        
    }];
    
    [postDataTask resume];
}

-(void)updateEmployee2:(id)empDetails
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateEmployeeDetailsUrl2];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:empDetails options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate createResponse:mystring];
                
            }
            
        }
        
    }];
    [postDataTask resume];
}

//Update employee details page 3
-(void)updateEmployee3:(id)empDetails
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateEmployeeDetailsUrl3];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:empDetails options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(addNewEmployeeSaveResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate addNewEmployeeSaveResponse:mystring];
                
            }
            
        }
        
    }];
    [postDataTask resume];
}

#pragma mark Week Settings
//<<<--------------------------WEEK RULES---------------------------------------->>>
//Create NewWeek Rule

-(void)createNewweekRule:(NSString *)ruleName abbrev:(NSString *)abbrv description:(NSString *)description weekStarton:(NSString *)weekStarton offday1:(NSString *)offDay1 offday2:(NSString *)offDay2 offday3:(NSString *)offDay3 partialday:(NSString *)partialday beginningTime:(NSString *)beginningTime endingTime:(NSString *)endingTime duration:(NSString *)duration breaktype:(NSString *)breaktype breakstart:(NSString *)breakstart breakend:(NSString *)breakend breakduration:(NSString *)breakduration offficeid:(NSString *)officeid :(NSString *)designation :(NSMutableDictionary *)designationList

{
    
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,createNewweeekRule];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    if (designationList.count > 0) {
        NSMutableDictionary *mapData = [[NSMutableDictionary alloc] initWithObjectsAndKeys:ruleName,@"rule_name",abbrv ,@"rule_abr",description,@"rule_description",weekStarton,@"week_start",offDay1,@"app_offday_1",offDay2,@"app_offday_2",offDay3,@"app_offday_3",partialday,@"app_offday_4",beginningTime,@"p_begin",endingTime,@"p_end",duration,@"duration",breaktype,@"breaktype",breakstart,@"break_start",breakend,@"break_stop",officeid,@"o_id",designation,@"selected_desig",designationList,@"designation_list",nil];
        
        if ([breaktype isEqualToString:@"Fixed Break"]) {
            [mapData setObject:breakduration forKey:@"fixed_duration"];
        }
        else if([breaktype isEqualToString:@"Duration Based"])
        {
            [mapData setObject:breakduration forKey:@"duration_based"];
        }
        
        //breakduration,@"break_duration"
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }
    else
    {
        NSMutableDictionary *mapData = [[NSMutableDictionary alloc] initWithObjectsAndKeys:ruleName,@"rule_name",abbrv ,@"rule_abr",description,@"rule_description",weekStarton,@"week_start",offDay1,@"app_offday_1",offDay2,@"app_offday_2",offDay3,@"app_offday_3",partialday,@"app_offday_4",beginningTime,@"p_begin",endingTime,@"p_end",duration,@"duration",breaktype,@"breaktype",breakstart,@"break_start",breakend,@"break_stop",officeid,@"o_id",designation,@"selected_desig",@"",@"designation_list",nil];
        
        if ([breaktype isEqualToString:@"Fixed Break"]) {
            [mapData setObject:breakduration forKey:@"fixed_duration"];
        }
        else if ([breaktype isEqualToString:@"Duration Based"])
        {
            [mapData setObject:breakduration forKey:@"duration_based"];
        }
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }
    
    
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                [self viewOfficeWeekRule:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Week Rule"];
                    
                }
            }
        }
    }];
    [postDataTask resume];
}

//View Created Rules Under office

-(void)viewOfficeWeekRule:(NSString *)oficeid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,viewCreatedWeekRule,oficeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(individualWeekruleViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate individualWeekruleViewResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
}

//View Individual Week Rule Details

-(void)viewIndivdualOfficeWeekRule:(NSString *)weekid officeid:(NSString *)officeid

{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@/%@",subdomainURL,viewIndivdualWeekRule,officeid,weekid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(individualweekruleDetailsViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate individualweekruleDetailsViewResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
}

//Update week Rule

-(void)updateNewweekRule:(NSString *)ruleName abbrev:(NSString *)abbrv description:(NSString *)description weekStarton:(NSString *)weekStarton offday1:(NSString *)offDay1 offday2:(NSString *)offDay2 offday3:(NSString *)offDay3 partialday:(NSString *)partialday beginningTime:(NSString *)beginningTime endingTime:(NSString *)endingTime duration:(NSString *)duration breaktype:(NSString *)breaktype breakstart:(NSString *)breakstart breakend:(NSString *)breakend breakduration:(NSString *)breakduration offficeid:(NSString *)officeid ruleid:(NSString *)ruleid :(NSString *)designation :(NSMutableDictionary *)designationList
{
    
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,viewUpdatedWeekRule];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    if (designationList.count > 0) {
        NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:ruleName,@"rule_name",abbrv ,@"rule_abr",description,@"rule_description",weekStarton,@"week_start",offDay1,@"app_offday_1",offDay2,@"app_offday_2",offDay3,@"app_offday_3",partialday,@"app_offday_4",beginningTime,@"p_begin",endingTime,@"p_end",duration,@"duration",breaktype,@"breaktype",breakstart,@"break_start",breakend,@"break_stop",breakduration,@"break_duration",officeid,@"o_id",ruleid,@"rule_id",designation,@"selected_desig",designationList,@"designation_list",nil];
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }
    else
    {
        NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:ruleName,@"rule_name",abbrv ,@"rule_abr",description,@"rule_description",weekStarton,@"week_start",offDay1,@"app_offday_1",offDay2,@"app_offday_2",offDay3,@"app_offday_3",partialday,@"app_offday_4",beginningTime,@"p_begin",endingTime,@"p_end",duration,@"duration",breaktype,@"breaktype",breakstart,@"break_start",breakend,@"break_stop",breakduration,@"break_duration",officeid,@"o_id",ruleid,@"rule_id",designation,@"selected_desig",@"",@"designation_list",nil];
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }
    
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                [self viewOfficeWeekRule:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Week Rule"];
                    
                }
                
            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
}


//.........Delete week rule.....//

-(void)deleteWeekRule:(NSString *)ruleid;
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,deleteteWeekRule,ruleid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(deleteSettingsRuleResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteSettingsRuleResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
}

-(void)includeDesignation:(NSString *)officeId :(NSString *)ruleType :(NSString *)ruleID
{
       
        NSURLSession *session = [NSURLSession sharedSession];
        NSString *urlString=[NSString stringWithFormat:@"%@%@oid=%@&&rule_id=%@&&type=%@",subdomainURL,designationURL,officeId,ruleID,ruleType];
        NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            
            
            
            if (data==Nil) {
                
                
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                    
                }
                
                
            }
            
            else
            {
                NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                
                NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"%@",mystring);
                
                
                if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate serviceGotResponse:json];
                    
                }
                
            }
            
            
        }];
        
        [dataTask resume];
        
        
        
        
        
        

}
#pragma mark Holiday Settings

                                        //..........HOLYDAY PAGE..............


//<<....New Service for Holiday.........>>

-(void)firstServiceForHolidyWorkingpremiseDeprtmntsAndCategory:(NSString *)officeid
{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@",firstServiceFordisplayWorkingPrmiseUrl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            //            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            //            NSLog(@"%@",mystring);
            
            
            if ([self.mydelegate respondsToSelector:@selector(holidayWorkingPremiseGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate holidayWorkingPremiseGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    

    
}


//................Creation Of holidayRule at first tile............>>

-(void)SubserviceForCreation:(NSString *)workingPremiseId departmentId:(NSString *)deptid categoryId:(NSString *)categoryId officeId:(NSString *)officeId flagString:(NSString *)flagString fromString:(NSString *)fromString toString:(NSString *)toString duration:(NSString *)durationString payment:(NSString *)paymentstring workingPremise:(NSString *)workingPremiseString departmentName:(NSString *)departmentString categrystring:(NSString *)categoryString firstPartDetails:(NSMutableDictionary *)firstPartDict catgryText:(NSString *)catgryText
{
    
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createNewHolidayRule];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    NSMutableDictionary *mapData = [[NSMutableDictionary alloc] init];
    if ([flagString isEqualToString:@"o"]) {
       
        [mapData setObject:workingPremiseId forKey:@"o_id"];
        [mapData setObject:deptid forKey:@"dept_id"];
        [mapData setObject:officeId forKey:@"office_id"];
        [mapData setObject:categoryId forKey:@"cat_id"];
        [mapData setObject:fromString forKey:@"from_Date"];
        [mapData setObject:toString forKey:@"to_Date"];
        [mapData setObject:paymentstring forKey:@"Payment"];
        [mapData setObject:durationString forKey:@"duration"];
        [mapData setObject:workingPremiseString forKey:@"working_Premise"];
        [mapData setObject:departmentString forKey:@"Department"];
        [mapData setObject:categoryString forKey:@"category"];
        [mapData setObject:catgryText forKey:@"categorytext"];
        [mapData setObject:@"o" forKey:@"working_Premise_type"];
        
        
    }
    else
    {
        //[mapData setObject:workingPremiseId forKey:@"type_id"];
        [mapData setObject:workingPremiseId forKey:@"o_id"];
        [mapData setObject:deptid forKey:@"dept_id"];
        [mapData setObject:officeId forKey:@"office_id"];
        [mapData setObject:categoryId forKey:@"cat_id"];
        [mapData setObject:fromString forKey:@"from_Date"];
        [mapData setObject:toString forKey:@"to_Date"];
        [mapData setObject:paymentstring forKey:@"Payment"];
        [mapData setObject:durationString forKey:@"duration"];
        [mapData setObject:workingPremiseString forKey:@"working_Premise"];
        [mapData setObject:departmentString forKey:@"Department"];
        [mapData setObject:categoryString forKey:@"category"];
        [mapData setObject:catgryText forKey:@"categorytext"];
        [mapData setObject:@"s" forKey:@"working_Premise_type"];
        
        
        
    }
    
    NSDictionary *mapData1=[[NSDictionary alloc]initWithObjectsAndKeys:mapData,@"other_Details",firstPartDict,@"details", nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            
            
            else{
                if ([self.mydelegate respondsToSelector:@selector(firstsavingResponsegetRuleIdResponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate firstsavingResponsegetRuleIdResponse:mystring];
                    
                }
            }
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
    
    
    
    
}

//.....saving Each tile ,updating and deleting in same function.............>>

-(void)SecondCategoryDoneServiceFunction:(NSString *)workingPremiseId departmentId:(NSString *)deptid categoryId:(NSString *)categoryId officeId:(NSString *)officeId flagString:(NSString *)flagString fromString:(NSString *)fromString toString:(NSString *)toString duration:(NSString *)durationString payment:(NSString *)paymentstring workingPremise:(NSString *)workingPremiseString departmentName:(NSString *)departmentString categrystring:(NSString *)categoryString catgryText:(NSString *)catgryText ruleId:(NSString *)ruleId CatgryTileId:(NSString *)ctgryTileId;

{
    
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",secondCategryDonUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    NSMutableDictionary *mapData = [[NSMutableDictionary alloc] init];
    if ([flagString isEqualToString:@"o"]) {
        
        [mapData setObject:workingPremiseId forKey:@"type_id"];
        [mapData setObject:deptid forKey:@"dept_id"];
        [mapData setObject:officeId forKey:@"office_id"];
        // [mapData setObject:categoryId forKey:@"cat_id"];
        [mapData setObject:fromString forKey:@"from_Date"];
        [mapData setObject:toString forKey:@"to_Date"];
        [mapData setObject:paymentstring forKey:@"Payment"];
        [mapData setObject:durationString forKey:@"duration"];
        [mapData setObject:workingPremiseString forKey:@"working_Premise"];
        [mapData setObject:departmentString forKey:@"Department"];
        [mapData setObject:categoryString forKey:@"category"];
        [mapData setObject:catgryText forKey:@"categorytext"];
        [mapData setObject:@"o" forKey:@"working_Premise_type"];
        [mapData setObject:ruleId forKey:@"holi_id"];
        [mapData setObject:ctgryTileId forKey:@"tile_id"];
        if (categoryId.length==0) {
            [mapData setObject:@"" forKey:@"cat_id"];
        }
        else{
            [mapData setObject:categoryId forKey:@"cat_id"];
        }
    }
    else
    {
        [mapData setObject:workingPremiseId forKey:@"type_id"];
        [mapData setObject:deptid forKey:@"dept_id"];
        [mapData setObject:officeId forKey:@"office_id"];
        //[mapData setObject:categoryId forKey:@"cat_id"];
        [mapData setObject:fromString forKey:@"from_Date"];
        [mapData setObject:toString forKey:@"to_Date"];
        [mapData setObject:paymentstring forKey:@"Payment"];
        [mapData setObject:durationString forKey:@"duration"];
        [mapData setObject:workingPremiseString forKey:@"working_Premise"];
        [mapData setObject:departmentString forKey:@"Department"];
        [mapData setObject:categoryString forKey:@"category"];
        [mapData setObject:catgryText forKey:@"categorytext"];
        [mapData setObject:@"s" forKey:@"working_Premise_type"];
        [mapData setObject:ruleId forKey:@"holi_id"];
        [mapData setObject:ctgryTileId forKey:@"tile_id"];
        if (categoryId.length==0) {
            [mapData setObject:@"" forKey:@"cat_id"];
        }
        else{
            [mapData setObject:categoryId forKey:@"cat_id"];
        }
        
    }
    
    NSDictionary *mapData1=[[NSDictionary alloc]initWithObjectsAndKeys:mapData,@"other_Details", nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            //            if ([mystring isEqualToString:@"1"]) {
            //                [self viewAllHolidays:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
            //            }
            //            else if ([mystring isEqualToString:@"duplicate data"])
            //            {
            //                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            //                {
            //
            //                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
            //
            //                }
            //            }
            //            else
            //            {
            //                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            //                {
            //
            //                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Holiday Rule"];
            //
            //                }
            //
            //            }
            
            if ([self.mydelegate respondsToSelector:@selector(firstsavingResponsegetRuleIdResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate firstsavingResponsegetRuleIdResponse:mystring];
                
            }
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
    
}

//..................Main done Fucntion call.........>>>

-(void)createMainDoneHolidayService:(NSMutableDictionary *)serviceDict othrDetails:(NSMutableArray *)othrDetailsAray officeid:(NSString *)officeid ruleid:(NSString *)hoidayrule_id;
//-(void)createHoliday:(NSString *)holidayName type:(NSString *)holidayType ocuranceOfLeave:(NSString *)occurance fromdate:(NSString *)fromDate toadte:(NSString *)toadte duration:(NSString *)duration paymenttype:(NSString *)payment workingPremise:(NSString *)workingPremise department:(NSString *)department category:(NSString *)categry

{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createmainDoneUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    [serviceDict setObject:officeid forKey:@"o_id"];
    [serviceDict setObject:hoidayrule_id forKey:@"holi_id"];
    
    
    
    //  NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:serviceDict,@"details",othrDetailsAray,@"other_Details",officeid,@"o_id",nil];
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:serviceDict,@"firstpartdetails",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                [self viewAllHolidays:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
            }
            else if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Holiday Rule"];
                    
                }
                
            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
    
    
}


//........ Second service Function for getting Remaining categories.....>>>

-(void)seconddisplayServiceForDeptcatfryOffice:(NSString *)ruleId officeid:(NSString *)officeId;
{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@holi_id=%@&&o_id=%@",secondServiceUrl,ruleId,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            //            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            //            NSLog(@"%@",mystring);
            
            
            if ([self.mydelegate respondsToSelector:@selector(holidayWorkingPremiseGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate holidayWorkingPremiseGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
    
}

//.......View  All Holidays


-(void)viewAllHolidays:(NSString *)officeid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@",viewAllHolydays,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
}





//<<..................Individual View........................>>

-(void)individualHolidayDetails:(NSString *)officeid ruleId:(NSString *)ruleId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@&&id=%@",viewIndividualHilidayView,officeid,ruleId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(individualDisplayResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate individualDisplayResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
}

//.....Delete holiday.................>>>

-(void)deleteHoliday:(NSString *)ruleid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@id=%@",deleteHolidayurl,ruleid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(deleteSettingsRuleResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteSettingsRuleResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
}
#pragma mark Include Designation
//<<--------------Include Designation for tile class------------------>>

-(void)includeDesignationforTileViewClass:(NSString *)ruleType :(NSString *)ruleID :(NSString *)tileID :(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];//
    NSString *urlString=[NSString stringWithFormat:@"%@type=%@&&rule_id=%@&&tile_id=%@&&oid=%@",includeDesignationUrl,ruleType,ruleID,tileID,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

//<<---------------------Include Designation for Paperwork Settings--------------------->>

-(void)includeDesignationForPaperworkAuthority:(NSString *)officeID :(NSString *)ruleType :(NSString *)ruleID :(NSString *)tileID :(NSString *)actionFlag
{
    NSURLSession *session = [NSURLSession sharedSession];//
    NSString *urlString=[NSString stringWithFormat:@"%@oid=%@&&type=%@&&rule_id=%@&&tile_id=%@&&progress_id=%@",includeDesignationUrl3,officeID,ruleType,ruleID,tileID,actionFlag];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}
//<<------------------------Assign to Specific Employee for Paperwork Settings------------->>>

-(void)assigntoSpecificEmployee:(NSString *)officeID :(NSString *)ruleID :(NSString *)conditionID :(NSString *)actionFlow :(NSString *)type
{
    NSURLSession *session = [NSURLSession sharedSession];//
    NSString *urlString=[NSString stringWithFormat:@"%@oid=%@&&rule_id=%@&&tile_id=%@&&progress_id=%@&&type=%@",assifntoSpecificEmployeeURL,officeID,ruleID,conditionID,actionFlow,type];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

#pragma mark Leave Settings
//<-------------------Leave Settings------------------------------>

-(void)viewAllLeaves:(NSString *)officeId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@office_id=%@",viewAllLeavesUrl,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(initiallyLeaveRuleViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate initiallyLeaveRuleViewResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

//Individual Leave View

-(void)individualLeaveView:(NSString *)leaveID
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@leave_id=%@",individualLeaveViewUrl,leaveID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

//Individual Leave Condition View

-(void)individualLeaveConditionView:(NSString *)conditionID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@condition_id=%@",individualLeaveConditionViewUrl,conditionID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}

//Leave Update

-(void)updateLeaveSettings:(id)leaveData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateLeaveUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:leaveData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([mystring isEqualToString:@" 1"]) {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Saved"];
                    
                }
            }
            else if ([mystring isEqualToString:@"exist"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Existed"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Leave Rule"];
                    
                }
                
            }
        }
    }];
    
    
    [postDataTask resume];
    
}


-(void)leaveSaveNewTile:(id)leaveData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",saveLeaveCondition];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:leaveData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            app=(AppDelegate *)[[UIApplication sharedApplication]delegate];
            
            NSArray *splitArray=[mystring componentsSeparatedByString:@"###"];
            app.ruleID=[splitArray objectAtIndex:1];
            [app.conditionIDArray replaceObjectAtIndex:app.selectedRow withObject:[splitArray objectAtIndex:2]];
            
            
            if ([[splitArray objectAtIndex:0] isEqualToString:@" 1"]) {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Saved"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Leave Condition"];
                    
                }
                
            }
        }
    }];
    
    [postDataTask resume];
}



//Final Done Button For Update Leave
-(void)finalUpdateLeaveSettings:(id)leaveData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",finalUpdateUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:leaveData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([mystring isEqualToString:@"1"]) {
                [self viewAllLeaves:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else if ([mystring isEqualToString:@"exist"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Existed"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Shift Rule"];
                    
                }
                
            }
        }
    }];
    
    
    [postDataTask resume];
}

//Delete Leave Individual Condition
-(void)deleteLeaveCondition:(NSString *)conditionID : (NSString *)rule_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@condition_id=%@&rule_id=%@",deleteLeaveConditionUrl,conditionID,rule_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
        }
        
        
    }];
    
    [dataTask resume];
}



//Delete Leave Rule

-(void)deleteLeave:(NSString *)leaveID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@leave_id=%@",deleteLeaveRuleUrl,leaveID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
        }
        
        
    }];
    
    [dataTask resume];
}






//.............................BORROWINGS...........................//

#pragma mark Fine Settings
//.................Fine Settings....................//

-(void)CreaateNewFineSettings:(NSString *)fineTextName fineAmount:(NSString *)fineAmountText maxWarning:(NSString *)maxWarningText maxInstalment:(NSString *)maxInstalment description:(NSString *)Description officeid:(NSString *)officeId;
{
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createNewFineRule];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:fineTextName,@"violation_name",fineAmountText,@"fine_amount",maxWarningText,@"max_warnings",maxInstalment,@"max_installments",Description,@"description",officeId,@"o_id",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                [self viewAllFineRules:officeId];
            }
            else if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Holiday Rule"];
                    
                }
                
            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
    
    

}

//..........View All Holidays.........

-(void)viewAllFineRules:(NSString *)officeid
{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@",viewAllfineUrl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(viewAllFineResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllFineResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    

    
}
-(void)individualFineruleDisplay:(NSString *)officeId ruled:(NSString *)ruleId
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@&&id=%@",individualFineViewUrl,officeId,ruleId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(individualDisplayResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate individualDisplayResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    

    
}
-(void)updateFineSettings:(NSString *)fineTextName fineAmount:(NSString *)fineAmountText maxWarning:(NSString *)maxWarningText maxInstalment:(NSString *)maxInstalment description:(NSString *)Description officeid:(NSString *)officeId ruleId:(NSString *)ruleId
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateFineRule];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:fineTextName,@"violation_name",fineAmountText,@"fine_amount",maxWarningText,@"max_warnings",maxInstalment,@"max_installments",Description,@"description",officeId,@"o_id",ruleId,@"fine_id",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                [self viewAllFineRules:officeId];
            }
            else if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Holiday Rule"];
                    
                }
                
            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
  
}
-(void)deleteFineSetingRule:(NSString *)ruleid;
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@id=%@",deleteFineRule,ruleid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(deleteSettingsRuleResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteSettingsRuleResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];

}

#pragma mark Loan Settings
//................Loan settings...................>>>


-(void)leaveabbrivationservice:(NSString *)officeid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@",leaveAbbrivationurl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([self.mydelegate respondsToSelector:@selector(leaveAbbrivationlist:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate leaveAbbrivationlist:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
}


-(void)createingloanTile:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description annualinterestrate:(NSString *)annualinterestrate maxduration:(NSString *)maxduration maximumlimit:(NSString *)maximumlimit pendingloanamount:(NSString *)pendingloanamount loanmonth:(NSString *)loanmonth lastworkingday:(NSString *)lastworkingday visaduration:(NSString *)visaduration numberofleavedays:(NSString *)numberofleavedays exceptforleave:(NSString *)exceptforleave allowbuttonstring1:(NSString *)allowbuttonstring1 allowbuttonstring2:(NSString *)allowbuttonstring2 allowbuttonstring3:(NSString *)allowbuttonstring3 swichvalue:(NSString *)swichvalue loanruleid:(NSString *)loanruleid loantileid:(NSString *)loantileid officeid:(NSString *)officeid selecteddesignationstring:(NSString *)selecteddesignationstring maindesignationdictionary:(NSMutableDictionary *)maindesignationdictionary
   {
       
       
       
       
    
       
       NSError *error;
       
       NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
       NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
       NSString *urlString=[NSString stringWithFormat:@"%@",creatingnewloanurl];
       NSURL *url = [NSURL URLWithString:urlString];
       NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                          timeoutInterval:60.0];
       
       [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
       [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
       
       [request setHTTPMethod:@"POST"];
       
       NSString *conditionid = [NSString stringWithFormat:@"%@###%@",loantileid,loanruleid];
       
       
       NSDictionary *mapData1 = [[NSDictionary alloc] initWithObjectsAndKeys:loantype,@"loan_type",abbrev,@"abbreviation",description,@"description",officeid,@"o_id",conditionid,@"condition_id",nil];
       
       
       
       
       
       
       NSDictionary *mapData2 = [[NSDictionary alloc] initWithObjectsAndKeys:annualinterestrate,@"annual_interest_rate",maxduration,@"max_duration",maximumlimit,@"max_unit",pendingloanamount,@"pending_loan",loanmonth,@"complete_amount",lastworkingday,@"last_working_day",visaduration,@"visa_expiration",numberofleavedays,@"next_approved_leave",exceptforleave,@"except_for_leaves",allowbuttonstring1,@"request_online",allowbuttonstring2,@"request_forward",allowbuttonstring3,@"request_approve",swichvalue,@"checkbox_enable",selecteddesignationstring,@"designationstring",nil];

       
       
        if (maindesignationdictionary.count > 0) {
            
            
            NSDictionary *mapData=[[NSDictionary alloc]initWithObjectsAndKeys:mapData1,@"loan_Details",mapData2,@"conditional_Details",maindesignationdictionary,@"maindesignationlist", nil];
            
            
            
            NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
            [request setHTTPBody:postData];
            
        }
       else
       {
           
           
           NSDictionary *mapData=[[NSDictionary alloc]initWithObjectsAndKeys:mapData1,@"loan_Details",mapData2,@"conditional_Details",@"",@"maindesignationlist", nil];
           
           
           
           NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
           [request setHTTPBody:postData];
           

       }
       
       
       

       
       NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
           

           if (data==Nil) {
               
               
               if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
               {
                   
                   [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                   
               }
               
               
           }
           
           else
           {
               NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
               NSLog(@"%@",json);
               
              // NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
             //  NSLog(@"%@",mystring);
               
               
               if ([self.mydelegate respondsToSelector:@selector(created_loanresponse:)]&&(self.mydelegate!=NULL))
               {
                   
                  [self.mydelegate created_loanresponse:json];
                   
               }
               
           }


       }];
       
       
    
        [postDataTask resume];
       
}




-(void)secondtimecreateloanTile:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description annualinterestrate:(NSString *)annualinterestrate maxduration:(NSString *)maxduration maximumlimit:(NSString *)maximumlimit pendingloanamount:(NSString *)pendingloanamount loanmonth:(NSString *)loanmonth lastworkingday:(NSString *)lastworkingday visaduration:(NSString *)visaduration numberofleavedays:(NSString *)numberofleavedays exceptforleave:(NSString *)exceptforleave allowbuttonstring1:(NSString *)allowbuttonstring1 allowbuttonstring2:(NSString *)allowbuttonstring2 allowbuttonstring3:(NSString *)allowbuttonstring3 swichvalue:(NSString *)swichvalue loanruleid:(NSString *)loanruleid loantileid:(NSString *)loantileid officeid:(NSString *)officeid selecteddesignationstring:(NSString *)selecteddesignationstring maindesignationdictionary:(NSMutableDictionary *)maindesignationdictionary
{
    
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",secondtimecreatingnewloanurl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    NSString *conditionid = [NSString stringWithFormat:@"%@###%@",loantileid,loanruleid];
    
    
    NSDictionary *mapData1 = [[NSDictionary alloc] initWithObjectsAndKeys:loantype,@"loan_type",abbrev,@"abbreviation",description,@"description",officeid,@"o_id",conditionid,@"condition_id",nil];
    
    
    
    
    
    
    NSDictionary *mapData2 = [[NSDictionary alloc] initWithObjectsAndKeys:annualinterestrate,@"annual_interest_rate",maxduration,@"max_duration",maximumlimit,@"max_unit",pendingloanamount,@"pending_loan",loanmonth,@"complete_amount",lastworkingday,@"last_working_day",visaduration,@"visa_expiration",numberofleavedays,@"next_approved_leave",exceptforleave,@"except_for_leaves",allowbuttonstring1,@"request_online",allowbuttonstring2,@"request_forward",allowbuttonstring3,@"request_approve",swichvalue,@"checkbox_enable",selecteddesignationstring,@"designationstring",nil];
    
    
    
    if (maindesignationdictionary.count > 0) {
        
        
        NSDictionary *mapData=[[NSDictionary alloc]initWithObjectsAndKeys:mapData1,@"loan_Details",mapData2,@"conditional_Details",maindesignationdictionary,@"maindesignationlist", nil];
        
        
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
        
        
        
    }
    else
    {
        
        
        NSDictionary *mapData=[[NSDictionary alloc]initWithObjectsAndKeys:mapData1,@"loan_Details",mapData2,@"conditional_Details",@"",@"maindesignationlist", nil];
        
        
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
        
        
    }
    
    
    
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            //               NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //               NSLog(@"%@",json);
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            
            if ([self.mydelegate respondsToSelector:@selector(created_loanresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate created_loanresponse:mystring];
                
            }
            
        }
        
        
    }];
    
    
    
    [postDataTask resume];

    
    
}


-(void)lastdonebuttonforcreateloanservice:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description loanruleid:(NSString *)loanruldid

{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",loanmaindonebuttonserviceurl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:loantype,@"loan_type",abbrev,@"abbreviation",description,@"description",loanruldid,@"loan_id",nil];
    
    NSDictionary *mapData1=[[NSDictionary alloc]initWithObjectsAndKeys:mapData,@"loan_Details", nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                
                
                if ([self.mydelegate respondsToSelector:@selector(donesavedGotresponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate donesavedGotresponse:mystring];
                    
                }
                
            }
            else if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Loan Rule"];
                    
                }
                
            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
}


-(void)viewAllloanRules:(NSString *)officeid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@",viewAlloanlistUrl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewAllLoanResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllLoanResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];

    
    
}
-(void)deleteloanTileid:(NSString *)tileid officeid:(NSString *)officeid loanruleid:(NSString *)loanruleid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@id=%@&&rule_id=%@&&o_id=%@",deleteloanTileurl,tileid,loanruleid,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
           NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@",json);
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

            if ([mystring isEqualToString:@"0"]) {
                
                 [self.mydelegate showalerviewcontroller:@"Deletion Failed"];
            }
            
            else if ([self.mydelegate respondsToSelector:@selector(deleteloantileid:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteloantileid:json];
                
            }
            
        }
        
    }];
    
    [dataTask resume];

}




//.....................................Advance Settings...............................................>>>>>>>>>>

//......creation.....

//-(void)createNewAdvanceRule:(NSString *)percentOfsalary instalment:(NSString *)instalmentLimit visaDuration:(NSString *)visaDuration eligibleMonths:(NSString *)eligibleMonths pendingLoanAmount:(NSString *)pendingLoanAmt leavesTypeAbrvation:(NSString *)leavesType lastwrkingDay:(NSString *)lasttWorkingDay radioButton1:(NSString *)radioButton radioButton2:(NSString *)radioButton2 radioButton3:(NSString *)radioButton3
//{
//    
//    
//        NSError *error;
//    
//        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//        NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
//        NSString *urlString=[NSString stringWithFormat:@"%@",createNewFineRule];
//        NSURL *url = [NSURL URLWithString:urlString];
//        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
//                                                               cachePolicy:NSURLRequestUseProtocolCachePolicy
//                                                           timeoutInterval:60.0];
//    
//        [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//        [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
//    
//        [request setHTTPMethod:@"POST"];
//    
//    
//      //  NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:fineTextName,@"violation_name",fineAmountText,@"fine_amount",maxWarningText,@"max_warnings",maxInstalment,@"max_installments",Description,@"description",officeId,@"o_id",nil];
//    
//        NSDictionary *mapData=[[NSDictionary alloc]initWithObjectsAndKeys:mapData,@"fine_Details", nil];
//        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
//        [request setHTTPBody:postData];
//    
//    
//        NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//    
//    
//    
//            if (data==Nil) {
//    
//    
//                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
//                {
//    
//                    [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
//    
//                }
//    
//            }
//            else
//            {
//                NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//                NSLog(@"%@",mystring);
//                if ([mystring isEqualToString:@"1"]) {
//                 //   [self viewAllFineRules:officeId];
//                }
//                else if ([mystring isEqualToString:@"duplicate data"])
//                {
//                    if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
//                    {
//    
//                        [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
//    
//                    }
//                }
//                else
//                {
//                    if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
//                    {
//    
//                        [self.mydelegate showalerviewcontroller:@"Failed to Create  Holiday Rule"];
//                        
//                    }
//                    
//                }
//                
//                
//                
//            }
//            
//            
//            
//        }];
//        
//        
//        [postDataTask resume];
//        
//    
//}

-(void)updationofloanIndividualrules:(NSString *)officeid loanruleid:(NSString *)loanruleid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@&&id=%@",updationofindividualloanrules,officeid,loanruleid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@",json);
            
            if ([self.mydelegate respondsToSelector:@selector(updationofloanResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate updationofloanResponse:json];
                
            }
            
        }
        
    }];
    
    [dataTask resume];

    
}


-(void)updationofloanTile:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description annualinterestrate:(NSString *)annualinterestrate maxduration:(NSString *)maxduration maximumlimit:(NSString *)maximumlimit pendingloanamount:(NSString *)pendingloanamount loanmonth:(NSString *)loanmonth lastworkingday:(NSString *)lastworkingday visaduration:(NSString *)visaduration numberofleavedays:(NSString *)numberofleavedays exceptforleave:(NSString *)exceptforleave allowbuttonstring1:(NSString *)allowbuttonstring1 allowbuttonstring2:(NSString *)allowbuttonstring2 allowbuttonstring3:(NSString *)allowbuttonstring3 swichvalue:(NSString *)swichvalue loanruleid:(NSString *)loanruleid loantileid:(NSString *)loantileid officeid:(NSString *)officeid selecteddesignationstring:(NSString *)selecteddesignationstring maindesignationdictionary:(NSMutableDictionary *)maindesignationdictionary clickdesignationflag:(int)clickdesignationflag

   {
    
    
       NSError *error;
       
       NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
       NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
       NSString *urlString=[NSString stringWithFormat:@"%@",updationofloanrulesurl];
       NSURL *url = [NSURL URLWithString:urlString];
       NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                          timeoutInterval:60.0];
       
       [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
       [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
       
       [request setHTTPMethod:@"POST"];
       
       NSString *conditionid = [NSString stringWithFormat:@"%@###%@",loantileid,loanruleid];
       
       
       NSDictionary *mapData1 = [[NSDictionary alloc] initWithObjectsAndKeys:loantype,@"loan_type",abbrev,@"abbreviation",description,@"description",officeid,@"o_id",conditionid,@"condition_id",nil];
       
       
       
       NSDictionary *mapData2 = [[NSDictionary alloc] initWithObjectsAndKeys:annualinterestrate,@"annual_interest_rate",maxduration,@"max_duration",maximumlimit,@"max_unit",pendingloanamount,@"pending_loan",loanmonth,@"complete_amount",lastworkingday,@"last_working_day",visaduration,@"visa_expiration",numberofleavedays,@"next_approved_leave",exceptforleave,@"except_for_leaves",allowbuttonstring1,@"request_online",allowbuttonstring2,@"request_forward",allowbuttonstring3,@"request_approve",swichvalue,@"checkbox_enable",selecteddesignationstring,@"designationstring",nil];
       

    
       
       
       if (clickdesignationflag == 1) {
           
           
           NSDictionary *mapData=[[NSDictionary alloc]initWithObjectsAndKeys:mapData1,@"loan_Details",mapData2,@"conditional_Details",maindesignationdictionary,@"maindesignationlist", nil];
           
           
           
           NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
           [request setHTTPBody:postData];
           
           
           
       }
       else
       {
           
           
           NSDictionary *mapData=[[NSDictionary alloc]initWithObjectsAndKeys:mapData1,@"loan_Details",mapData2,@"conditional_Details", nil];
           
           
           
           NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
           [request setHTTPBody:postData];
           
           
       }
       
       
       
       NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
           
           
           
           
           if (data==Nil) {
               
               
               if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
               {
                   
                   [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                   
               }
               
           }
           
           else
           {
               
            NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
               
            NSLog(@"%@",json);
               
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
               
              if (json.count>0) {
                   
                   
                   if ([self.mydelegate respondsToSelector:@selector(updationofloanResponse:)]&&(self.mydelegate!=NULL))
                   {
                       
                       [self.mydelegate updationofloanResponse:json];
                       
                   }
                   
               }
               else if ([mystring isEqualToString:@"duplicate data"])
               {
                   if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                   {
                       
                       [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                       
                   }
               }
               else
               {
                   if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                   {
                       
                       [self.mydelegate showalerviewcontroller:@"Failed to Create Loan Rule"];
                       
                   }
                   
               }
               
               
               
           }

           
       }];
       
       
       
       [postDataTask resume];
       

   }


-(void)deletethemainloanRules:(NSString *)loanid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@id=%@",deleteloanRulesurl,loanid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            //id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(deleteloanrules:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteloanrules:mystring];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];

    
}

-(void)loanindividualtileservices:(NSString *)loanid tileid:(NSString *)tileid
{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@loan_id=%@&&tile_id=%@",individualtileruleurl,loanid,tileid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        //NSLog(@"%@",data);
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
           //NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
          //  NSLog(@"%@",mystring);
            NSLog(@"%@",json);
            if ([self.mydelegate respondsToSelector:@selector(indiviualLoanServiceresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate indiviualLoanServiceresponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    

    
    
}

#pragma mark Advance Settings
//.....................................Advance Settings...............................................>>>>>>>>>>

//......creation.....
-(void)createNewAdvanceRule:(NSString *)percentOfsalary instalment:(NSString *)instalmentLimit visaDuration:(NSString *)visaDuration eligibleMonths:(NSString *)eligibleMonths pendingLoanAmount:(NSString *)pendingLoanAmt nextApprovedLeave:(NSString *)nextLeave leavesTypeAbrvation:(NSString *)leavesType lastwrkingDay:(NSString *)lasttWorkingDay radioButton1:(NSString *)radioButton radioButton2:(NSString *)radioButton2 radioButton3:(NSString *)radioButton3 ruleId:(NSString *)ruleId tileId:(NSString *)tileId selecetdDesig:(NSString*)seelctedDesig enableStatus:(NSString *)enableStatus abbrevationText:(NSString *)abbrevationText designationList:(NSMutableDictionary *)designationDict officeId:(NSString *)oficeId
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createadvance];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setHTTPMethod:@"POST"];
    if (seelctedDesig == Nil) {
        seelctedDesig=@"";
    }
    if (tileId==Nil) {
      tileId=@"";
    }
    
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:percentOfsalary,@"gross_salary",instalmentLimit,@"insatllment_limit",visaDuration,@"duration_of_visa",eligibleMonths,@"eligible_for_advance",pendingLoanAmt,@"pending_loan",nextLeave,@"next_leave_to_approve",leavesType,@"except_leaves",lasttWorkingDay,@"last_working_day",radioButton,@"advance_online",radioButton2,@"forward_request",radioButton3,@"requirement_not_met",ruleId,@"adv_id",tileId,@"con_id",seelctedDesig,@"selected_desig",enableStatus,@"enable_status",abbrevationText,@"except_leaves_field_value",oficeId,@"oid",designationDict,@"designation_list",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[[mystring componentsSeparatedByString:@"###" ] objectAtIndex:0] isEqualToString:@"1"]) {
                //   [self viewAllFineRules:officeId];
                if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate createResponse:mystring];
                    
                }
            }
            else if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Holiday Rule"];
                    
                }
                
            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
    
}


-(void)updateNewAdvanceRule:(NSString *)percentOfsalary instalment:(NSString *)instalmentLimit visaDuration:(NSString *)visaDuration eligibleMonths:(NSString *)eligibleMonths pendingLoanAmount:(NSString *)pendingLoanAmt nextApprovedLeave:(NSString *)nextLeave leavesTypeAbrvation:(NSString *)leavesType lastwrkingDay:(NSString *)lasttWorkingDay radioButton1:(NSString *)radioButton radioButton2:(NSString *)radioButton2 radioButton3:(NSString *)radioButton3 ruleId:(NSString *)ruleId tileId:(NSString *)tileId selecetdDesig:(NSString*)seelctedDesig enableStatus:(NSString *)enableStatus abbrevationText:(NSString *)abbrevationText designationList:(NSMutableDictionary *)designationDict officeId:(NSString *)oficeId

{
    
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateAdvanceCondition];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    if (seelctedDesig == Nil) {
        seelctedDesig=@"";
    }
    if (tileId==Nil) {
        tileId=@"";
    }
       NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:percentOfsalary,@"gross_salary",instalmentLimit,@"insatllment_limit",visaDuration,@"duration_of_visa",eligibleMonths,@"eligible_for_advance",pendingLoanAmt,@"pending_loan",nextLeave,@"next_leave_to_approve",leavesType,@"except_leaves",lasttWorkingDay,@"last_working_day",radioButton,@"advance_online",radioButton2,@"forward_request",radioButton3,@"requirement_not_met",ruleId,@"adv_id",tileId,@"con_id",seelctedDesig,@"selected_desig",enableStatus,@"enable_status",abbrevationText,@"except_leaves_field_value",oficeId,@"oid",designationDict,@"designation_list",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
//            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//            NSLog(@"%@",mystring);
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
              NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate createResponse:mystring];
                    
                }
                
            }
//            if ([[[mystring componentsSeparatedByString:@"###" ] objectAtIndex:0] isEqualToString:@"1"]) {
//                //   [self viewAllFineRules:officeId];
//            }

            else if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else if ([mystring isEqualToString:@"0"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Updation Failed"];
                    
                }
            }

            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
                    {
                        
                        [self.mydelegate createResponse:mystring];
                        
                    }

                    
                }
                
            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
    
}

// ............View Advance Rules And conditions..............>>>>
-(void)viewAdvanceRuleConditions:(NSString *)officeid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@office_id=%@",viewAdvanceViewUrl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewAllAdvanceResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllAdvanceResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
}

// ............View AdvanceTiles conditions..............>>>>

-(void)viewAdvanceRuleTileDetails:(NSString *)ruleid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@advance_id=%@",viewTilesUrl,ruleid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewAllAdvanceResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllAdvanceResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
    
}

//.............individual view details of conditions...............>>
-(void)viewIndividualAdvanceRuleTileDetails:(NSString *)condtionId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@condition_id=%@",individualAdvanceUrl,condtionId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
             NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewIndividualResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewIndividualResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
}


//...........delete Tile............>>

-(void)deleteAdvanceTile:(NSString *)tileId
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@condition_id=%@",deleteadvanceCondtion,tileId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(deleteResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteResponse:mystring];
                
            }
            
        }
        
    }];
    
    [dataTask resume];
    
   }


#pragma mark Pay Settings
//>>>>>>>>>>>>>>>>>>>>>>>..............Pay Settings..................>>>>>>>>>>>>>>>>>>>>>>>>>>>.............

//...........View All rule

-(void)viewAllPayrule:(NSString *)officeId
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@o_id=%@",viewAllPay,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewAllPayResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllPayResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    

}

//.................create Pay rule.....................

-(void)createNewpayrule:(NSString *)rulename abbrevation:(NSString *)abbrvtn dessc:(NSString *)description period_Type:(NSString *)period_Type currentStartDate:(NSString *)startDate officeId:(NSString *)officeId selectedDesig:(NSString *)selectedDesig designationList:(NSMutableDictionary *)designationdict timegap:(int)timegap paymntDate:(NSString *)pamentdate;

{

    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createNewPay];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    NSString *timestring = [NSString stringWithFormat:@"%i",timegap];

    if (designationdict.count > 0) {
        NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:rulename,@"rule_name",abbrvtn ,@"abr",description,@"description",officeId,@"o_id",period_Type,@"period_settings",startDate,@"start_date",timestring,@"period_gap",pamentdate,@"payment_date",designationdict,@"designation_list",nil];
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }
    else
    {
        NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:rulename,@"rule_name",abbrvtn ,@"abr",description,@"description",officeId,@"o_id",period_Type,@"period_settings",startDate,@"start_date",timestring,@"period_gap",pamentdate,@"payment_date",@"",@"designation_list",nil];
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }
    

    
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"selectedDesig"];
                 [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"selectedDesignation"];
                [self viewAllPayrule:officeId];
            }
            else 
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
//            else
//            {
//                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
//                {
//                    
//                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Pay Rule"];
//                    
//                }
//                
//            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
 }

//.................Update......................

-(void)updateNewpayrule:(NSString *)rulename abbrevation:(NSString *)abbrvtn dessc:(NSString *)description officeId:(NSString *)officeId payruleId:(NSString *)payrulId selectedDesig:(NSString *)selectedDesig designationList:(NSMutableDictionary *)designationdict paymntDate:(NSString *)pamentdate
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updatepay];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
   
    if (designationdict.count > 0) {
        NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:rulename,@"rule_name",abbrvtn ,@"abr",description,@"description",officeId,@"o_id",payrulId,@"rule_id",designationdict,@"designation_list",pamentdate,@"payment_date",nil];
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }
    else
    {
        NSDictionary *mapData = [[NSDictionary alloc]initWithObjectsAndKeys:rulename,@"rule_name",abbrvtn ,@"abr",description,@"description",officeId,@"o_id",payrulId,@"rule_id",@"",@"designation_list",pamentdate,@"payment_date",nil];
        NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
        [request setHTTPBody:postData];
    }

    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                [self viewAllPayrule:officeId];
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
           // else
//            {
//                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
//                {
//                    
//                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Holiday Rule"];
//                    
//                }
//                
//            }
            
            
            
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
    
    
    
    
    

}
 //.......delete rule............
-(void)deletePayRule:(NSString *)rulrid officeid:(NSString *)oficeId;
{
NSURLSession *session = [NSURLSession sharedSession];
NSString *urlString=[NSString stringWithFormat:@"%@id=%@&&o_id=%@",deletepay,rulrid,oficeId];
NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
    
    
    
    if (data==Nil) {
        
        
        if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
        {
            
            [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            
        }
        
        
    }
    
    else
    {
        id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",mystring);
        if ([self.mydelegate respondsToSelector:@selector(deleteSettingsRuleResponse:)]&&(self.mydelegate!=NULL))
        {
            
            [self.mydelegate deleteSettingsRuleResponse:json];
            
        }
        
    }
    
    
}];

[dataTask resume];

}

//..........Individual View.........>>>>>>
-(void)individualPayruleView:(NSString *)payrule_id officeid:(NSString *)oficeId;
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@payroll_id=%@&&oid=%@",individualDisplay,payrule_id,oficeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewIndividualPayResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewIndividualPayResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    

}


#pragma mark Document Settings
//...................Documents..................>>>>

-(void)viewAllDocuments:(NSString *)officeId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,viewdocuments,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllResponse:json];
                
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
}

//Create New document

-(void)createNewDocument:(id)documentDetails officeId:(NSString *)officeId{
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,createdoc];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:documentDetails,@"details",officeId,@"o_id",nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                [self displaymodifiedDateFunction:officeId];
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create  Rule"];
                    
                }
            }
        }
    }];
    
    
    [postDataTask resume];
}

//...Display Last modified Function....
-(void)displaymodifiedDateFunction:(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,dateurl,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(viewAllDateResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate viewAllDateResponse:json];
                
            }
            
        }
        
    }];
    
    [dataTask resume];
    
    
    
}

//.........Delete Documents.........

-(void)deleteDocument:(NSString *)docId officeId:(NSString *)officeId docTypeId:(NSString *)docTypeId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString;
    if ([docTypeId isEqualToString:@"0"]) {
        urlString=[NSString stringWithFormat:@"%@%@/%@",subdomainURL,deleteDoc,docId];
        
    }
//    else{
//        urlString=[NSString stringWithFormat:@"%@%@/%@",subdomainURL,deleteDocWithFile,docId];
//        
//    }
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                [self viewAllDocuments:officeId];
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"1"]) {
                
                if ([self.mydelegate respondsToSelector:@selector(deleteExixtDoc:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate deleteExixtDoc:mystring];
                    
                }
            }
            
        }
        
        
    }];
    
    [dataTask resume];
    
    
}

#pragma mark Expense Reimbursement Settings
//<<----------------------------Expense Reimbursement--------------------------->>

//View All Expense Rule
-(void)viewAllExpenseRule:(NSString *)office_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@office_id=%@",ViewAllExpenseUrl,office_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(initiallyruleviewresponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate initiallyruleviewresponse:json];
                
            }
        }
        
        
    }];
    
    [dataTask resume];
}

//Create expense category
-(void)createNewExpenseCategory:(NSMutableDictionary *)expenseData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",expenseCreateUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:expenseData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            app=(AppDelegate *)[[UIApplication sharedApplication]delegate];
            app.ruleID=mystring;
            
        }
    }];
    
    [postDataTask resume];
}
//Individual Expense View
-(void)individualExpenseRuleView:(NSString *)expense_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@expen_id=%@",individualExpenseViewUrl,expense_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
        }
        
        
    }];
    
    [dataTask resume];
}

//Save New Expense Condition
-(void)saveExpenseCondition:(NSMutableDictionary *)conditionData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",saveExpenseConditionUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:conditionData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            NSArray *myarray=[mystring componentsSeparatedByString:@"###"];
            
            app=(AppDelegate *)[[UIApplication sharedApplication]delegate];
            app.ruleID=[myarray objectAtIndex:1];
            [app.conditionIDArray replaceObjectAtIndex:app.selectedRow withObject:[myarray objectAtIndex:2]];
            
            if ([[myarray objectAtIndex:0] isEqualToString:@"1"]) {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Saved"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Leave Condition"];
                    
                }
                
            }
        }
            
        
    }];
    
    [postDataTask resume];
}

//View Individual expense condition
-(void)viewExpenseConditionView:(NSString *)expense_id :(NSString *)condition_id
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@expen_id=%@&con_id=%@",expenseConditionViewUrl,expense_id,condition_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
        }
        
        
    }];
    
    [dataTask resume];
}
//Done
-(void)finalExpenseCreation:(NSMutableDictionary *)expenseData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",expenseCreateUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:expenseData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"Expense Name"]) {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Expense Name Already Exist"];
                    
                }
            }
            else if ([mystring isEqualToString:@"Abbreviation"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exist"];
                    
                }

            }
            else
            {
                app=(AppDelegate *)[[UIApplication sharedApplication]delegate];
                app.ruleID=mystring;
                [self viewAllExpenseRule:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            
            
        }
    }];
    
    [postDataTask resume];
}
//Deleting Individual expense condition
-(void)deleteExpenseCondition:(NSString *)condition_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@con_id=%@",deleteExpenseConditionUrl,condition_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
        }
        
        
    }];
    
    [dataTask resume];
}
//Deleting individual expense rule
-(void)deleteExpenseRule:(NSString *)expense_id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@expen_id=%@",deleteExpenseRuleUrl,expense_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
        }
        
        
    }];
    
    [dataTask resume];
}
#pragma mark Earnings Settings
//>>>>>>>>>>>>>>>>>>>>>>>>>>>..............EARNINGS................>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


//................View All Earning Rule...........

-(void)viewAllEarningsList:(NSString *)officeId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,viewall,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(allearningsResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate allearningsResponse:json];
                
            }
        }
        
        
    }];
    
    [dataTask resume];

    
    
}
//.........Individual tile Details view
-(void)individualTileViewDetails:(NSString *)earningrule_Id condId:(NSString *)cond_id;
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@/%@",subdomainURL,conditionDetailsUrl,earningrule_Id,cond_id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(conditionDetailsResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate conditionDetailsResponse:json];
                
            }
        }
        
        
    }];
    
    [dataTask resume];
}

//.....view IndividualRule Details
-(void)EarningRuleDetails:(NSString *)earning_Id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,individaualEarningrule,earning_Id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
        }
        
        
    }];
    
    [dataTask resume];
    
    

}


//.......Create Earnings................

-(void)createcreateNewEarningRule:(NSMutableDictionary *)firstPartDetails tileDetails:(NSMutableDictionary *)tileDetails includeDesignation:(NSMutableDictionary *)designationDetails officeId:(NSString *)officeId idurl:(NSString *)idurl
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString;
    if ([idurl isEqualToString:@"update"]) {
        
    urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,updateErningUrl];
  
    }
    else
    {
        
    urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,createerningrule];
        
    }
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];

    NSDictionary *mapData1 = [[NSDictionary alloc] initWithObjectsAndKeys:firstPartDetails,@"earnings_details",tileDetails,@"condition_details",designationDetails,@"designation_details",nil];

    
 
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
          if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                if ([self.mydelegate respondsToSelector:@selector(createEarningResponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate createEarningResponse:json];
                    
                }

            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"1"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Save Data"];
                    
                }
            }
        }
        
    }];
    
    
    [postDataTask resume];

}

//...>>>>>>>>>Final Save......>>>>>>>>>>>>>

-(void)finalDoneFunction:(NSMutableDictionary *)firstDetails
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,finalDoneUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    //NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:,nil];
    
    NSDictionary *mapData1=[[NSDictionary alloc]initWithObjectsAndKeys:firstDetails,@"earnings_details", nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                
                [self viewAllEarningsList:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];

                
            }
            else if ([mystring isEqualToString:@"duplicate data"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists###2"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Rule"];
                }
            }
        }
    }];
    
    [postDataTask resume];
}

//Delete Rule

-(void)deleteEarningRule:(NSString *)ruleId typeOfDel:(NSString *)delFlag;
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString;
    if([delFlag isEqualToString:@"1"])
    {
    urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,deleteEarningRuleUrl,ruleId];
    }
    if([delFlag isEqualToString:@"2"])
    {
        urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,deleteConditionUrl,ruleId];
    }
    if([delFlag isEqualToString:@"3"])
    {
        urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,deleteAllConditionUrl,ruleId];
    }

    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(deleteAllTileResponse:flag:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteAllTileResponse:json flag:@"1"];
                
            }
        }
        
        
    }];
    
    [dataTask resume];

    
}


#pragma mark Deduction Settings
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>Deduction>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//..........View All.....................
-(void)viewAllDeductionList:(NSString *)officeId
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,viewAlldedction,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(viewalldedctionResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate viewalldedctionResponse:json];
            }
        }
    }];
    [dataTask resume];
}
//..........Create new Deduction...................

-(void)createDeductionRule:(NSMutableDictionary *)firstPartDetails tileDetails:(NSMutableDictionary *)tileDetails includeDesignation:(NSMutableDictionary *)designationDetails officeId:(NSString *)officeId tileId:(NSString *)tileId
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,deductCreteUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    NSDictionary *mapData1 = [[NSDictionary alloc] initWithObjectsAndKeys:firstPartDetails,@"deduction_details",tileDetails,@"conditional_details",designationDetails,@"designation_details",nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                if ([self.mydelegate respondsToSelector:@selector(createDeductResponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate createDeductResponse:json];
                    
                }
                
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"1"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Rule"];
                    
                }
                
            }
        }
        
        
        
    }];
    
    
    [postDataTask resume];
    
}

 //..................Update..........................

-(void)updateDeductionRule:(NSMutableDictionary *)firstPartDetails tileDetails:(NSMutableDictionary *)tileDetails includeDesignation:(NSMutableDictionary *)designationDetails officeId:(NSString *)officeId tileId:(NSString *)tileId
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,updateDeductionUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
//    if (designationDetails==nil) {
//        designationDetails=@"";
//    }
    
    NSDictionary *mapData1 = [[NSDictionary alloc] initWithObjectsAndKeys:firstPartDetails,@"deduction_details",tileDetails,@"conditional_details",designationDetails,@"designation_details",nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                if ([self.mydelegate respondsToSelector:@selector(createDeductResponse:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate createDeductResponse:json];
                    
                }
                
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"1"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Rule"];
                    
                }
                
            }
        }
        
        
        
    }];
    
    
    [postDataTask resume];

    
    
}

//......Final save..............
-(void)finalDoneFunctionForDeduction:(NSMutableDictionary *)firstDetails
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,finaldeductionDone];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    //NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:,nil];
    
    NSDictionary *mapData1=[[NSDictionary alloc]initWithObjectsAndKeys:firstDetails,@"deduction_details", nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData1 options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([[json objectForKey:@"status"] isEqualToString:@"200"]) {
                
                [self viewAllDeductionList:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
                               
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"1"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Rule Name Already Exists"];
                    
                }
            }
            else if ([[json objectForKey:@"status"] isEqualToString:@"2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exists"];
                    
                }
            }
            else
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate showalerviewcontroller:@"Failed to Create Loan Rule"];
                }
            }
        }
    }];
    [postDataTask resume];
}


//..........Individual View..........
-(void)deductionRuleDetails:(NSString *)deduction_Id offficeId:(NSString *)officeId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@/%@",subdomainURL,viewdeductionRuleCondition,officeId,deduction_Id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(conditionDetailsResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate conditionDetailsResponse:json];
                
            }
        }
        
        
    }];
    
    [dataTask resume];
    

}

//Each Rule Details Condition Details view
-(void)individualDeductionTileConditionDetails:(NSString *)cond_Id ruleId:(NSString *)rule_Id
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@/%@",subdomainURL,individualConditionViewUrl,cond_Id,rule_Id];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(alldeductionResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate alldeductionResponse:json];
            }
        }
    }];
    [dataTask resume];
}

//Deletion

-(void)deleteDeductionRule:(NSString *)delId idFlag:(NSString *)idFlag
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString;
    if([idFlag isEqualToString:@"1"])
    {
        urlString=[NSString stringWithFormat:@"%@id=%@",deleteDeductionRuleUrl,delId];
    }
    if([idFlag isEqualToString:@"2"])
    {
        urlString=[NSString stringWithFormat:@"%@id=%@",deleteDeductiontileUrl,delId];
    }

    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
            
        }
        
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(deleteAllTileResponse:flag:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deleteAllTileResponse:mystring flag:@"1"];
                
            }
        }
        
        
    }];
    
    [dataTask resume];

}


#pragma mark Overtime Settings

//<<<-------------------------------OVERTIME SERVICE--------------------------------->>>

//View All Overtime Rule

-(void)viewAllOvertimeRule:(NSString *)officeId
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",viewAllOvertimeUrl,officeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(initiallyruleviewresponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate initiallyruleviewresponse:json];
            }
        }
    }];
    
    [dataTask resume];
}

//Create New Overtime Rule
-(void)createNewOvertime:(id)overtimeData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createOvertimeRuleUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:overtimeData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([mystring isEqualToString:@" 1"]) {
                [self viewAllOvertimeRule:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else if([mystring isEqualToString:@" 3"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Overtime Rule Name Already Exists"];
                    
                }
                
            }
            else if ([mystring isEqualToString:@" 2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exists"];
                    
                }
            }
        }
    }];
    
    [postDataTask resume];
}

//Update Overtime rule

-(void)updateOvertimeRule:(id)overtimeData
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",updateOvertimeUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:overtimeData options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([mystring isEqualToString:@" 1"]) {
                [self viewAllOvertimeRule:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            }
            else if([mystring isEqualToString:@" 3"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Overtime Rule Name Already Exists"];
                    
                }
                
            }
            else if ([mystring isEqualToString:@" 2"])
            {
                if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
                {
                    
                    [self.mydelegate showalerviewcontroller:@"Abbreviation Already Exists"];
                    
                }
            }
            
        }
    }];
    
    [postDataTask resume];
}


//Individual Overtime Rule View

-(void)individualOvertimeView:(NSString *)overtimeID :(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@/%@/%@",individualOvertimeViewUrl,overtimeID,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:json];
            }
        }
    }];
    
    [dataTask resume];
}

//Delete Overtime Rule
-(void)deleteOvertimeRule:(NSString *)overtimeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",deleteOvertimeUrl,overtimeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
        }
    }];
    
    [dataTask resume];
}

#pragma mark Income Tax Settings

//<<<<<............Income tax.............>>>>>>>>>>>>>

-(void)createtax:(NSMutableDictionary *)TaxDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",createtaxUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:TaxDict options:0 error:&error];
    [request setHTTPBody:postData];
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            //id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(createdIncometax:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate createdIncometax:mystring];
            }
          
        
        
        }
    }];
    
    
    [postDataTask resume];

}

-(void)displayincomeTaxservice:(NSString *)officeid
{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",displayincomtaxUrl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(displayincometaxResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate displayincometaxResponse:json];
            }

            
        }
    }];
    
    [dataTask resume];


    
}

#pragma mark Autocoding Settings
//<<<---------------------AUTOCODING--------------------------------->>

-(void)autocodeListing:(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,autocodeListUrl,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                
                
                
        if (data==Nil) {
                    
                    
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
                    
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:json];
            }
        }
    }];
            
    [dataTask resume];
}
        
-(void)createAutocode:(NSMutableDictionary *)autocodeDict
{
    NSError *error;
            
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,insertAutocode];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                                   cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                               timeoutInterval:60.0];
            
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
            
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:autocodeDict options:0 error:&error];
    [request setHTTPBody:postData];
            
            
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                
                
        if (data==Nil) {
                    
                    
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                        
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                        
            }
                    
                    
        }
                
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate createResponse:json];
            }
                    
        }
    }];
    [postDataTask resume];
            
}

#pragma mark Employee Listing
//<<------------------------Staffing Home----------------------------->>

-(void)employeeListingservice:(NSString *)officeid
{
  
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",staffingemployeeListing,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
          //  NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
         //   NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(employeelistingService:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate employeelistingService:mydict];
            }
        }
    }];
    
    [dataTask resume];

    
}


-(void)filterlistingaction:(NSString *)officeid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",workingpremiseALLlisting,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //  NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            //   NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(allEmployeeFilterResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate allEmployeeFilterResponse:mydict];
            }
        }
    }];
    
    [dataTask resume];
    
    
}


-(void)filteringEmployeelist:(NSMutableArray *)officeArray storearray:(NSMutableArray *)storeArray departArray:(NSMutableArray *)departmentArray catearray:(NSMutableArray *)categoryArray designation:(NSMutableArray *)designationArray officeid:(NSString *)office_id
{
    
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",filteringEmployeelistservice];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:officeArray,@"office_list",storeArray,@"store_list",departmentArray,@"department_list",categoryArray,@"category_list",designationArray,@"designation_list",office_id,@"office_id",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
          
            
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
         //   NSLog(@"%@",mydict);
            
            
            //  NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
             //  NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(filterigemployeelistingService:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate filterigemployeelistingService:mydict];
                
            }
            
        }
        
    }];
    
    [postDataTask resume];
    
}


#pragma mark Portal Settings
//<<<---------------PORTAL SETTINGS------------------------->>>
-(void)createPortal:(NSMutableDictionary *)portalDict
{
    NSError *error;
            
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",subdomainURL,createPortalURL];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                                   cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                               timeoutInterval:60.0];
            
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
            
    NSData *postData = [NSJSONSerialization dataWithJSONObject:portalDict options:0 error:&error];
    [request setHTTPBody:postData];
            
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                
        if (data==Nil) {
                    
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                        
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                        
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
                    
                if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
                {
                    [self.mydelegate createResponse:json];
                }
            }
        }];
            
    [postDataTask resume];
}
        
-(void)viewPortal:(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@%@",subdomainURL,viewPortalURL,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                
        if (data==Nil) {
                    
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
                    
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:mydict];
            }
                    
        }
    }];
            
            
    [dataTask resume];
}

#pragma mark Employee ID Settings
//<<<<---------------Employee ID Card-----------------------__>>>>>
-(void)employeeIdcardListingservice:(NSString *)officeid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",employeesidcardUrl,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //  NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            //   NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(employeeidcardlisting:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate employeeidcardlisting:mydict];
            }
        }
    }];
   
    
    [dataTask resume];
    
    
}

#pragma mark Employee Individual View
//<<<---------------------------Employee Individual-------------------------------->>>
-(void)employeeindividualServicedata:(NSString *)employeeId
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",employeeindividualServiceUrl,employeeId];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //  NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            //   NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(employeeindividualGotreponsedata:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate employeeindividualGotreponsedata:mydict];
         
            }
        }
        
    }];
    
    [dataTask resume];
    
}

-(void)saveDesignationDescription:(NSMutableDictionary *)descriptionDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",saveDescriptionUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:descriptionDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
        }
        
        else
        {
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate createResponse:mystring];
            }
            
        }
    }];
    
    [postDataTask resume];
}


-(void)uploadDocumentFromIndividual:(NSString *)folderID :(NSString *)empID :(NSMutableDictionary *)documentDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",uploadDocumentToFolderURL,folderID,empID];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:documentDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    // id json = [NSJSONSerialization JSONObjectWithData:postData options:0 error:nil];
   // NSLog(@"%@",json);
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
        }
        else
        {
            
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            id json=[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@",json);

            
            if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate createResponse:mystring];
            }
        }
    }];
    
    [postDataTask resume];

}

//View Uploaded Document

-(void)viewUploadedDocument:(NSString *)folderID :(NSString *)empID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",viewUploadedDocUrl,folderID,empID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:mydict];
                
            }
            
        }
        
    }];
    
    [dataTask resume];
}

#pragma mark Forms
//<<<<-----------------------DOCUMENT FORM ----------------------------------->>>>>

-(void)employeeListingAccordingToType:(NSString *)formType :(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",employeeListUrlforForms,formType,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
           
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:mydict];
                
            }
        }
        
    }];
    
    [dataTask resume];
}

-(void)listingExpenseReimbursementDetails:(NSString *)officeID :(NSString *)empID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",listingExpenseReimbursement,officeID,empID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:mydict];
                
            }
        }
        
    }];
    
    [dataTask resume];
}

-(void)listingCategoriesExpenseReimbursement:(NSString *)expenseID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",listingCategoriesUrl,expenseID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate viewAllResponse:mydict];
                
            }
            
            
            
        }
        
    }];
    
    [dataTask resume];
}

//FineForm
-(void)listingAllEmployeesForFine:(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",listingAllEmployeeUrl,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate viewAllResponse:mydict];
                
            }
            
            
            
        }
        
    }];
    
    [dataTask resume];
}

-(void)listingFineandEmpDetails:(NSString *)officeID : (NSString *)empID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",listingEmpDetailsFineRuleListingUrl,officeID,empID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate viewAllResponse:mydict];
                
            }
        }
        
    }];
    
    [dataTask resume];
    
}
-(void)listCorrespondingFineDetails:(NSString *)fineID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",listCorrespondingFineUrl,fineID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate serviceGotResponse:mydict];
                
            }
        }
        
    }];
    
    [dataTask resume];
}

#pragma mark Paperwork Settings
//<<<<----------------------------Paperwork Settings----------------------------->>>>


-(void)listingAlltheEmployeesAccordingtoType:(NSString *)officeID :(NSString *)type :(NSString *)ruleID :(NSString *)tileID
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@oid=%@&&type=%@&&rule_id=%@&&tile_id=%@",listingEmpAccordingtoTypeUrl,officeID,type,ruleID,tileID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            //id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
        }
        
    }];
    
    [dataTask resume];
}

-(void)employeePopupFilter:(id)filterDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",filterEmpPopUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:filterDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@",json);
            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate viewAllResponse:json];
            }
        }
    }];
    
    [postDataTask resume];
}


-(void)listingAllLeavePaperworkRule:(NSString *)officeID
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@",listallLeavePaperworkRuleURL,officeID];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(initiallyLeaveRuleViewResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate initiallyLeaveRuleViewResponse:json];
                
            }
            
        }
        
    }];
    
    
    [dataTask resume];
}

-(void)individualProtocolRuleView:(NSString *)officeID :(NSString *)ruleID :(NSString *)type
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@/%@",individualProtocolViewUrl,officeID,ruleID,type];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data==Nil) {
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
            }
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(serviceGotResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate serviceGotResponse:json];
                
            }
            
        }
        
    }];
    
    
    [dataTask resume];
}

-(void)saveIndividualLeaveProtocol:(id)protocolDict
{
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",saveLeaveProtocolURL];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:protocolDict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(createResponse:)]&&(self.mydelegate!=NULL))
            {
                [self.mydelegate createResponse:mystring];
            }
        }
    }];
    
    [postDataTask resume];
}

#pragma mark Documentation Module
/////<<<<<<-------------------------DOCUMENTATION MAIN MODULE----------------------->>>>>>>>>


//<<<<<<<-----------_Documentation Front Screen----------------------------->>>>
-(void)documentationList:(NSString *)officeid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@/%@",documentationListingservice,officeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
                
            }
            
        }
        
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            if ([self.mydelegate respondsToSelector:@selector(documentationFrontscreenlistingService:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate documentationFrontscreenlistingService:json];
                
            }
            
        }
        
    }];
    
    
    [dataTask resume];
    
}

-(void)addnewDocumentationfolder:(NSMutableDictionary *)dict
{
    
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",addnewdocumentfolder];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    

     NSMutableDictionary *dictinary=[[NSMutableDictionary alloc] initWithObjectsAndKeys:dict,@"folder_details", nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:dictinary options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
        }
        else
        {
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
            if ([mystring isEqualToString:@"1"]) {
                
                [self.mydelegate showalerviewcontroller:@"Folder Created Successfully"];
                
                [self documentationList:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
                
               
            }
            else
            {
                 [self.mydelegate showalerviewcontroller:@"Error Occured"];
            }
            
//            if ([self.mydelegate respondsToSelector:@selector(newDocumentationFolderaddedresponse:)]&&(self.mydelegate!=NULL))
//            {
//                [self.mydelegate newDocumentationFolderaddedresponse:mystring];
//            }
        }
    }];
    
    [postDataTask resume];

}

-(void)deletedDocumentinEmployeeindividual:(NSString *)docid employeeid:(NSString *)employeeid
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@%@/%@",deletedDocumentemployeeindividualsurl,docid,employeeid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
           id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            if ([self.mydelegate respondsToSelector:@selector(deletedDocumentsResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate deletedDocumentsResponse:mystring];
                
            }
            
        }
        
    }];
    
    
    [dataTask resume];

}

-(void)customfolderAddnewdocuments:(NSString *)customfolderid documentsdict:(NSMutableDictionary *)docudictionary
{
    
    NSError *error;
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
     NSString *urlString=[NSString stringWithFormat:@"%@%@",customfolderDocumentsaddedUrl,customfolderid];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:docudictionary options:0 error:&error];
    [request setHTTPBody:postData];
    
     // id json = [NSJSONSerialization JSONObjectWithData:postData options:0 error:nil];
     // NSLog(@"%@",json);
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
//            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//            NSLog(@"%@",json);
            
            NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",mystring);
            if ([mystring isEqualToString:@"1"]) {
                
            [self documentationList:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
                
            }
            else
            {
                [self.mydelegate showalerviewcontroller:@"Error Occured"];
            }
            
//            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
//            {
//                [self.mydelegate viewAllResponse:json];
//            }
        }
        
    }];
    
    
    [postDataTask resume];
    
}

//Testing

-(void)testService:(NSMutableDictionary *)textDict
{
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",customfolderDocumentsaddedUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    NSMutableDictionary *dict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:textDict,@"details", nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:dict options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
        }
        else
        {
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@",json);
            
            //            if ([self.mydelegate respondsToSelector:@selector(viewAllResponse:)]&&(self.mydelegate!=NULL))
            //            {
            //                [self.mydelegate viewAllResponse:json];
            //            }
        }
    }];
    
    [postDataTask resume];
}



-(void)MovingCopyfunctionality:(NSMutableArray *)docidArray moveingfolder:(NSString *)folderId correspondingAction:(NSString *)actionstring
{
    
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",moveorcopydocumentsUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [request setHTTPMethod:@"POST"];
    
    NSMutableDictionary *movedict=[[NSMutableDictionary alloc] initWithObjectsAndKeys:docidArray,@"Docid_List",folderId,@"FolderId",actionstring,@"Action", nil];
    
    NSMutableDictionary *dict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:movedict,@"MoveorCopydetails", nil];
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:dict options:0 error:&error];
    [request setHTTPBody:postData];
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
        }
        else
        {
            
            
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            if ([mystring isEqualToString:@"1"]) {
                
                [self.mydelegate showalerviewcontroller:@"Folder Moving/Copying Successfully"];
                
                [self documentationList:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
            
            }
            else
            {
                [self.mydelegate showalerviewcontroller:@"Error Occured"];
            }
        }
    }];
    
    [postDataTask resume];


}

-(void)DocumentationMainFolderdeletion:(NSString *)folderid
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString=[NSString stringWithFormat:@"%@/%@",deltedMaindocumentFolderdocuments,folderid];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (data==Nil) {
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
                
            }
            
        }
        
        else
        {
          
            
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            if ([mystring isEqualToString:@"1"]) {
                
                [self.mydelegate showalerviewcontroller:@"Folder Deleted Successfully"];
                
                [self documentationList:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
                
                
            }
            else
            {
                [self.mydelegate showalerviewcontroller:@"Error Occured"];
            }
            
        }
        
    }];
    
    
    [dataTask resume];
    
}


-(void)filteringEmployeeDocumentsInDocumentFrontscreen:(NSMutableArray *)officeArray storearray:(NSMutableArray *)storeArray departArray:(NSMutableArray *)departmentArray catearray:(NSMutableArray *)categoryArray designation:(NSMutableArray *)designationArray officeid:(NSString *)office_id
{
    
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",filterEmployeeDocumentsinFrontscreen];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:officeArray,@"office_list",storeArray,@"store_list",departmentArray,@"department_list",categoryArray,@"category_list",designationArray,@"designation_list",office_id,@"office_id",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            
            
            NSMutableDictionary *mydict  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //   NSLog(@"%@",mydict);
            
            
            //  NSString *mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            //  NSLog(@"%@",mystring);
            
            if ([self.mydelegate respondsToSelector:@selector(documentationemployeefilteringdocumentResponse:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate documentationemployeefilteringdocumentResponse:mydict];
                
            }
            
        }
        
    }];
    
    [postDataTask resume];
    
}

-(void)deletedDocumentsinDocumentationfrontscreen:(NSMutableArray *)deleteddocid
{
    
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",deletedDocumentinsdocumentationFrontscreen];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:deleteddocid,@"deleted_docids",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            if ([mystring isEqualToString:@"1"]) {
                
                [self.mydelegate showalerviewcontroller:@"Folder Deleted Successfully"];
                
                [self documentationList:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
    
            }
            else
            {
                [self.mydelegate showalerviewcontroller:@"Error Occured"];
            }
        }
        
    }];
    
    [postDataTask resume];

}

-(void)documentRenameprocessingFunctionality:(NSString *)doc_id renameVariable:(NSString *)rename
{
    
    NSError *error;
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    NSString *urlString=[NSString stringWithFormat:@"%@",documentRenameindocumentationFrontscreen];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"POST"];
    
    
    NSDictionary *mapData = [[NSDictionary alloc] initWithObjectsAndKeys:doc_id,@"doc_id",rename,@"file_name",nil];
    
    
    NSData *postData = [NSJSONSerialization dataWithJSONObject:mapData options:0 error:&error];
    [request setHTTPBody:postData];
    
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (data==Nil) {
            
            
            if ([self.mydelegate respondsToSelector:@selector(showalerviewcontroller:)]&&(self.mydelegate!=NULL))
            {
                
                [self.mydelegate showalerviewcontroller:@"No Internet Connection"];
                
            }
            
        }
        
        else
        {
            id mystring=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            if ([mystring isEqualToString:@"1"]) {
                
                [self.mydelegate showalerviewcontroller:@"Folder Deleted Successfully"];
                
                [self documentationList:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
                
            }
            else
            {
                [self.mydelegate showalerviewcontroller:@"Error Occured"];
            }
            
        }
        
    }];
    
    [postDataTask resume];
    
}

@end
