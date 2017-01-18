//
//  connectionclass.h
//  Automate Firm
//
//  Created by leonine on 19/10/15.
//  Copyright © 2015 leonine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "headerprotocol.h"
#import "AppDelegate.h"

@interface connectionclass : NSObject<NSURLSessionDelegate,NSURLSessionDataDelegate>
{
    AppDelegate *app;
}

@property(nonatomic,retain) id<headerprotocol> mydelegate;
@property(nonatomic,retain)UIImage *logoimag;
@property(nonatomic,retain)NSMutableArray *country;
@property(nonatomic,retain)NSMutableArray *countryid;
@property(nonatomic,retain)NSString *cmpanyDomainUrl;

//TIME

-(void)createnewTimerule:(NSString *)office_id : (NSString *)rulename abbrv:(NSString *)abbrv descripton:(NSString *)descripton checkgracetime:(NSString *)checkgracetime checkgracetimetextvalue:(NSString *)checkgracetimetextvalue workfirstdetails:(NSString *)workfirstdetails workfirstdetailstextvalue:(NSString *)workfirstdetailstextvalue worksecondetails:(NSString *)worksecondetails workthirddetails:(NSString *)workthirdetails latearrivaloption:(NSString *)latearrivaloption latearrivalvalue1:(NSString *)latearrivalvalue1 latearrivalvalue2:(NSString *)latearrivalvalue2 latearrivalvalue3:(NSString *)latearrivalvalue3 latearrivalvalue4:(NSString *)latearrivalvalue4 firstpenalty:(NSString *)firstpenalty secondpenalty:(NSString *)secondpenalty thirdpenalty:(NSString *)thirdpenalty  workhoursfirst:(NSString *)workhoursfirst workhourssecond:(NSString *)workhourssecond workhoursthird:(NSString *)workhoursthird  workhoursfourth:(NSString *)workhoursfourth workhoursfifth:(NSString *)workhoursfifth timestatusflag:(NSString *)timestatusflag createdby:(NSString *)createdby : (NSString *)selectedDesignation : (NSMutableDictionary *)designationDict;

-(void)getviewalltimerules:(NSString *)office_id;


-(void)updatesettingsviewrule:(NSString *)ruleid : (NSString *)officeId;


-(void)updateTimerule:(NSString *)office_id : (NSString *)id rulename:(NSString *)rulename abbrv:(NSString *)abbrv descripton:(NSString *)descripton checkgracetime:(NSString *)checkgracetime checkgracetimetextvalue:(NSString *)checkgracetimetextvalue workfirstdetails:(NSString *)workfirstdetails workfirstdetailstextvalue:(NSString *)workfirstdetailstextvalue worksecondetails:(NSString *)worksecondetails workthirddetails:(NSString *)workthirdetails latearrivaloption:(NSString *)latearrivaloption latearrivalvalue1:(NSString *)latearrivalvalue1 latearrivalvalue2:(NSString *)latearrivalvalue2 latearrivalvalue3:(NSString *)latearrivalvalue3 latearrivalvalue4:(NSString *)latearrivalvalue4 firstpenalty:(NSString *)firstpenalty secondpenalty:(NSString *)secondpenalty thirdpenalty:(NSString *)thirdpenalty  workhoursfirst:(NSString *)workhoursfirst workhourssecond:(NSString *)workhourssecond workhoursthird:(NSString *)workhoursthird  workhoursfourth:(NSString *)workhoursfourth workhoursfifth:(NSString *)workhoursfifth timestatusflag:(NSString *)timestatusflag createdby:(NSString *)createdby : (NSString *)selectedDesignation : (NSMutableDictionary *)designationDict;


-(void)deleteTimeRule:(NSString *)officeID : (NSString *)rid;


//Round Up

-(void)roundUpViewAll:(NSString *)office_id;

-(void)roundUpUpdate:(NSString *)officeID : (NSString *)roundupName : (NSString *)description : (NSString *)checkinRounding : (NSString *)checkinValue : (NSString *)checkoutRounding : (NSString *)checkoutValue : (NSString *)breakStart : (NSString *)breakEnd;


//SHIFT

