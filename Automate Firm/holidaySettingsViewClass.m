
//
//  holidaySettingsViewClass.m
//  Automate Firm
//
//  Created by leonine on 2/4/16.
//  Copyright © 2016 leonine. All rights reserved.
//

#import "holidaySettingsViewClass.h"
#import "attendancesettingsviewclass.h"
#import "settingsViewController.h"

@implementation holidaySettingsViewClass
@synthesize inPath,dateFlag,currentDate,flagString,idStringDept;
-(void)awakeFromNib
{
    self.myconnection=[[connectionclass alloc] init];
    self.ob=[[attendancesettingsviewclass alloc]init];
    self.myconnection.mydelegate=self;
    self.holidayruleidString=@"0";
    self.holidayTileIdString=@"0";
    self.updateFlag=@"0";
    self.deleteFlag=@"0";
    self.cancelString=@"0";
    self.doneString=@"0";
    self.cancelActionFlag=@"0";
    self.mandString=@"0";//gegeegegegege


 //  [self.myconnection getHolidaypageWorkingPremise:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
   // [self.myconnection firstServiceForHolidyWorkingpremiseDeprtmntsAndCategory:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];

    if([[[NSUserDefaults standardUserDefaults]objectForKey:@"holidayAction"]isEqualToString:@"update"])
    {
        
        [self.myconnection individualHolidayDetails:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] ruleId:[[NSUserDefaults standardUserDefaults]objectForKey:@"holi_id"]];
        
    }
    else{
         [self.myconnection firstServiceForHolidyWorkingpremiseDeprtmntsAndCategory:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
    }
    dateFlag=0;
    self.idFlag=0;
    self.holidayruleidString=@"0";
    self.holidayTypeArray=[[NSMutableArray alloc] initWithObjects:@"Public Holiday",@"Company Holiday", nil];
    self.holidayOccuranceArray=[[NSMutableArray alloc] initWithObjects:@"Annual",@"Occasional", nil];
    self.fromDateArray=[[NSMutableArray alloc]init];
    self.toDateArray=[[NSMutableArray alloc]init];
    self.durationArray=[[NSMutableArray alloc]initWithObjects:@"Full Day", nil];
    self.paymentArray=[[NSMutableArray alloc]initWithObjects:@"Non Paid", nil];
    self.officeArray=[[NSMutableArray alloc]initWithObjects:@"", nil];
    self.departmentArray=[[NSMutableArray alloc]initWithObjects:@"", nil];
    self.categoryArray=[[NSMutableArray alloc]initWithObjects:@"", nil];
    self.selectedArray=[[NSMutableArray alloc]init];
    self.mainDurationArray=[[NSMutableArray alloc]initWithObjects:@"Full Day",@"Half Day", nil];
    self.mainPaymentArray=[[NSMutableArray alloc]initWithObjects:@"Paid",@"Non Paid", nil];
    self.mainOfficeArray=[[NSMutableArray alloc] init ];
    self.workingPremiseIdArray=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    self.mainCategoryArray=[[NSMutableArray alloc] init];
    self.mainDepartmentArray=[[NSMutableArray alloc] init] ;
    self.selectedCategoryDict=[[NSMutableDictionary alloc]init];
    self.mainCatgoryDict=[[NSMutableDictionary alloc]init];
    self.updateIdDict=[[NSMutableDictionary alloc]init];
    self.updateIdOfficeDict=[[NSMutableDictionary alloc]init];
    self.existingCategoryDict=[[NSMutableDictionary alloc]init];
    self.categoryCellTextlabelAray=[[NSMutableArray alloc]init];
    self.categoryIDList=[[NSMutableArray alloc]init];
    self.selectedIdArray=[[NSMutableArray alloc]init];
    self.serviceArray=[[NSMutableArray alloc]init];
    self.unSelectedArray=[[NSMutableArray alloc]init];
    self.deptIDList=[[NSMutableArray alloc]init];
    self.responseDict=[[NSMutableDictionary alloc]init];
    self.categoryIdDict=[[NSMutableDictionary alloc]init];
    self.existingCategoryIdDict=[[NSMutableDictionary alloc]init];
    self.existingDepartmentIdDict=[[NSMutableDictionary alloc]init];
    self.existingWorkingPremiseIdDict=[[NSMutableDictionary alloc]init];
    self.TableEachTileIdDict=[[NSMutableDictionary alloc]init];
    self.flagTileIdDict=[[NSMutableDictionary alloc]init];





    
    
    
    //Settings datepicker appearance and minimum date setting
    
    [[UITableView appearanceWhenContainedInInstancesOfClasses:@[[UIDatePicker class]]]
     setBackgroundColor:[UIColor clearColor]];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *currentDate1 = [NSDate date];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"d-MM-yyyy"];
    currentDate = [dateFormat stringFromDate:currentDate1];
    
    [self.fromDateArray addObject:currentDate];
    [self.toDateArray addObject:currentDate];
    
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:0];//Max Upto current Year
    NSDate *minDate = [calendar dateByAddingComponents:comps toDate:currentDate1 options:0];
    
    [self.datePicker setMinimumDate:minDate];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidShow:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView==self.holidayTypeTC) {
        return  self.holidayTypeArray.count;
    }
    else if (tableView==self.holidayOccuranceTC)
    {
        return  self.holidayOccuranceArray.count;
    }
    else if(tableView==self.holidayMainTC)
    {
        return self.fromDateArray.count;
    }
    else if (tableView==self.durationTC)
    {
        return self.mainDurationArray.count;
    }
    else if (tableView==self.paymentTC)
    {
        return  self.mainPaymentArray.count;
    }
    else if (tableView==self.officeTC)
    {
        return self.mainOfficeArray.count;
    }
    else if (tableView==self.departmentTC)
    {
        return self.mainDepartmentArray.count;
    }
    else
    {
        return  self.mainCategoryArray.count;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Holiday Type drop down
    if (tableView==self.holidayTypeTC) {
        UITableViewCell *cell=[[UITableViewCell alloc]init];
        cell.textLabel.text=[self.holidayTypeArray objectAtIndex: indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        return  cell;
    }
    //Holiday occurance drop down
    else if (tableView==self.holidayOccuranceTC)
    {
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.text=[self.holidayOccuranceArray objectAtIndex: indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        return cell;
    }
    //Main holiday Table
    else if(tableView==self.holidayMainTC)
    {
        holidayTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
        if (cell==nil) {
            NSArray *nib=[[NSBundle mainBundle]loadNibNamed:@"holidayTableViewCell" owner:self options:nil];
            cell=[nib objectAtIndex:0];
        }
        if(indexPath.row < self.fromDateArray.count - 1)
        {
            cell.deptButton.backgroundColor=[UIColor clearColor];
            cell.deptButton.userInteractionEnabled=YES;
            cell.catButton.backgroundColor=[UIColor clearColor];
            cell.catButton.userInteractionEnabled=YES;
        }
        
        
        cell.fromDateLabel.text=[self.fromDateArray objectAtIndex:indexPath.row];
        cell.toDateLabel.text=[self.toDateArray objectAtIndex:indexPath.row];
        cell.durationLabel.text=[self.durationArray objectAtIndex:indexPath.row];
        cell.paymentLabel.text=[self.paymentArray objectAtIndex:indexPath.row];
        cell.officeLabel.text=[self.officeArray objectAtIndex:indexPath.row];
        cell.departmentLabel.text=[self.departmentArray objectAtIndex: indexPath.row];
        cell.categoryLabel.text=[self.categoryArray objectAtIndex:indexPath.row];
        return  cell;
    }
    //Duration drop down
    else if (tableView==self.durationTC)
    {
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.text=[self.mainDurationArray objectAtIndex: indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        return cell;
    }
    //Payment drop down
    else if(tableView==self.paymentTC)
    {
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.text=[self.mainPaymentArray objectAtIndex: indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        return cell;
    }
    
    //working Premise(office) drop down
    else if (tableView==self.officeTC)
    {
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.text=[self.mainOfficeArray objectAtIndex: indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        return cell;
    }
    //Department drop down
    else if (tableView==self.departmentTC)
    {
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.text=[self.mainDepartmentArray objectAtIndex: indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        return cell;
    }
    //category drop down
    else
    {
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.text=[self.mainCategoryArray objectAtIndex: indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        
        UIButton *newRadioButton;
        newRadioButton = [UIButton buttonWithType:UIButtonTypeCustom];
        newRadioButton.frame = CGRectMake(30, 0, 15, 14.5);
        cell.accessoryView = newRadioButton;
       // if ([self.resetFlag isEqualToString:@"0"]) {
            
        
        if ([self.selectedArray containsObject:[self.mainCategoryArray objectAtIndex:indexPath.row]]) {
            [newRadioButton setImage:[UIImage imageNamed:@"white_box_tickmark.png"] forState:UIControlStateNormal];
        }
        else
        {
            [newRadioButton setImage:[UIImage imageNamed:@"white_box_addnew.png"] forState:UIControlStateNormal];
        }
      //  }
        return cell;
    }
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath //Selection on each drop down
{
    if (tableView==self.holidayTypeTC) {
        self.holidayTypeText.text=[self.holidayTypeArray objectAtIndex:indexPath.row];
        self.holidayTypeTC.hidden=true;
    }
    else if (tableView==self.holidayOccuranceTC)
    {
        self.holidayOccuranceText.text=[self.holidayOccuranceArray objectAtIndex: indexPath.row];
        self.holidayOccuranceTC.hidden=true;
    }
    else if (tableView==self.holidayMainTC)
    {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:indexPath];
        UIView *myBackView = [[UIView alloc] initWithFrame:cell.frame];
        myBackView.backgroundColor = [UIColor clearColor];
        cell.selectedBackgroundView = myBackView;
    }
    else if (tableView==self.durationTC)
    {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:inPath];
        cell.durationLabel.text=[self.mainDurationArray objectAtIndex:indexPath.row];
        [cell.durationLabel resignFirstResponder];
        
        [self.durationArray replaceObjectAtIndex:inPath.row withObject:cell.durationLabel.text];
        self.durationTC.hidden=true;

    }
    else if (tableView==self.paymentTC)
    {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:inPath];
        cell.paymentLabel.text=[self.mainPaymentArray objectAtIndex:indexPath.row];
        [self.paymentArray replaceObjectAtIndex:inPath.row withObject:cell.paymentLabel.text];
        self.paymentTC.hidden=true;

    }
    else if (tableView==self.officeTC)
    {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:inPath];
        cell.officeLabel.text=[self.mainOfficeArray objectAtIndex:indexPath.row];
        [self.officeArray replaceObjectAtIndex:inPath.row withObject:cell.officeLabel.text];
        self.idString=[self.workingPremiseIdArray objectAtIndex: indexPath.row];
        [self.mainDepartmentArray removeAllObjects];
        [self.deptIDList removeAllObjects];

     //   NSString *str;
        if (indexPath.row==0) {
        
            for (int i=0; i<[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:indexPath.row]]]allKeys]count]; i++) {
            
                [self.mainDepartmentArray addObject:[[[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:indexPath.row]]]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:0]];
                 [self.deptIDList addObject:[[[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:indexPath.row]]]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:1]];
                
              

            }
            NSLog(@"%@",self.mainDepartmentArray);
            NSLog(@"%@",self.deptIDList);
            

            flagString=@"o";
        }
        else{
          
            for (int i=0; i<[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:indexPath.row]]]objectForKey:@"department"]allKeys]count]; i++) {
                [self.mainDepartmentArray addObject:[[[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:indexPath.row]]]objectForKey:@"department"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:0]];
                [self.deptIDList addObject:[[[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:indexPath.row]]]objectForKey:@"department"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:1]];

                
            }
            
            NSLog(@"%@",self.mainDepartmentArray);
            NSLog(@"%@",self.deptIDList);

            flagString=@"s";


        }
        [self.departmentTC reloadData];
        self.officeTC.hidden=true;
        cell.deptButton.backgroundColor=[UIColor clearColor];
        cell.deptButton.userInteractionEnabled=YES;

    }
    else if (tableView==self.departmentTC)
    {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:inPath];
        cell.departmentLabel.text=[self.mainDepartmentArray objectAtIndex:indexPath.row];
        self.idStringDept=[self.deptIDList objectAtIndex: indexPath.row];
        [self.mainCategoryArray removeAllObjects];
        [self.categoryIDList removeAllObjects];
        if ([flagString isEqualToString:@"o"]) {
            for (int i=0; i<[[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,self.idString]]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.departmentLabel.text,[self.deptIDList objectAtIndex:indexPath.row]]]objectForKey:@"category"]count]; i++) {
                [self.mainCategoryArray addObject:[[[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,self.idString]]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.departmentLabel.text,idStringDept]]objectForKey:@"category"]objectAtIndex:i]objectForKey:@"cat_name"]];
                [self.categoryIDList addObject:[[[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,self.idString]]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.departmentLabel.text,idStringDept]]objectForKey:@"category"]objectAtIndex:i]objectForKey:@"id"]];
            }
            
            NSLog(@"%@",self.mainCategoryArray);
            NSLog(@"%@",self.categoryIDList);
            
        }
        else{
            for (int i=0; i<[[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,self.idString]]objectForKey:@"department"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.departmentLabel.text,idStringDept]]objectForKey:@"category"]count]; i++) {
                [self.mainCategoryArray addObject:[[[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,self.idString]]objectForKey:@"department"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.departmentLabel.text,idStringDept]]objectForKey:@"category"]objectAtIndex:i]objectForKey:@"cat_name"]];
                [self.categoryIDList addObject:[[[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.officeLabel.text,self.idString]]objectForKey:@"department"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell.departmentLabel.text,idStringDept]]objectForKey:@"category"]objectAtIndex:i]objectForKey:@"id"]];
                
                
                
            }
            NSLog(@"%@",self.mainCategoryArray);
            NSLog(@"%@",self.categoryIDList);
            
            
        }
        [self.categoryTC reloadData];
        
       // [self.myconnection getHolidaypageCategory:idStringDept];
        [self.departmentArray replaceObjectAtIndex:inPath.row withObject:cell.departmentLabel.text];
        self.departmentTC.hidden=true;
        cell.catButton.backgroundColor=[UIColor clearColor];
        cell.catButton.userInteractionEnabled=YES;

    }
    else
    {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:inPath];

        if ([self.selectedArray containsObject:[self.mainCategoryArray objectAtIndex:indexPath.row]]) {
            [self.selectedArray removeObject:[self.mainCategoryArray objectAtIndex:indexPath.row]];
            [self.selectedIdArray removeObject:[self.categoryIDList objectAtIndex:indexPath.row]];
            [self.unSelectedArray addObject:[self.mainCategoryArray objectAtIndex:indexPath.row]];
        }
        else
        {
            [self.selectedArray addObject:[self.mainCategoryArray objectAtIndex:indexPath.row]];
            [self.selectedIdArray addObject:[self.categoryIDList objectAtIndex:indexPath.row]];
            //[self.categoryCellTextlabelAray addObject:cell.categoryLabel.text];

        }
        [self.categoryTC reloadData];


    }
}
-(IBAction)categoryDoneButtonAction:(id)sender //Multiple selection category done action
{
    if(self.holidayNameText.text.length>0)
    {

    holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:inPath];
    
    if (self.selectedArray.count == 1) {
        cell.categoryLabel.text=[self.selectedArray objectAtIndex:0];
    }
    else if ((self.selectedArray.count > 1) && (self.selectedArray.count < self.mainCategoryArray.count))
    {
        cell.categoryLabel.text=@"  Multiple";
    }
    else if(self.selectedArray.count == 0)
    {
        cell.categoryLabel.text=@"";
        if (!([self.holidayruleidString isEqualToString:@"0"])) {
              self.deleteFlag=@"1";
        }
        //self.deleteFlag=@"1";
        
    }
    else
    {
        cell.categoryLabel.text=@"  All";
    }
    [self.categoryCellTextlabelAray addObject:cell.categoryLabel.text];
    if(self.categoryArray.count == inPath.row + 1) //Checks whether category  selected for last cell to create new cell
    {
        if (self.selectedArray.count>0) {
            [self.categoryArray replaceObjectAtIndex:inPath.row withObject:cell.categoryLabel.text];
            
            [self.fromDateArray addObject:currentDate];
            [self.toDateArray addObject:currentDate];
            [self.durationArray addObject:@"Full Day"];
            [self.paymentArray addObject:@"Non Paid"];
            [self.officeArray addObject:@""];
            [self.departmentArray addObject:@""];
            [self.categoryArray addObject:@""];
        
            //animated uitableview cell when create a cell after visible portion
            NSArray *visibleItems = [self.holidayMainTC indexPathsForVisibleRows];
            [self.holidayMainTC reloadData];
            NSIndexPath *currentItem = [visibleItems objectAtIndex:0];
            NSIndexPath *nextItem = [NSIndexPath indexPathForItem:self.fromDateArray.count - 1 inSection:currentItem.section];
            [self.holidayMainTC scrollToRowAtIndexPath:nextItem atScrollPosition:UITableViewScrollPositionBottom animated:YES];
        }
        
    }
    else
    {
        [self.categoryArray replaceObjectAtIndex:inPath.row withObject:cell.categoryLabel.text];
        [self.holidayMainTC reloadData];
    }
 //   [self.categoryIdDict setObject:[self.selectedIdArray copy] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
    [self.existingCategoryDict setObject:[self.mainCategoryArray copy] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
    [self.existingCategoryIdDict setObject:[self.categoryIDList copy] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
    
    if (([flagString isEqualToString:@"o"])&& ([[self.selectedCategoryDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]count]==0)) {
      
        [self.existingWorkingPremiseIdDict setObject:[NSString stringWithFormat:@"o###%@" ,self.idString] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
        [self.existingDepartmentIdDict setObject:self.idStringDept forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
        [self.flagTileIdDict setObject:self.flagString forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];

    }
    else{
        if ( ([[self.selectedCategoryDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]count]==0)) {
            
        
        [self.existingWorkingPremiseIdDict setObject:[NSString stringWithFormat:@"s###%@" ,self.idString] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
        [self.existingDepartmentIdDict setObject:self.idStringDept forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
        [self.flagTileIdDict setObject:self.flagString forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];

        }
    }

    self.workingIdString=[[[self.existingWorkingPremiseIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]componentsSeparatedByString:@"###" ]objectAtIndex:1];
    self.PassingString= [self.selectedArray componentsJoinedByString:@"###"];

    [self.mainCatgoryDict setObject:[self.PassingString copy] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];

//.........service function call for next section......//
   
    
    if (self.selectedArray.count>0) {
        
    
     //   if (self.selectedIdArray.count>0)
         if (self.selectedIdArray.count>0){
           self.catidString=[NSString stringWithFormat:@"###%@###",[self.selectedIdArray componentsJoinedByString:@"###"]];
        
        }
       if (inPath.row==0 && [self.holidayruleidString isEqualToString:@"0"]) {
             NSMutableDictionary *firstPartDetails=[[NSMutableDictionary alloc]initWithObjectsAndKeys:self.holidayNameText.text,@"holyday_name",self.holidayTypeText.text,@"type",self.holidayOccuranceText.text,@"holyday_occurance",self.descriptionText.text,@"description", nil];
               [self.myconnection SubserviceForCreation:self.idString departmentId:self.idStringDept categoryId:self.catidString officeId:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] flagString:flagString fromString:[self.fromDateArray objectAtIndex:inPath.row] toString:[self.toDateArray objectAtIndex:inPath.row] duration:[self.durationArray objectAtIndex:inPath.row ] payment:[self.paymentArray objectAtIndex:inPath.row] workingPremise:[self.officeArray objectAtIndex:inPath.row] departmentName:[self.departmentArray objectAtIndex:inPath.row] categrystring:self.PassingString firstPartDetails:firstPartDetails catgryText:cell.categoryLabel.text];
        }
        else {
           
            if ([[self.selectedCategoryDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]count]>0) {

                [self.myconnection SecondCategoryDoneServiceFunction:self.workingIdString departmentId:[self.existingDepartmentIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]] categoryId:self.catidString officeId:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] flagString:flagString fromString:[self.fromDateArray objectAtIndex:inPath.row] toString:[self.toDateArray objectAtIndex:inPath.row] duration:[self.durationArray objectAtIndex:inPath.row ] payment:[self.paymentArray objectAtIndex:inPath.row] workingPremise:[self.officeArray objectAtIndex:inPath.row] departmentName:[self.departmentArray objectAtIndex:inPath.row] categrystring:self.PassingString
                                                          catgryText:cell.categoryLabel.text ruleId:self.holidayruleidString CatgryTileId:[self.TableEachTileIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]];
               
            }
            else
            {
            [self.myconnection SecondCategoryDoneServiceFunction:self.idString departmentId:self.idStringDept categoryId:self.catidString officeId:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] flagString:flagString fromString:[self.fromDateArray objectAtIndex:inPath.row] toString:[self.toDateArray objectAtIndex:inPath.row] duration:[self.durationArray objectAtIndex:inPath.row ] payment:[self.paymentArray objectAtIndex:inPath.row] workingPremise:[self.officeArray objectAtIndex:inPath.row] departmentName:[self.departmentArray objectAtIndex:inPath.row] categrystring:self.PassingString
                                                     catgryText:cell.categoryLabel.text ruleId:self.holidayruleidString CatgryTileId:@"0"];
            }
        }
        
    }
 

    
        if ([self.deleteFlag isEqualToString:@"1"]&&(![self.holidayruleidString isEqualToString:@"0"])&&([[self.selectedCategoryDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]count]>0)) {
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@" Warning..."
                                           message:[NSString stringWithFormat:@"Are You sure Want to delete The Tile "]
                                           preferredStyle:UIAlertControllerStyleAlert];
                 self.cancelString=@"1";
                
                UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * action){
                                                               //Do Some action here
                                                               [self.myconnection SecondCategoryDoneServiceFunction:self.workingIdString departmentId:[self.existingDepartmentIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]] categoryId:Nil officeId:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] flagString:flagString fromString:[self.fromDateArray objectAtIndex:inPath.row] toString:[self.toDateArray objectAtIndex:inPath.row] duration:[self.durationArray objectAtIndex:inPath.row ] payment:[self.paymentArray objectAtIndex:inPath.row] workingPremise:[self.officeArray objectAtIndex:inPath.row] departmentName:[self.departmentArray objectAtIndex:inPath.row] categrystring:self.PassingString
                                                                                                         catgryText:cell.categoryLabel.text ruleId:self.holidayruleidString CatgryTileId:[self.TableEachTileIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]];
                                                               self.cancelString=@"0";
                                                                self.cancelActionFlag=@"0";
                                                           }];
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   //[self.settingscontainstableview setEditing:false animated:YES];
                                                                 //   [self.selectedCategoryDict setObject:[self.selectedArray copy] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
                                                                    self.cancelString=@"0";
                                                                   self.cancelActionFlag=@"1";
                                                                   self.deleteFlag=@"0";
                                                               }];
                [alert addAction:cancel];

                [alert addAction:ok];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                
                
            }
    
    if ([self.cancelString isEqualToString:@"0"]&&(self.selectedArray.count>0)) {
        [self.selectedCategoryDict setObject:[self.selectedArray copy] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
        [self.categoryIdDict setObject:[self.selectedIdArray copy] forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];

        

    }
}
    else{
        self.mandString=@"1";
        [self showAlert:@"Must Enter holiday rule Name"];
    }

    self.resetFlag=@"0";
    [self.selectedArray removeAllObjects];
    [self.selectedIdArray removeAllObjects];

    [self.categoryTC reloadData];
    
    self.categoryView.hidden=true;
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField==self.holidayTypeText) {
        self.holidayTypeTC.hidden=false;
        return  NO;
    }
    else if(textField==self.holidayOccuranceText)
    {
        self.holidayOccuranceTC.hidden=false;
        return  NO;
    }
    else
    {
        return  YES;
    }
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField==self.holidayNameText) {
        if ([string isEqualToString:@""]) {
            return YES;
        }
        if (textField.text.length<=49) {
            NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "];
            unichar c = [string characterAtIndex:0];
            if ([myCharSet characterIsMember:c])
            {
                return YES;
            }
            else{
                return NO;
            }
            return YES;
        }
        else
        {
            return  NO;
        }
        
    }
    else if (textField==self.descriptionText)
    {
        if ([string isEqualToString:@""]) {
            return YES;
        }
        if (textField.text.length<=94) {
            NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "];
            unichar c = [string characterAtIndex:0];
            if ([myCharSet characterIsMember:c])
            {
                return YES;
            }
            else{
                return NO;
            }
            return YES;
        }
        else
        {
            return  NO;
        }

    }
    else
    {
        return YES;
    }
}
-(IBAction)fromDateBeginEdit:(id)sender //Got action user selects from date through custom cells first responder
{
    holidayTableViewCell *cell1 = (holidayTableViewCell *)[[sender superview] superview];
    [cell1.fromDateLabel resignFirstResponder];
    [cell1.fromDateLabel canResignFirstResponder];
    cell1.toDateLabel.text=@"";
    inPath=[self.holidayMainTC indexPathForCell:cell1];
    if (inPath.row==0) {
        self.datePickerView.frame=CGRectMake(0, 325, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
    }
    else if (inPath.row==1)
    {
        self.datePickerView.frame=CGRectMake(0, 360, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
    }
    else
    {
        self.datePickerView.frame=CGRectMake(0, 390, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
    }
    self.dateFlag=1;
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *currentDate1 = [NSDate date];
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:0];//Max Upto current Year
    NSDate *minDate = [calendar dateByAddingComponents:comps toDate:currentDate1 options:0];
    
    [self.datePicker setMinimumDate:minDate];
    [self.datePicker setDate:[NSDate date]];
    self.datePickerView.hidden=false;
    self.durationTC.hidden=true;
    self.paymentTC.hidden=true;
    self.officeTC.hidden=true;
    self.departmentTC.hidden=true;
    self.categoryView.hidden=true;
    
}
-(IBAction)toDateBeginEdit:(id)sender //Got action user selects from to through custom cells first responder
{
    holidayTableViewCell *cell1 = (holidayTableViewCell *)[[sender superview] superview];
    [cell1.toDateLabel resignFirstResponder];
    inPath=[self.holidayMainTC indexPathForCell:cell1];
    if (inPath.row==0) {
        self.datePickerView.frame=CGRectMake(0, 325, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
    }
    else if (inPath.row==1)
    {
        self.datePickerView.frame=CGRectMake(0, 360, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
    }
    else
    {
        self.datePickerView.frame=CGRectMake(0, 390, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
    }

    
    dateFlag=2;
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateFormatter* formatter1 = [[NSDateFormatter alloc] init];
    [formatter1 setDateFormat:@"d-MM-yyyy"];
    NSDate *currentDate1 =[formatter1 dateFromString:cell1.fromDateLabel.text];
    
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:0];//Max Upto current Year
    NSDate *minDate = [calendar dateByAddingComponents:comps toDate:currentDate1 options:0];
    
    [self.datePicker setMinimumDate:minDate];
    
    self.datePickerView.hidden=false;
    self.durationTC.hidden=true;
    self.paymentTC.hidden=true;
    self.officeTC.hidden=true;
    self.departmentTC.hidden=true;
    self.categoryView.hidden=true;
}
-(IBAction)durationBeginEdit:(id)sender //Got action user selects duration through custom cells first responder
{
    holidayTableViewCell *cell1 = (holidayTableViewCell *)[[sender superview] superview];
    [cell1.durationLabel resignFirstResponder];
    [cell1.durationLabel endEditing:YES];
    inPath=[self.holidayMainTC indexPathForCell:cell1];
    
    if (inPath.row==0) {
        self.durationTC.frame=CGRectMake(self.durationTC.frame.origin.x, 325, self.durationTC.frame.size.width, self.durationTC.frame.size.height);
    }
    else if (inPath.row==1)
    {
        self.durationTC.frame=CGRectMake(self.durationTC.frame.origin.x, 360, self.durationTC.frame.size.width, self.durationTC.frame.size.height);
    }
    else if (inPath.row==2)
    {
        self.durationTC.frame=CGRectMake(self.durationTC.frame.origin.x, 395, self.durationTC.frame.size.width, self.durationTC.frame.size.height);
    }
    else if(inPath.row==3)
    {
        self.durationTC.frame=CGRectMake(self.durationTC.frame.origin.x, 430, self.durationTC.frame.size.width, self.durationTC.frame.size.height);
    }
    else
    {
        self.durationTC.frame=CGRectMake(self.durationTC.frame.origin.x, 465, self.durationTC.frame.size.width, self.durationTC.frame.size.height);
    }
    
    
    //cell1.durationText.allowsEditingTextAttributes=NO;
    self.durationTC.hidden=false;
    
    self.datePickerView.hidden=true;
    self.paymentTC.hidden=true;
    self.officeTC.hidden=true;
    self.departmentTC.hidden=true;
    self.categoryView.hidden=true;
    CGPoint buttonPosition1 = [cell1.durationLabel convertPoint:CGPointZero toView:self];
    
    self.durationTC.frame=CGRectMake(buttonPosition1.x-15, buttonPosition1.y+25, self.durationTC.frame.size.width
                                   , self.durationTC.frame.size.width);

}
-(IBAction)paymentBeginEdit:(id)sender //Got action user selects payment through custom cells first responder
{
    holidayTableViewCell *cell1 = (holidayTableViewCell *)[[sender superview] superview];
    inPath=[self.holidayMainTC indexPathForCell:cell1];
    
    if (inPath.row==0) {
        self.paymentTC.frame=CGRectMake(self.paymentTC.frame.origin.x, 325, self.paymentTC.frame.size.width, self.paymentTC.frame.size.height);
    }
    else if (inPath.row==1)
    {
        self.paymentTC.frame=CGRectMake(self.paymentTC.frame.origin.x, 360, self.paymentTC.frame.size.width, self.paymentTC.frame.size.height);
    }
    else if (inPath.row==2)
    {
        self.paymentTC.frame=CGRectMake(self.paymentTC.frame.origin.x, 395, self.paymentTC.frame.size.width, self.paymentTC.frame.size.height);
    }
    else if(inPath.row==3)
    {
        self.paymentTC.frame=CGRectMake(self.paymentTC.frame.origin.x, 430, self.paymentTC.frame.size.width, self.paymentTC.frame.size.height);
    }
    else
    {
        self.paymentTC.frame=CGRectMake(self.paymentTC.frame.origin.x, 465, self.paymentTC.frame.size.width, self.paymentTC.frame.size.height);
    }

    self.paymentTC.hidden=false;
    self.durationTC.hidden=true;
    self.datePickerView.hidden=true;
    self.officeTC.hidden=true;
    self.departmentTC.hidden=true;
    self.categoryView.hidden=true;
    CGPoint buttonPosition1 = [cell1.paymentLabel convertPoint:CGPointZero toView:self];
    
    self.paymentTC.frame=CGRectMake(buttonPosition1.x-15, buttonPosition1.y+25, self.paymentTC.frame.size.width
                                     , self.paymentTC.frame.size.width);
}
-(IBAction)officeBeginEdit:(id)sender //Got action user selects working premise(office) through custom cells first responder
{
 
    holidayTableViewCell *cell1 = (holidayTableViewCell *)[[sender superview] superview];
    self.idFlag=0;
    inPath=[self.holidayMainTC indexPathForCell:cell1];
  //  UITextField *textOffice=(UITextField *)sender;

  
   
    
   // NSIndexPath *inPath = [self.cardDetailsVC indexPathForRowAtPoint:buttonPosition];
    
    
    if (inPath.row==0) {
        self.officeTC.frame=CGRectMake(self.officeTC.frame.origin.x, 325, self.officeTC.frame.size.width, self.officeTC.frame.size.height);
    }
    else if (inPath.row==1)
    {
        self.officeTC.frame=CGRectMake(self.officeTC.frame.origin.x, 360, self.officeTC.frame.size.width, self.officeTC.frame.size.height);
    }
    else if (inPath.row==2)
    {
        self.officeTC.frame=CGRectMake(self.officeTC.frame.origin.x, 395, self.officeTC.frame.size.width, self.officeTC.frame.size.height);
    }
    else if(inPath.row==3)
    {
        self.officeTC.frame=CGRectMake(self.officeTC.frame.origin.x, 430, self.officeTC.frame.size.width, self.officeTC.frame.size.height);
    }
    else
    {
        self.officeTC.frame=CGRectMake(self.officeTC.frame.origin.x, 465, self.officeTC.frame.size.width, self.officeTC.frame.size.height);
    }

    
    
    if (cell1.officeLabel.text.length > 0) {
        cell1.departmentLabel.text=@"";
        cell1.officeLabel.text=@"";
        cell1.deptButton.backgroundColor=[UIColor lightGrayColor];
        cell1.deptButton.userInteractionEnabled=NO;
        cell1.categoryLabel.text=@"";
        cell1.catButton.backgroundColor=[UIColor lightGrayColor];
        cell1.catButton.userInteractionEnabled=NO;
        self.resetFlag=@"1";
       
        }
    
    self.officeTC.hidden=false;
    self.durationTC.hidden=true;
    self.paymentTC.hidden=true;
    self.datePickerView.hidden=true;
    self.departmentTC.hidden=true;
    self.categoryView.hidden=true;
    
      CGPoint buttonPosition1 = [cell1.officeLabel convertPoint:CGPointZero toView:self];
    
     self.officeTC.frame=CGRectMake(buttonPosition1.x-15, buttonPosition1.y+25, self.officeTC.frame.size.width
                                   , self.officeTC.frame.size.width);
    
    
    
    
}
-(IBAction)departmentBeginEdit:(id)sender  //Got action user selects department through custom cells first responder
{
    holidayTableViewCell *cell1 = (holidayTableViewCell *)[[sender superview] superview];
    inPath=[self.holidayMainTC indexPathForCell:cell1];
    


    if(([[[NSUserDefaults standardUserDefaults]objectForKey:@"holidayAction"]isEqualToString:@"update"])&&([[self.selectedCategoryDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]]count]>0))
    {
        [self.mainDepartmentArray removeAllObjects];
        [self.deptIDList removeAllObjects];
        if (inPath.row==0) {
            
            for (int i=0; i<[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:inPath.row]]]allKeys]count]; i++) {
                
                [self.mainDepartmentArray addObject:[[[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:inPath.row]]]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:0]];
                [self.deptIDList addObject:[[[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:inPath.row]]]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:1]];
                
                
                
            }
            NSLog(@"%@",self.mainDepartmentArray);
            NSLog(@"%@",self.deptIDList);
            
            
            flagString=@"o";
        }
        else{
            
            for (int i=0; i<[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:inPath.row]]]objectForKey:@"department"]allKeys]count]; i++) {
                [self.mainDepartmentArray addObject:[[[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:inPath.row]]]objectForKey:@"department"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:0]];
                [self.deptIDList addObject:[[[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,[self.workingPremiseIdArray objectAtIndex:inPath.row]]]objectForKey:@"department"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:1]];
                
                
            }
            
            NSLog(@"%@",self.mainDepartmentArray);
            NSLog(@"%@",self.deptIDList);
            
            flagString=@"s";
            
            
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self.departmentTC reloadData];
            
        });

    }

          if (inPath.row==0) {
        self.departmentTC.frame=CGRectMake(self.departmentTC.frame.origin.x, 325, self.departmentTC.frame.size.width, self.departmentTC.frame.size.height);
    }
    else if (inPath.row==1)
    {
        self.departmentTC.frame=CGRectMake(self.departmentTC.frame.origin.x, 360, self.departmentTC.frame.size.width, self.departmentTC.frame.size.height);
    }
    else if (inPath.row==2)
    {
        self.departmentTC.frame=CGRectMake(self.departmentTC.frame.origin.x, 395, self.departmentTC.frame.size.width, self.departmentTC.frame.size.height);
    }
    else if(inPath.row==3)
    {
        self.departmentTC.frame=CGRectMake(self.departmentTC.frame.origin.x, 430, self.departmentTC.frame.size.width, self.departmentTC.frame.size.height);
    }
    else
    {
        self.departmentTC.frame=CGRectMake(self.departmentTC.frame.origin.x, 465, self.departmentTC.frame.size.width, self.departmentTC.frame.size.height);
    }
    
    if (cell1.departmentLabel.text.length > 0) {
        cell1.categoryLabel.text=@"";
        cell1.departmentLabel.text=@"";
        cell1.deptButton.backgroundColor=[UIColor clearColor];
        cell1.catButton.backgroundColor=[UIColor lightGrayColor];
        cell1.catButton.userInteractionEnabled=NO;
        self.resetFlag=@"1";
    }
    
    self.departmentTC.hidden=false;
    self.durationTC.hidden=true;
    self.paymentTC.hidden=true;
    self.officeTC.hidden=true;
    self.datePickerView.hidden=true;
    self.categoryView.hidden=true;
    
    
    CGPoint buttonPosition1 = [cell1.departmentLabel convertPoint:CGPointZero toView:self];
    
    self.departmentTC.frame=CGRectMake(buttonPosition1.x-5, buttonPosition1.y+30, self.departmentTC.frame.size.width
                                   , self.departmentTC.frame.size.width);

}
-(IBAction)categoryBeginEdit:(id)sender ////Got action user selects category through custom cells first responder
{
    holidayTableViewCell *cell1 = (holidayTableViewCell *)[[sender superview] superview];
     inPath=[self.holidayMainTC indexPathForCell:cell1];
    
    [self.selectedArray removeAllObjects];
   
    
    if (inPath.row==0) {
        self.categoryView.frame=CGRectMake(self.categoryView.frame.origin.x, 325, self.categoryView.frame.size.width, self.categoryView.frame.size.height);
    }
    else if (inPath.row==1)
    {
        self.categoryView.frame=CGRectMake(self.categoryView.frame.origin.x, 360, self.categoryView.frame.size.width, self.categoryView.frame.size.height);
    }
    else if (inPath.row==2)
    {
        self.categoryView.frame=CGRectMake(self.categoryView.frame.origin.x, 395, self.categoryView.frame.size.width, self.categoryView.frame.size.height);
    }
    else if(inPath.row==3)
    {
        self.categoryView.frame=CGRectMake(self.categoryView.frame.origin.x, 430, self.categoryView.frame.size.width, self.categoryView.frame.size.height);
    }
    else
    {
        self.categoryView.frame=CGRectMake(self.categoryView.frame.origin.x, 444, self.categoryView.frame.size.width, self.categoryView.frame.size.height);
    }
    NSMutableArray *array=[self.selectedCategoryDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]];
    NSMutableArray *aray2=[self.categoryIdDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]];
    if ([array containsObject:@""]) {
        [array removeObject:@""];
    }
    if (array.count > 0) {
        self.flagString=[self.flagTileIdDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]];
        [self.selectedArray addObjectsFromArray:array];
        [self.selectedIdArray addObjectsFromArray:aray2];
        [self.mainCategoryArray removeAllObjects];
        [self.categoryIDList removeAllObjects];
    }
 //   NSMutableArray *array1=[self.existingCategoryDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]];
    NSMutableArray *array1=[[NSMutableArray alloc]init];
    
    NSString *testingString=[[[self.existingWorkingPremiseIdDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]]componentsSeparatedByString:@"###"]objectAtIndex:0];
    NSString *workingString=[[[self.existingWorkingPremiseIdDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]]componentsSeparatedByString:@"###"]objectAtIndex:1];
    if ([testingString isEqualToString:@"o"]) {
            array1=[[[[self.responseDict objectForKey:@"office"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,workingString]]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.departmentLabel.text,[self.existingDepartmentIdDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]]]]objectForKey:@"category"];
           }
    else{
        array1=[[[[[self.responseDict objectForKey:@"store"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.officeLabel.text,workingString]]objectForKey:@"department"]objectForKey:[NSString stringWithFormat:@"%@###%@",cell1.departmentLabel.text,[self.existingDepartmentIdDict objectForKey:[NSString stringWithFormat:@"%ld",(long)inPath.row]]]]objectForKey:@"category"];
           }
    [self.mainCategoryArray addObjectsFromArray:self.selectedArray];
    [self.categoryIDList addObjectsFromArray:self.selectedIdArray];

    if ([array1 containsObject:@""]) {
        [array1 removeObject:@""];
    }
    if ((array1.count > 0)&&([self.cancelString isEqualToString:@"0"])) {
        [self.mainCategoryArray removeAllObjects];
        [self.categoryIDList removeAllObjects];
        [self.mainCategoryArray addObjectsFromArray:self.selectedArray];
        [self.categoryIDList addObjectsFromArray:self.selectedIdArray];
       // [self.selectedIdArray removeAllObjects];
        

                for (int i=0; i<array1.count; i++) {
            NSMutableDictionary *dict=[array1 objectAtIndex:i];
            [self.mainCategoryArray addObject:[dict objectForKey:@"cat_name"]];
            [self.categoryIDList addObject:[dict objectForKey:@"id"]];

            
        }
        
     }
    if ([self.resetFlag isEqualToString:@"1"]) {
        [self.selectedArray removeAllObjects];
         [self.selectedIdArray removeAllObjects];
    }
    if ([self.cancelActionFlag isEqualToString:@"1"]) {
        [self.selectedArray removeAllObjects];
         [self.selectedIdArray removeAllObjects];
    }
    
    if (!(self.mainCategoryArray.count>0)) {
        self.categoryView.hidden=false;
    }
    else{
    [self.categoryTC reloadData];
    self.categoryView.hidden=false;
    self.durationTC.hidden=true;
    self.paymentTC.hidden=true;
    self.officeTC.hidden=true;
    self.departmentTC.hidden=true;
    self.datePickerView.hidden=true;
    }
    CGPoint buttonPosition1 = [cell1.categoryLabel convertPoint:CGPointZero toView:self];
    
    self.categoryView.frame=CGRectMake(buttonPosition1.x-5, buttonPosition1.y+25, self.categoryView.frame.size.width
                                       , self.categoryView.frame.size.width);
    

}
-(IBAction)doneTimerAction:(id)sender //Date picker done button action
{
    NSDate *myDate = self.datePicker.date;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"d-MM-yyyy"];
    NSString *prettyVersion = [dateFormat stringFromDate:myDate];
    if (dateFlag==1) {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:self.inPath];
        [self.fromDateArray replaceObjectAtIndex:inPath.row withObject:prettyVersion];

        cell.fromDateLabel.text=prettyVersion;
        cell.toDateLabel.text=prettyVersion;
    }
    else
    {
        holidayTableViewCell *cell=(holidayTableViewCell *)[self.holidayMainTC cellForRowAtIndexPath:self.inPath];
        cell.toDateLabel.text=prettyVersion;
        [self.toDateArray replaceObjectAtIndex:inPath.row withObject:prettyVersion];
    }

    self.datePickerView.hidden=true;
}