-(void)createNewShiftRule:(NSString *)shift_name shift_abbrv:(NSString *)shift_abbrv shift_type:(NSString *)shift_type shift_description:(NSString *)shift_description day_punch_start:(NSString *)day_punch_start day_shift_start:(NSString *)day_shift_start day_shift_end:(NSString *)day_shift_end day_working_hours:(NSString *)day_working_hours day_break_type:(NSString *)day_break_type day_break_begin:(NSString *)day_break_begin day_break_end:(NSString *)day_break_end day_break_duration:(NSString *)day_break_duration day_intime_chekbox:(NSString *)day_intime_chekbox day_outtime_checkbox:(NSString *)day_outtime_checkbox day_intime_value:(NSString *)day_intime_value day_outtime_value:(NSString *)day_outtime_value swing_punch_start:(NSString *)swing_punch_start swing_shift_start:(NSString *)swing_shift_start swing_shift_end:(NSString *)swing_shift_end swing_working_hours:(NSString *)swing_working_hours swing_break_type:(NSString *)swing_break_type swing_break_begin:(NSString *)swing_break_begin swing_break_end:(NSString *)swing_break_end swing_break_duration:(NSString *)swing_break_duration swing_inttime_checkbox:(NSString *)swing_inttime_checkbox swing_outtime_checkbox:(NSString *)swing_outtime_checkbox swing_intime_value:(NSString *)swing_intime_value swing_outtime_value:(NSString *)swing_outtime_value night_punch_start:(NSString *)night_punch_start night_shift_start :(NSString *)night_shift_start night_shift_end:(NSString *)night_shift_end night_working_hours:(NSString *)night_working_hours night_break_type:(NSString *)night_break_type night_break_begin:(NSString *)night_break_begin night_break_end:(NSString *)night_break_end night_break_duration:(NSString *)night_break_duration night_intime_checkbox:(NSString *)night_intime_checkbox night_outtime_checkbox:(NSString *)night_outtime_checkbox night_intime_value:(NSString *)night_intime_value night_outtime_value:(NSString *)night_outtime_value shift_status:(NSString *)shift_status shift_created_by:(NSString *)shift_created_by officeID:(NSString *)office_Id :(NSString *)selectedDesig :(NSMutableDictionary *)designationDict ;

-(void)getViewAllShiftRules:(NSString *)officeID;

-(void)displaySelectedShiftRule:(NSString *)officeID : (NSString *)ruleid;

-(void)updateShiftRule:(NSString *)id shift_name:(NSString *)shift_name shift_abbrv:(NSString *)shift_abbrv shift_type:(NSString *)shift_type shift_description:(NSString *)shift_description day_punch_start:(NSString *)day_punch_start day_shift_start:(NSString *)day_shift_start day_shift_end:(NSString *)day_shift_end day_working_hours:(NSString *)day_working_hours day_break_type:(NSString *)day_break_type day_break_begin:(NSString *)day_break_begin day_break_end:(NSString *)day_break_end day_break_duration:(NSString *)day_break_duration day_intime_chekbox:(NSString *)day_intime_chekbox day_outtime_checkbox:(NSString *)day_outtime_checkbox day_intime_value:(NSString *)day_intime_value day_outtime_value:(NSString *)day_outtime_value swing_punch_start:(NSString *)swing_punch_start swing_shift_start:(NSString *)swing_shift_start swing_shift_end:(NSString *)swing_shift_end swing_working_hours:(NSString *)swing_working_hours swing_break_type:(NSString *)swing_break_type swing_break_begin:(NSString *)swing_break_begin swing_break_end:(NSString *)swing_break_end swing_break_duration:(NSString *)swing_break_duration swing_inttime_checkbox:(NSString *)swing_inttime_checkbox swing_outtime_checkbox:(NSString *)swing_outtime_checkbox swing_intime_value:(NSString *)swing_intime_value swing_outtime_value:(NSString *)swing_outtime_value night_punch_start:(NSString *)night_punch_start night_shift_start :(NSString *)night_shift_start night_shift_end:(NSString *)night_shift_end night_working_hours:(NSString *)night_working_hours night_break_type:(NSString *)night_break_type night_break_begin:(NSString *)night_break_begin night_break_end:(NSString *)night_break_end night_break_duration:(NSString *)night_break_duration night_intime_checkbox:(NSString *)night_intime_checkbox night_outtime_checkbox:(NSString *)night_outtime_checkbox night_intime_value:(NSString *)night_intime_value night_outtime_value:(NSString *)night_outtime_value shift_status:(NSString *)shift_status shift_created_by:(NSString *)shift_created_by officeID:(NSString *)officeID :(NSString *)selectedDesig : (NSMutableDictionary *)designationDict;

-(void)deleteShiftRule:(NSString *)officeID : (NSString *)rid;



//DESIGNATIONS

-(void)createNewDesignations:(id)desigDict;
-(void)viewAllDesignations;
-(void)individualDesignationView:(NSString *)desig_ID;
-(void)deleteResponsibility:(NSString *)responsibilityID;
-(void)updateDesignation:(id)desigDict;
-(void)deleteDesignation:(NSString *)desig_id;
-(void)moveEmployeesToDesignation : (id)DesignationDict;

//BANK

-(void)createNewBank:(NSString *)bank_name :(NSString *)bank_abbrv :(NSString *)bank_branch :(NSString *)bank_description :(NSString *)bank_holder_name :(NSString *)bank_account_number :(NSString *)bank_iban :(NSString *)bank_bic :(NSString *)bank_address :(NSString *)bank_created_date :(NSString *)bank_modifide_date :(NSString *)bank_status;

-(void)viewAllBank;

-(void)individualBankView:(NSString *)bank_id;

-(void)updateBank:(NSString *)bankID : (NSString *)bank_name :(NSString *)bank_abbrv :(NSString *)bank_branch :(NSString *)bank_description :(NSString *)bank_holder_name :(NSString *)bank_account_number :(NSString *)bank_iban :(NSString *)bank_bic :(NSString *)bank_address :(NSString *)bank_created_date :(NSString *)bank_modifide_date :(NSString *)bank_status;

-(void)deleteBank:(NSString *)bankID;

-(void)displayOfficeDetail:(NSString *)officeid;

-(void)displayAllCountries;

-(void)displayNationality;

-(void)displaySelectedStates:(NSString *)countryid;

-(void)displayAllCities:(NSString *)stateid;

-(void)getallBankList;


-(void)Editofficefunction:(NSMutableDictionary *)officeDict;//(NSString *)officename officeId:(NSString *)officeid abbrev:(NSString *)abbrev subtittle:(NSString *)subtittle sector:(NSString *)sector regid:(NSString *)registerid currency:(NSString *)currency financialyear:(NSString *)finanicalyear emailid:(NSString *)emailid telephonenumber:(NSString *)telephone fax:(NSString *)fax website:(NSString *)website building:(NSString *)building block:(NSString *)block street:(NSString *)street country:(NSString *)country state:(NSString *)state city:(NSString *)city postcode:(NSString *)postcode landmark:(NSString *)landmark department_listarray:(NSMutableArray *)deptArray category_listarray:(NSMutableArray *)categoryArray bank_listarray:(NSMutableArray *)bankArray printer_listarray:(NSMutableArray *)printerArray otherdetails_array:(NSMutableArray *)otherdetailsarray;
-(void)createorupdateDepartment:(id)deptDict;
-(void)deleteDepartment:(NSString *)deptID;
-(void)moveEmployeesToAnotherDepartment:(NSMutableDictionary *)deptDict;
-(void)createorUpdateCategory:(id)catDict;
-(void)deleteCategory:(NSString *)categoryID;
-(void)moveEmployeesToAnotherCategory:(id)catDict;
-(void)updateStorefunction:(NSString *)outletName officeId:(NSString *)officeid storeid:(NSString *)storeid outletType:(NSString *)outlettype abbrev:(NSString *)abbrev subtittle:(NSString *)subtittle sector:(NSString *)sector regid:(NSString *)registerid currency:(NSString *)currency financialyear:(NSString *)finanicalyear emailid:(NSString *)emailid telephonenumber:(NSString *)telephone fax:(NSString *)fax website:(NSString *)website building:(NSString *)building block:(NSString *)block street:(NSString *)street country:(NSString *)country state:(NSString *)state city:(NSString *)city postcode:(NSString *)postcode landmark:(NSString *)landmark  bank_listarray:(NSMutableArray *)bankArray printer_listarray:(NSMutableArray *)printerArray otherdetails_array:(NSMutableArray *)otherdetailsarray;

//--------ADD NEW EMPLOYEE--------------
-(void)uploadNewImage:(UIImage *)image :(NSString *)officeId;
-(void)OfficeStoreView:(NSString *)officeid;
-(void)StoreViewDetails:(NSString *)storeid;
-(void)addNewEmployeeOfficeDisplayDetails:(NSString *)officeId;
-(void)generateEmployeeCode;
-(void)uploadEmpImage:(UIImage *)image :(NSString *)empID ;
-(void)addNewEmployeeSave:(NSMutableDictionary *)personaleDetailsDict;
-(void)getLocalCity:(NSString *)emp_id;
-(void)addNewEmployeeSave2:(NSMutableDictionary *)contactDetailsDict;
-(void)listRuleAccordingtoDesignation:(NSString *)empID;
-(void)listLeaveConditions:(NSString *)leaveID : (NSString *)emp_id;
-(void)listExpenseCondition:(NSString *)expenseID : (NSString *)empID;
-(void)listLoanCondition:(NSString *)loanID : (NSString *)empID;
-(void)addEmployeeSave3:(id)employeeDict;