- (void) keyboardDidShow:(NSNotification *)notification
{
    NSDictionary* info = [notification userInfo];
    CGRect kbRect = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    kbRect = [self convertRect:kbRect fromView:nil];
    
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbRect.size.height, 0.0);
    self.scrollView.contentInset = contentInsets;
    self.scrollView.scrollIndicatorInsets = contentInsets;
    
    CGRect aRect = self.frame;
    aRect.size.height -= kbRect.size.height;
    
    if (!CGRectContainsPoint(aRect, self.activeField.frame.origin)) {
        
        [self.scrollView scrollRectToVisible:self.activeField.frame animated:YES];
        
    }
    
}



- (void) keyboardWillBeHidden:(NSNotification *)notification
{
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    self.scrollView.contentInset = contentInsets;
    self.scrollView.scrollIndicatorInsets = contentInsets;
}


-(IBAction)doneButtonAction:(id)sender // Save Action
{
    self.doneString=@"1";
    NSMutableDictionary *firstPartDetails=[[NSMutableDictionary alloc]initWithObjectsAndKeys:self.holidayNameText.text,@"holyday_name",self.holidayTypeText.text,@"type",self.holidayOccuranceText.text,@"holyday_occurance",self.descriptionText.text,@"description", nil];
     NSLog(@"%@",firstPartDetails);
   if(self.holidayNameText.text.length>0) {
        
    
    [self.myconnection createMainDoneHolidayService:firstPartDetails othrDetails:self.serviceArray officeid:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] ruleid:self.holidayruleidString];
    }
    else{
        self.mandString=@"1";
        [self showAlert:@"Must Enter holiday rule Name"];
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"close" object:Nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"enabletable" object:Nil];
  //  [self removeFromSuperview];
}
-(IBAction)cancelButtonAction:(id)sender // cancel Action
{
     if (!([self.holidayruleidString isEqualToString:@"0"])&&(!([[[NSUserDefaults standardUserDefaults]objectForKey:@"holidayAction"]isEqualToString:@"update"]))){
        [self showAlert:@"Do You Want to Delete The rule "];

    }
    
    else{

    [[NSNotificationCenter defaultCenter] postNotificationName:@"close" object:Nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"enabletable" object:Nil];
    [self removeFromSuperview];
    }
}

// .........Service Response..........//

-(void)serviceGotResponse : (id)responseData
{
    
    if ([responseData count]>0) {
        
        
       attendancesettingsviewclass *ob1 = (attendancesettingsviewclass *)self.superview.superview;
        
       [ob1 serviceGotResponse:responseData];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self removeFromSuperview];

        });
        
        
    }
    else
    {
        
        [self showalerviewcontroller:@"Connection Failed"];
    }

    
    
    
}
-(void)holidayWorkingPremiseGotResponse:(id)responseData
{
    self.responseDict=responseData;
    [self.mainOfficeArray removeAllObjects];
    [self.workingPremiseIdArray removeAllObjects];
    NSString *flagstring=@"0";
    if ([[responseData allKeys]containsObject:@"office"]) {
        
    flagstring=@"1";

    [self.mainOfficeArray insertObject:[[[[[responseData objectForKey:@"office"]allKeys]objectAtIndex:0]componentsSeparatedByString:@"###"]objectAtIndex:0]atIndex:0];
    [self.workingPremiseIdArray insertObject:[[[[[responseData objectForKey:@"office"]allKeys]objectAtIndex:0]componentsSeparatedByString:@"###"]objectAtIndex:1]atIndex:0];
    }
    
    
    for (int i=0; i<[[responseData objectForKey:@"store"] count]; i++) {
        if ([flagstring isEqualToString:@"1"]) {
            
        
        [self.mainOfficeArray insertObject:[[[[[responseData objectForKey:@"store"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:0] atIndex:i+1];
        
        [self.workingPremiseIdArray insertObject:[[[[[responseData objectForKey:@"store"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:1] atIndex:i+1];
        }
        else
        {
            [self.mainOfficeArray insertObject:[[[[[responseData objectForKey:@"store"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:0] atIndex:i];
            
            [self.workingPremiseIdArray insertObject:[[[[[responseData objectForKey:@"store"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:1] atIndex:i];

        }
        
   }
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [self.officeTC reloadData];
        
    });

}

-(void)individualDisplayResponse:(id)responseData
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.idFlag=1;
    self.holidayNameText.text=[[[[responseData objectForKey:@"selected"]objectForKey:@"holiday_details"]objectAtIndex:0]objectForKey:@"holyday_name"];
    self.holidayTypeText.text=[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_details"]objectAtIndex:0]objectForKey:@"type"];
    self.holidayOccuranceText.text=[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_details"]objectAtIndex:0]objectForKey:@"holyday_occurance"];
    self.descriptionText.text=[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_details"]objectAtIndex:0]objectForKey:@"description"];
    self.holidayruleidString=[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_details"]objectAtIndex:0]objectForKey:@"holi_id"];
    self.officeIdString=[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_details"]objectAtIndex:0]objectForKey:@"o_id"];
    [self.selectedArray removeAllObjects];
        for (int i=0; i<[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]count]; i++) {
        [self.fromDateArray insertObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_from"] atIndex:i];
        [self.toDateArray insertObject:[[[[responseData  objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_to"] atIndex:i];
        [self.durationArray insertObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_duration"] atIndex:i];
        [self.paymentArray insertObject:[[[[responseData  objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_payment"] atIndex:i];
        [self.categoryArray insertObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_categorytext"] atIndex:i];
        [self.departmentArray insertObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"department_name"] atIndex:i];
        [self.officeArray insertObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"working_premise"] atIndex:i];
        [self.selectedCategoryDict setObject:[[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_category_name"]componentsSeparatedByString:@"###" ] forKey:[NSString stringWithFormat:@"%d", i]];
        [self.TableEachTileIdDict setObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"id"] forKey:[NSString stringWithFormat:@"%d", i]];
        [self.flagTileIdDict setObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"type"] forKey:[NSString stringWithFormat:@"%d", i]];

        [self.existingDepartmentIdDict setObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_department"] forKey:[NSString stringWithFormat:@"%d", i]];
        [self.mainCatgoryDict setObject:[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_category_name"] forKey:[NSString stringWithFormat:@"%d", i]];
        [self.existingWorkingPremiseIdDict setObject:[NSString stringWithFormat:@"%@###%@",[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"type"],[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_type_id"]] forKey:[NSString stringWithFormat:@"%d", i]];
        self.workingIdString=[[[self.existingWorkingPremiseIdDict objectForKey:[NSString stringWithFormat:@"%d",i]]componentsSeparatedByString:@"###" ]objectAtIndex:1];
        [self.categoryIdDict setObject:[[[[[responseData objectForKey:@"selected"] objectForKey:@"holiday_otherdetails"]objectAtIndex:i]objectForKey:@"holi_category"]componentsSeparatedByString:@"###" ] forKey:[NSString stringWithFormat:@"%d", i]];

        }
        
            for (int j=0; j<[self.categoryIdDict count]; j++) {
            [[self.categoryIdDict objectForKey:[NSString stringWithFormat:@"%d", j]] removeObject:@""];
            }
     
        self.responseDict=[responseData objectForKey:@"available"];
        [self.mainOfficeArray removeAllObjects];
        [self.workingPremiseIdArray removeAllObjects];
        [self.mainOfficeArray insertObject:[[[[[self.responseDict objectForKey:@"office"]allKeys]objectAtIndex:0]componentsSeparatedByString:@"###"]objectAtIndex:0]atIndex:0];
        [self.workingPremiseIdArray insertObject:[[[[[self.responseDict objectForKey:@"office"]allKeys]objectAtIndex:0]componentsSeparatedByString:@"###"]objectAtIndex:1]atIndex:0];
        if ([self.responseDict objectForKey:@"store"]!=(id)[NSNull null])
        {
            for (int i=0; i<[[self.responseDict objectForKey:@"store"] count]; i++) {
            
                [self.mainOfficeArray insertObject:[[[[[self.responseDict objectForKey:@"store"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:0] atIndex:i+1];
                [self.workingPremiseIdArray insertObject:[[[[[self.responseDict objectForKey:@"store"]allKeys]objectAtIndex:i]componentsSeparatedByString:@"###"]objectAtIndex:1] atIndex:i+1];
            
        }
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self.officeTC reloadData];
            
        });
        
       [self.holidayMainTC reloadData];
      });
}

//...........First row Saving Response ,Getting RuleId Eachtime and Call function for displaying availbale working Premise Departments And Categoeies...............//

-(void)firstsavingResponsegetRuleIdResponse:(NSString *)holidayruleid
{
    self.cancelActionFlag=@"0";
    self.holidayruleidString=[[holidayruleid componentsSeparatedByString:@"###"]objectAtIndex:1];
    self.holidayTileIdString=[[holidayruleid componentsSeparatedByString:@"###"]objectAtIndex:0];
    if ([[holidayruleid componentsSeparatedByString:@"###"]count]>2) {
        self.deleteFlag=[[holidayruleid componentsSeparatedByString:@"###"]objectAtIndex:2];
    }
    [self.TableEachTileIdDict setObject:self.holidayTileIdString forKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
    if ([self.deleteFlag isEqualToString:@"deleted"]) {
        [self deleteTile:self.deleteFlag];
    }
    
[self.myconnection seconddisplayServiceForDeptcatfryOffice:self.holidayruleidString officeid:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
   
    
}
-(void)showAlert:(NSString *)alertMessage
{
    UIAlertController *alert= [UIAlertController
                               alertControllerWithTitle:@" Warning..."
                               message:[NSString stringWithFormat:@"%@",alertMessage]
                               preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction * action){
                                                   //Do Some action here
                                                   if ([self.mandString isEqualToString:@"0"]) {
                                                    [self.myconnection deleteHoliday:self.holidayruleidString];
                                                    [self removeFromSuperview];
                                                   }
                                                   else{
                                                       
                                                   }
                                                   
                                               }];
    

    [alert addAction:ok];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
    });
   
}
-(void)deleteTile:(NSString *)alertFlag
{
   
    [self.fromDateArray removeObjectAtIndex:inPath.row];
    [self.toDateArray removeObjectAtIndex:inPath.row];
    [self.paymentArray removeObjectAtIndex:inPath.row];
    [self.durationArray removeObjectAtIndex:inPath.row];
    [self.departmentArray removeObjectAtIndex:inPath.row];
    [self.categoryArray removeObjectAtIndex:inPath.row];
    [self.officeArray removeObjectAtIndex:inPath.row];
    [self.selectedCategoryDict removeObjectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
    [self.existingDepartmentIdDict removeObjectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
    [self.categoryIdDict removeObjectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
    [self.TableEachTileIdDict removeObjectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];

    NSMutableDictionary *dict=[[[NSMutableDictionary alloc] initWithDictionary:self.selectedCategoryDict] mutableCopy];
    NSMutableArray *keyaray=[[dict allKeys]mutableCopy];
    NSMutableDictionary *dictDept=[[[NSMutableDictionary alloc] initWithDictionary:self.existingDepartmentIdDict] mutableCopy];
    NSMutableArray *keyarayDept=[[dict allKeys]mutableCopy];
    NSMutableDictionary *dictCatgry=[[[NSMutableDictionary alloc] initWithDictionary:self.categoryIdDict] mutableCopy];
    NSMutableArray *keyarayCat=[[dict allKeys]mutableCopy];
    NSMutableDictionary *dictTableId=[[[NSMutableDictionary alloc] initWithDictionary:self.TableEachTileIdDict] mutableCopy];
    NSMutableArray *keyarayTbId=[[dict allKeys]mutableCopy];
    [self.selectedCategoryDict removeAllObjects];
    [self.existingDepartmentIdDict removeAllObjects];
    [self.categoryIdDict removeAllObjects];
    [self.TableEachTileIdDict removeAllObjects];
        NSArray * AscendingArray = [keyaray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            if ([obj1 integerValue] > [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if ([obj1 integerValue] < [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            return (NSComparisonResult)NSOrderedSame;
        }];
        NSArray * AscendingArray1 = [keyarayDept sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            if ([obj1 integerValue] > [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if ([obj1 integerValue] < [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            return (NSComparisonResult)NSOrderedSame;
        }];
        NSArray * AscendingArray2 = [keyarayCat sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            if ([obj1 integerValue] > [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if ([obj1 integerValue] < [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            return (NSComparisonResult)NSOrderedSame;
        }];
        
        NSArray * AscendingArray3 = [keyarayTbId sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            if ([obj1 integerValue] > [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if ([obj1 integerValue] < [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            return (NSComparisonResult)NSOrderedSame;
        }];
        
        
        for (int i=0; i<AscendingArray.count; i++) {
            id value=[dict objectForKey:[AscendingArray objectAtIndex:i]];

            [self.selectedCategoryDict setObject:value forKey:[NSString stringWithFormat:@"%d",i]];
            
        }
        for (int i=0; i<AscendingArray1.count; i++) {
            id value=[dictDept objectForKey:[AscendingArray1 objectAtIndex:i]];
            
            [self.existingDepartmentIdDict setObject:value forKey:[NSString stringWithFormat:@"%d",i]];
                  }
        for (int i=0; i<AscendingArray2.count; i++) {
            
            
            
            id value=[dictCatgry objectForKey:[AscendingArray2 objectAtIndex:i]];
            
            [self.categoryIdDict setObject:value forKey:[NSString stringWithFormat:@"%d",i]];
            
            
            
        }
        for (int i=0; i<AscendingArray3.count; i++) {
            
            
            
            id value=[dictTableId objectForKey:[AscendingArray3 objectAtIndex:i]];
            
            [self.TableEachTileIdDict setObject:value forKey:[NSString stringWithFormat:@"%d",i]];
            
            
            
        }
            NSLog(@"%@",self.selectedCategoryDict);
            NSLog(@"%@",self.existingDepartmentIdDict);
            NSLog(@"%@",self.categoryIdDict);
            NSLog(@"%@",self.TableEachTileIdDict);
            
        dispatch_async(dispatch_get_main_queue(), ^{
        [self.holidayMainTC reloadData];
 
    });
    

}

-(void)showalerviewcontroller:(NSString *)errorMessage
{
    UIAlertController *alert= [UIAlertController
                               alertControllerWithTitle:@"Error"
                               message:[NSString stringWithFormat:@"%@",errorMessage]
                               preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction * action){
                                                 //  [app hudStop];
                                                   if ([self.doneString isEqualToString:@"0"]) {
                                                       
                                                   
                                                   [self.fromDateArray removeObjectAtIndex:inPath.row];
                                                   [self.toDateArray removeObjectAtIndex:inPath.row];
                                                   [self.paymentArray removeObjectAtIndex:inPath.row];
                                                   [self.durationArray removeObjectAtIndex:inPath.row];
                                                   [self.departmentArray removeObjectAtIndex:inPath.row];
                                                   [self.categoryArray removeObjectAtIndex:inPath.row];
                                                   [self.officeArray removeObjectAtIndex:inPath.row];
                                                   [self.selectedCategoryDict removeObjectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
                                                   [self.existingDepartmentIdDict removeObjectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];
                                                   [self.categoryIdDict removeObjectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]];

                                                   dispatch_async(dispatch_get_main_queue(), ^{
                                                       [self.holidayMainTC reloadData];
                                                       
                                                   });
                                                   }

                                               }];
    [alert addAction:ok];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
    });
}
-(IBAction)deleteTilePressing:(id)sender{
    holidayTableViewCell *cell = (holidayTableViewCell *)[[sender superview] superview];
    inPath=[self.holidayMainTC indexPathForCell:cell];
    //if (!([self.holidayruleidString isEqualToString:@"0"])) {
     if ([[self.selectedCategoryDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]count]>0)
     {
        
        UIAlertController *alert= [UIAlertController
                                   alertControllerWithTitle:@" Warning..."
                                   message:[NSString stringWithFormat:@"Are You Sure Want to delete The Tile "]
                                   preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action){
                                                       //Do Some action here
                                                       [self.myconnection SecondCategoryDoneServiceFunction:[[[self.existingWorkingPremiseIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]componentsSeparatedByString:@"###" ]objectAtIndex:1] departmentId:[self.existingDepartmentIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]] categoryId:Nil officeId:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] flagString:flagString fromString:[self.fromDateArray objectAtIndex:inPath.row] toString:[self.toDateArray objectAtIndex:inPath.row] duration:[self.durationArray objectAtIndex:inPath.row ] payment:[self.paymentArray objectAtIndex:inPath.row] workingPremise:[self.officeArray objectAtIndex:inPath.row] departmentName:[self.departmentArray objectAtIndex:inPath.row] categrystring:[self.mainCatgoryDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]
                                                                                                 catgryText:cell.categoryLabel.text ruleId:self.holidayruleidString CatgryTileId:[self.TableEachTileIdDict objectForKey:[NSString stringWithFormat:@"%ld", (long)inPath.row]]];
                                                       self.cancelString=@"0";
                                                       self.cancelActionFlag=@"0";
                                                       
                                                   }];
        
        UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * action){
                                                           //[self.settingscontainstableview setEditing:false animated:YES];
                                                       }];
        [alert addAction:cancel];
        [alert addAction:ok];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
        });
        

       

    }
}




@end