//..........EDIT EMPLOYEE......
-(void)updateEmployee1:(id)empDetails;
-(void)updateProfilePic:(UIImage *)image : (NSString *)EmpID;
-(void)updateEmployee2:(id)empDetails;
-(void)updateEmployee3:(id)empDetails;

//.........WeekRule........//

-(void)createNewweekRule:(NSString *)ruleName abbrev:(NSString *)abbrv description:(NSString *)description weekStarton:(NSString *)weekStarton offday1:(NSString *)offDay1 offday2:(NSString *)offDay2 offday3:(NSString *)offDay3 partialday:(NSString *)partialday beginningTime:(NSString *)beginningTime endingTime:(NSString *)endingTime duration:(NSString *)duration breaktype:(NSString *)breaktype breakstart:(NSString *)breakstart breakend:(NSString *)breakend breakduration:(NSString *)breakduration offficeid:(NSString *)officeid : (NSString *)designation :(NSMutableDictionary *)designationList;
-(void)updateNewweekRule:(NSString *)ruleName abbrev:(NSString *)abbrv description:(NSString *)description weekStarton:(NSString *)weekStarton offday1:(NSString *)offDay1 offday2:(NSString *)offDay2 offday3:(NSString *)offDay3 partialday:(NSString *)partialday beginningTime:(NSString *)beginningTime endingTime:(NSString *)endingTime duration:(NSString *)duration breaktype:(NSString *)breaktype breakstart:(NSString *)breakstart breakend:(NSString *)breakend breakduration:(NSString *)breakduration offficeid:(NSString *)officeid ruleid:(NSString *)ruleid : (NSString *)designation :(NSMutableDictionary *)designationList;
-(void)viewOfficeWeekRule:(NSString *)oficeid;
-(void)viewIndivdualOfficeWeekRule:(NSString *)weekid officeid:(NSString *)officeid;
-(void)deleteWeekRule:(NSString *)ruleid;


//-(void)getOfficeDesignation;
-(void)LoginService:(NSString *)username paswrd:(NSString *)pasword officeid:(NSString *)officeid ;
-(void)officeListingService;
-(void)includeDesignation:(NSString *)officeId :(NSString *)ruleType :(NSString *)ruleID;



//...New Holiday setting Service....
-(void)createMainDoneHolidayService:(NSMutableDictionary *)serviceDict othrDetails:(NSMutableArray *)othrDetailsAray officeid:(NSString *)officeid ruleid:(NSString *)hoidayrule_id;
-(void)SubserviceForCreation:(NSString *)workingPremiseId departmentId:(NSString *)deptid categoryId:(NSString *)categoryId officeId:(NSString *)officeId flagString:(NSString *)flagString fromString:(NSString *)fromString toString:(NSString *)toString duration:(NSString *)durationString payment:(NSString *)paymentstring workingPremise:(NSString *)workingPremiseString departmentName:(NSString *)departmentString categrystring:(NSString *)categoryString firstPartDetails:(NSMutableDictionary *)firstPartDict catgryText:(NSString *)catgryText;
-(void)viewAllHolidays:(NSString *)officeid;
-(void)individualHolidayDetails:(NSString *)officeid ruleId:(NSString *)ruleId;
-(void)deleteHoliday:(NSString *)ruleid;
-(void)firstServiceForHolidyWorkingpremiseDeprtmntsAndCategory:(NSString *)officeid;
-(void)seconddisplayServiceForDeptcatfryOffice:(NSString *)ruleId officeid:(NSString *)officeId;
-(void)SecondCategoryDoneServiceFunction:(NSString *)workingPremiseId departmentId:(NSString *)deptid categoryId:(NSString *)categoryId officeId:(NSString *)officeId flagString:(NSString *)flagString fromString:(NSString *)fromString toString:(NSString *)toString duration:(NSString *)durationString payment:(NSString *)paymentstring workingPremise:(NSString *)workingPremiseString departmentName:(NSString *)departmentString categrystring:(NSString *)categoryString catgryText:(NSString *)catgryText ruleId:(NSString *)ruleId CatgryTileId:(NSString *)ctgryTileId;
//-(void)individualDisplayHolidayFunction:(NSString *)officeId holidayId:(NSString *)holi_id;



//<---------------------------Leave Settings---------------------------------->

-(void)viewAllLeaves:(NSString *)officeId;
-(void)leaveSaveNewTile:(id)leaveData;
-(void)individualLeaveView:(NSString *)leaveID;
-(void)individualLeaveConditionView:(NSString *)conditionID;
-(void)updateLeaveSettings:(id)leaveData;
-(void)finalUpdateLeaveSettings:(id)leaveData;
-(void)deleteLeaveCondition:(NSString *)conditionID : (NSString *)rule_id;
-(void)deleteLeave:(NSString *)leaveID;





//<<---------------------------Include Designation for Tile View Classes----------------->>
-(void)includeDesignationforTileViewClass:(NSString *)ruleType : (NSString *)ruleID : (NSString *)tileID : (NSString *)officeID;
//<<---------------------------Include Designation for paperwork Authority -------------->>>

-(void)includeDesignationForPaperworkAuthority:(NSString *)officeID : (NSString *)ruleType : (NSString *)ruleID : (NSString *)tileID : (NSString *)actionFlag;

//<<<----------------------Assign to Specific Employee for Paperwork Authority-------------->>>
-(void)assigntoSpecificEmployee:(NSString *)officeID : (NSString *)ruleID : (NSString *)conditionID : (NSString *)actionFlow : (NSString *)type;

//<<........................Fine Settings.....................................>>//

-(void)CreaateNewFineSettings:(NSString *)fineTextName fineAmount:(NSString *)fineAmountText maxWarning:(NSString *)maxWarningText maxInstalment:(NSString *)maxInstalment description:(NSString *)Description officeid:(NSString *)officeId;
-(void)viewAllFineRules:(NSString *)officeid;
-(void)individualFineruleDisplay:(NSString *)officeId ruled:(NSString *)ruleId;
-(void)updateFineSettings:(NSString *)fineTextName fineAmount:(NSString *)fineAmountText maxWarning:(NSString *)maxWarningText maxInstalment:(NSString *)maxInstalment description:(NSString *)Description officeid:(NSString *)officeId ruleId:(NSString *)ruleId;
-(void)deleteFineSetingRule:(NSString *)ruleid;

//............................Loan Settings.......................................>>
//-(void)FirstServiceForLoanCreation:(NSString ;*)

-(void)leaveabbrivationservice:(NSString *)officeid;


//Creation of loan service firsttime

-(void)createingloanTile:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description annualinterestrate:(NSString *)annualinterestrate maxduration:(NSString *)maxduration maximumlimit:(NSString *)maximumlimit pendingloanamount:(NSString *)pendingloanamount loanmonth:(NSString *)loanmonth lastworkingday:(NSString *)lastworkingday visaduration:(NSString *)visaduration numberofleavedays:(NSString *)numberofleavedays exceptforleave:(NSString *)exceptforleave allowbuttonstring1:(NSString *)allowbuttonstring1 allowbuttonstring2:(NSString *)allowbuttonstring2 allowbuttonstring3:(NSString *)allowbuttonstring3 swichvalue:(NSString *)swichvalue loanruleid:(NSString *)loanruleid loantileid:(NSString *)loantileid officeid:(NSString *)officeid selecteddesignationstring:(NSString *)selecteddesignationstring maindesignationdictionary:(NSMutableDictionary *)maindesignationdictionary;


//Creation of loan service alltime


-(void)secondtimecreateloanTile:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description annualinterestrate:(NSString *)annualinterestrate maxduration:(NSString *)maxduration maximumlimit:(NSString *)maximumlimit pendingloanamount:(NSString *)pendingloanamount loanmonth:(NSString *)loanmonth lastworkingday:(NSString *)lastworkingday visaduration:(NSString *)visaduration numberofleavedays:(NSString *)numberofleavedays exceptforleave:(NSString *)exceptforleave allowbuttonstring1:(NSString *)allowbuttonstring1 allowbuttonstring2:(NSString *)allowbuttonstring2 allowbuttonstring3:(NSString *)allowbuttonstring3 swichvalue:(NSString *)swichvalue loanruleid:(NSString *)loanruleid loantileid:(NSString *)loantileid officeid:(NSString *)officeid selecteddesignationstring:(NSString *)selecteddesignationstring maindesignationdictionary:(NSMutableDictionary *)maindesignationdictionary;

//lastdonebuttonserviceforloanservice



-(void)lastdonebuttonforcreateloanservice:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description loanruleid:(NSString *)loanruldid;

-(void)viewAllloanRules:(NSString *)officeid;

-(void)deleteloanTileid:(NSString *)tileid officeid:(NSString *)officeid loanruleid:(NSString *)loanruleid;

-(void)updationofloanIndividualrules:(NSString *)officeid loanruleid:(NSString *)loanruleid;



//.............Advance Settings................................>>>>>


//-(void)createNewAdvanceRule:(NSString *)percentOfsalary instalment:(NSString *)instalmentLimit visaDuration:(NSString *)visaDuration eligibleMonths:(NSString *)eligibleMonths pendingLoanAmount:(NSString *)pendingLoanAmt leavesTypeAbrvation:(NSString *)leavesType lastwrkingDay:(NSString *)lasttWorkingDay radioButton1:(NSString *)radioButton radioButton2:(NSString *)radioButton2 radioButton3:(NSString *)radioButton3;




-(void)updationofloanTile:(NSString *)loantype abbrevation:(NSString *)abbrev description:(NSString *)description annualinterestrate:(NSString *)annualinterestrate maxduration:(NSString *)maxduration maximumlimit:(NSString *)maximumlimit pendingloanamount:(NSString *)pendingloanamount loanmonth:(NSString *)loanmonth lastworkingday:(NSString *)lastworkingday visaduration:(NSString *)visaduration numberofleavedays:(NSString *)numberofleavedays exceptforleave:(NSString *)exceptforleave allowbuttonstring1:(NSString *)allowbuttonstring1 allowbuttonstring2:(NSString *)allowbuttonstring2 allowbuttonstring3:(NSString *)allowbuttonstring3 swichvalue:(NSString *)swichvalue loanruleid:(NSString *)loanruleid loantileid:(NSString *)loantileid officeid:(NSString *)officeid selecteddesignationstring:(NSString *)selecteddesignationstring maindesignationdictionary:(NSMutableDictionary *)maindesignationdictionary clickdesignationflag:(int)clickdesignationflag;

-(void)deletethemainloanRules:(NSString *)loanid;


-(void)loanindividualtileservices:(NSString *)loanid tileid:(NSString *)tileid;


// Advance....
-(void)createNewAdvanceRule:(NSString *)percentOfsalary instalment:(NSString *)instalmentLimit visaDuration:(NSString *)visaDuration eligibleMonths:(NSString *)eligibleMonths pendingLoanAmount:(NSString *)pendingLoanAmt nextApprovedLeave:(NSString *)nextLeave leavesTypeAbrvation:(NSString *)leavesType lastwrkingDay:(NSString *)lasttWorkingDay radioButton1:(NSString *)radioButton radioButton2:(NSString *)radioButton2 radioButton3:(NSString *)radioButton3 ruleId:(NSString *)ruleId tileId:(NSString *)tileId selecetdDesig:(NSString*)seelctedDesig enableStatus:(NSString *)enableStatus abbrevationText:(NSString *)abbrevationText designationList:(NSMutableDictionary *)designationDict officeId:(NSString *)oficeId;

-(void)updateNewAdvanceRule:(NSString *)percentOfsalary instalment:(NSString *)instalmentLimit visaDuration:(NSString *)visaDuration eligibleMonths:(NSString *)eligibleMonths pendingLoanAmount:(NSString *)pendingLoanAmt nextApprovedLeave:(NSString *)nextLeave leavesTypeAbrvation:(NSString *)leavesType lastwrkingDay:(NSString *)lasttWorkingDay radioButton1:(NSString *)radioButton radioButton2:(NSString *)radioButton2 radioButton3:(NSString *)radioButton3 ruleId:(NSString *)ruleId tileId:(NSString *)tileId selecetdDesig:(NSString*)seelctedDesig enableStatus:(NSString *)enableStatus abbrevationText:(NSString *)abbrevationText designationList:(NSMutableDictionary *)designationDict officeId:(NSString *)oficeId;

-(void)viewAdvanceRuleConditions:(NSString *)officeid;

-(void)viewAdvanceRuleTileDetails:(NSString *)ruleid;

-(void)viewIndividualAdvanceRuleTileDetails:(NSString *)condtionId;

-(void)deleteAdvanceTile:(NSString *)tileId;

//.....Payroll System

-(void)viewAllPayrule:(NSString *)officeId;

-(void)individualPayruleView:(NSString *)payrule_id officeid:(NSString *)oficeId;

-(void)createNewpayrule:(NSString *)rulename abbrevation:(NSString *)abbrvtn dessc:(NSString *)description period_Type:(NSString *)period_Type currentStartDate:(NSString *)startDate officeId:(NSString *)officeId selectedDesig:(NSString *)selectedDesig designationList:(NSMutableDictionary *)designationdict timegap:(int)timegap paymntDate:(NSString *)pamentdate;

-(void)updateNewpayrule:(NSString *)rulename abbrevation:(NSString *)abbrvtn dessc:(NSString *)description officeId:(NSString *)officeId payruleId:(NSString *)payrulId selectedDesig:(NSString *)selectedDesig designationList:(NSMutableDictionary *)designationdict paymntDate:(NSString *)pamentdate;

-(void)deletePayRule:(NSString *)rulrid officeid:(NSString *)oficeId;



//.......................>>>...documentation..........>>>
-(void)viewAllDocuments:(NSString *)officeId;
-(void)createNewDocument:(id)documentDetails officeId:(NSString *)officeId;
-(void)displaymodifiedDateFunction:(NSString *)officeID;
-(void)deleteDocument:(NSString *)docId officeId:(NSString *)officeId docTypeId:(NSString *)docTypeId;

//<<---------------------Expense Reimbursement------------------------------>>

//Create new Expense while save new expense cateogry
-(void)viewAllExpenseRule:(NSString *)office_id;
-(void)individualExpenseRuleView:(NSString *)expense_id;
-(void)createNewExpenseCategory : (NSMutableDictionary *)expenseData;
-(void)saveExpenseCondition:(NSMutableDictionary *)conditionData;
-(void)viewExpenseConditionView:(NSString *)expense_id : (NSString *)condition_id;
-(void)finalExpenseCreation:(NSMutableDictionary *)expenseData;
-(void)deleteExpenseCondition:(NSString *)condition_id;
-(void)deleteExpenseRule:(NSString *)expense_id;



//.........Earnings.......
-(void)viewAllEarningsList:(NSString *)officeId;
-(void)createcreateNewEarningRule:(NSMutableDictionary *)firstPartDetails tileDetails:(NSMutableDictionary *)tileDetails includeDesignation:(NSMutableDictionary *)designationDetails officeId:(NSString *)officeId idurl:(NSString *)idurl;
-(void)individualTileViewDetails:(NSString *)earningrule_Id condId:(NSString *)cond_id;
-(void)EarningRuleDetails:(NSString *)earning_Id;
-(void)deleteEarningRule:(NSString *)ruleId typeOfDel:(NSString *)delFlag;
-(void)finalDoneFunction:(NSMutableDictionary *)firstDetails;




//.............Deduction...........
-(void)viewAllDeductionList:(NSString *)officeId;
-(void)createDeductionRule:(NSMutableDictionary *)firstPartDetails tileDetails:(NSMutableDictionary *)tileDetails includeDesignation:(NSMutableDictionary *)designationDetails officeId:(NSString *)officeId tileId:(NSString *)tileId;
-(void)updateDeductionRule:(NSMutableDictionary *)firstPartDetails tileDetails:(NSMutableDictionary *)tileDetails includeDesignation:(NSMutableDictionary *)designationDetails officeId:(NSString *)officeId tileId:(NSString *)tileId;
-(void)finalDoneFunctionForDeduction:(NSMutableDictionary *)firstDetails;
-(void)deductionRuleDetails:(NSString *)deduction_Id offficeId:(NSString *)officeId;
-(void)individualDeductionTileConditionDetails:(NSString *)cond_Id ruleId:(NSString *)rule_Id;
-(void)deleteDeductionRule:(NSString *)delId idFlag:(NSString *)idFlag;



//<<---------------------------OVERTIME------------------------------------------->>

-(void)viewAllOvertimeRule:(NSString *)officeId;
-(void)createNewOvertime:(id)overtimeData;
-(void)individualOvertimeView:(NSString *)overtimeID : (NSString *)officeID;
-(void)updateOvertimeRule:(id)overtimeData;
-(void)deleteOvertimeRule:(NSString *)overtimeID;

//<<<<<<<<...........Income Tax service.......>>>>>>>

-(void)createtax:(NSMutableDictionary *)TaxDict;
-(void)displayincomeTaxservice:(NSString *)officeid;


//<<<<<----------------Autoding------------>>
-(void)autocodeListing:(NSString *)officeID;
-(void)createAutocode:(NSMutableDictionary *)autocodeDict;


//staffingemployeelist

-(void)employeeListingservice:(NSString *)officeid;

-(void)filterlistingaction:(NSString *)officeid;

-(void)filteringEmployeelist:(NSMutableArray *)officeArray storearray:(NSMutableArray *)storeArray departArray:(NSMutableArray *)departmentArray catearray:(NSMutableArray *)categoryArray designation:(NSMutableArray *)designationArray officeid:(NSString *)office_id;


//<<---------------------PORTAL SETTINGS--------------------->>

-(void)createPortal:(NSMutableDictionary *)portalDict;
-(void)viewPortal:(NSString *)officeID;


//<<<<-----------------employeeidcard-------------------->>

-(void)employeeIdcardListingservice:(NSString *)officeid;


//<<<<-----------------employeeindividualsevice-------------------->>

-(void)employeeindividualServicedata:(NSString *)employeeId;
-(void)saveDesignationDescription:(NSMutableDictionary *)descriptionDict;
//Upload Files from Individual Folder
-(void)uploadDocumentFromIndividual : (NSString *)folderID : (NSString *)empID : (NSMutableDictionary *)documentDict;

//-(void)viewUploadedDocument
-(void)viewUploadedDocument:(NSString *)folderID : (NSString *)empID;


//<<<<---------------------------DOCUMENT FORMS COMMON------------------->>>>>

//Listing all the employee who are under a specific type of application form 
-(void)employeeListingAccordingToType:(NSString *)formType : (NSString *)officeID;

//Listing Expense Reimbursement of Selected Employee
-(void)listingExpenseReimbursementDetails:(NSString *)officeID : (NSString *)empID;
//Listing categories of selected Expense

-(void)listingCategoriesExpenseReimbursement:(NSString *)expenseID;


//Fine
-(void)listingAllEmployeesForFine:(NSString *)officeID;
-(void)listingFineandEmpDetails:(NSString *)officeID : (NSString *)empID;
-(void)listCorrespondingFineDetails:(NSString *)fineID;



//Registartion

-(void)registerServiceFunction:(NSString *)usrName paswrd:(NSString *)pasWrd cmpnyId:(NSString *)cmpnyId;
-(void)registerResponseservice:(NSString *)empId AuthCode:(NSString *)authCode urlString:(NSString *)urlString officeDomainString:(NSString *)officedomainString;
-(void)getUserDetails:(NSString *)detailUrl;
-(void)sendUserDetails:(NSString *)paaswrd language:(NSString *)language emId:(NSString *)empIdl;


//Paperwork Settings

-(void)listingAlltheEmployeesAccordingtoType:(NSString *)officeID :(NSString *)type : (NSString *)ruleID : (NSString *)tileID;

-(void)employeePopupFilter : (id)filterDict;
-(void)testService:(NSMutableDictionary *)textDict;

-(void)listingAllLeavePaperworkRule:(NSString *)officeID;

-(void)individualProtocolRuleView:(NSString *)officeID : (NSString *)ruleID : (NSString *)type;

-(void)saveIndividualLeaveProtocol : (id)protocolDict;

//documentation

-(void)documentationList:(NSString *)officeid;

-(void)addnewDocumentationfolder:(NSMutableDictionary *)dict;

-(void)deletedDocumentinEmployeeindividual:(NSString *)docid employeeid:(NSString *)employeeid;


-(void)customfolderAddnewdocuments:(NSString *)customfolderid documentsdict:(NSMutableDictionary *)docudictionary;

-(void)MovingCopyfunctionality:(NSMutableArray *)docidArray moveingfolder:(NSString *)folderId correspondingAction:(NSString *)actionstring;


-(void)DocumentationMainFolderdeletion:(NSString *)folderid;


-(void)filteringEmployeeDocumentsInDocumentFrontscreen:(NSMutableArray *)officeArray storearray:(NSMutableArray *)storeArray departArray:(NSMutableArray *)departmentArray catearray:(NSMutableArray *)categoryArray designation:(NSMutableArray *)designationArray officeid:(NSString *)office_id;


-(void)deletedDocumentsinDocumentationfrontscreen:(NSMutableArray *)deleteddocid;

-(void)documentRenameprocessingFunctionality:(NSString *)doc_id renameVariable:(NSString *)rename;

@end
