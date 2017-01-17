//
//  weeksetting.m
//  bablusdemokpproject
//
//  Created by leonine on 17/08/15.
//  Copyright (c) 2015 Emvigo. All rights reserved.
//

#import "weeksetting.h"
#import "groupcollceioncellclass.h"
#import "settingsViewController.h"
#import "attendancesettingsviewclass.h"

@implementation weeksetting

@synthesize k1,k2,indexpath,c,partialDayFlag,myflag,app,f,myserviceflag1,ServiceStr;
-(void)awakeFromNib
{
    
//    NSString *str=@"jhgjuiju jbhjbnj jnjknj jinini knkjnjmjk";
//    
//    NSArray *array=[str componentsSeparatedByString:@" "];
    
    myserviceflag1=0;

    self.checkdict = [[NSMutableDictionary alloc] init];
     objTime=[[timeConditionsClass alloc]init];
  
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"retry"];
    self.myconnection=[[connectionclass alloc] init];
    self.myconnection.mydelegate=self;
    ServiceStr=[[NSUserDefaults standardUserDefaults]objectForKey:@"weekAction" ];
    if ([ServiceStr isEqualToString:@"update"]) {
        [self.myconnection viewIndivdualOfficeWeekRule:[[NSUserDefaults standardUserDefaults]objectForKey:@"weekRuleId"] officeid:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
        
           }

    
    
    app=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    
    if ([[[NSUserDefaults standardUserDefaults]objectForKey:@"weekAction"]isEqualToString:@"create"]) {
        
         
        [app hudStop];
        
    }
    else
    {
      
       // [self.myconnection weekRuleupdationview:[[NSUserDefaults standardUserDefaults] objectForKey:@"weekruleid"]];
        
     //   [self.myconnection weekRuleupdationviewsecond:[[NSUserDefaults standardUserDefaults] objectForKey:@"weekruleid"]];
        
    }
    
    
    c=0;
    self.partialDayFlag=0;
    self.mandatoryLabel1.hidden=true;
    self.mandatoryLabel2.hidden=true;
    [self.mycollectionview registerNib:[UINib nibWithNibName:@"Groupcollectioncell" bundle:nil] forCellWithReuseIdentifier:@"simplecell"];
    //self.mycollectionview.hidden=TRUE;
    self.grouparray=[[NSMutableArray alloc] init];
    self.weekStartsArray=[[NSMutableArray alloc]initWithObjects:@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday", nil];
    
    self.breakTypeArray=[[NSMutableArray alloc]initWithObjects:@"Fixed Break",@"Duration Based", nil];
    self.BreakTypeTC.hidden=true;
    self.BreakTypeText.userInteractionEnabled=NO;
    self.datePickerView3.hidden=TRUE;
    
    self.x=0;
    self.y=0;
    self.datePickerView.hidden=TRUE;
    
    //[[UITableView appearanceWhenContainedIn:[UIDatePicker class], nil] setBackgroundColor:nil];
    [[UITableView appearanceWhenContainedInInstancesOfClasses:@[[UIDatePicker class]]]setBackgroundColor:nil];
    
    self.dayfirsttable.hidden=TRUE;
    self.daysecondtable.hidden=TRUE;
    self.daythirdtable.hidden=TRUE;
    self.dayfourthtable.hidden=TRUE;

    self.weekDaySelectionTC.hidden=TRUE;
    
    self.dateview1.hidden=TRUE;
    self.dateview2.hidden=TRUE;
    self.dateview3.hidden=TRUE;
    self.dateview4.hidden=TRUE;
    
    self.mydict=[[NSMutableDictionary alloc]init];
    
    
    self.selectedarray1=[[NSMutableArray alloc]init];
    self.selectedarray2=[[NSMutableArray alloc]init];
    self.selectedarray3=[[NSMutableArray alloc]init];
    self.selectedarray4=[[NSMutableArray alloc]init];
    
    self.dictloadarray=[[NSMutableArray alloc]init];
    self.dictloadarray2=[[NSMutableArray alloc]init];
    self.dictloadarray3=[[NSMutableArray alloc]init];
    self.dictloadarray4=[[NSMutableArray alloc]init];
    
    
    self.unselectedarray1=[[NSMutableArray alloc]init];
    self.unselectedarray2=[[NSMutableArray alloc]init];
    self.unselectedarray3=[[NSMutableArray alloc]init];
    self.unselectedarray4=[[NSMutableArray alloc]init];
    

    
    self.daydummy=[[NSMutableArray alloc] initWithObjects:@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday", nil];
    
    self.numberdummy=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    self.numberdummy2=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
     self.numberdummy3=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
     self.numberdummy4=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
     self.newnumberdummy=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    
    self.dayarray1=[[NSMutableArray alloc] initWithObjects:@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday", nil];
    self.dayarray2=[[NSMutableArray alloc] initWithObjects:@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday", nil];
    self.dayarray3=[[NSMutableArray alloc] initWithObjects:@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday", nil];
    self.dayarray4=[[NSMutableArray alloc] initWithObjects:@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday", nil];
    
    self.numberarray1=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    self.numberarray2=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    self.numberarray3=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    self.numberarray4=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    
    
     self.daytext1.userInteractionEnabled=FALSE;
     self.daytext2.userInteractionEnabled=FALSE;
     self.daytext3.userInteractionEnabled=FALSE;
     self.daytext4.userInteractionEnabled=FALSE;
    
     self.nubertext1.userInteractionEnabled=FALSE;
     self.nubertext2.userInteractionEnabled=FALSE;
     self.nubertext3.userInteractionEnabled=FALSE;
     self.nubertext4.userInteractionEnabled=FALSE;
    
    self.breakBeginningTime.userInteractionEnabled=FALSE;
    self.breakEndingTime.userInteractionEnabled=FALSE;
    self.breakDurationText.userInteractionEnabled=FALSE;
    self.durationText.userInteractionEnabled=FALSE;
    self.beginningTime.userInteractionEnabled=FALSE;
    self.endingTime.userInteractionEnabled=FALSE;
    
    [self.durationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.breakDurationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.datePicker3 addTarget:self action:@selector(datePickedValueChanged:)
               forControlEvents:UIControlEventValueChanged];
    
    
    self.offfirstArray=[[NSMutableArray alloc]init];
    
    
    self.offsecondArray=[[NSMutableArray alloc]init];
    
    
    self.offthirdArray=[[NSMutableArray alloc]init];
    
    self.offfourthArray=[[NSMutableArray alloc]init];
    
    
    
    self.offdayfirstString=@"";
    self.offdaysecondString=@"";
    self.offdaythirdString=@"";
    self.offdayfourthString=@"";
    
    self.partialDurationString=@"";
    self.breakdurationString=@"";
    
    self.breaktypestring=@"0";
    myflag=0;
    
    self.myownflag=0;
    
  
    
     self.myselectedarray=[[NSMutableArray alloc]init];
     self.globalusearray=[[NSMutableArray alloc]init];
}

-(void)datePickedValueChanged:(id)sender
{
    
    
        NSString *str=self.durationText.text;
        NSArray *timeValues=[str componentsSeparatedByString:@" "];
        NSString *hourString=[timeValues objectAtIndex:0];
        NSString *minuteString=[timeValues objectAtIndex:2];
        int hour=[hourString intValue];
        int hours=hour*60*60;
        int minute=[minuteString intValue];
        int minute1=minute*60;
        int minutes= minute1-10;
        float totalSeconds=hours+minutes;
    
    
        if (self.datePicker3.countDownDuration > totalSeconds) { //5400 seconds = 1h30min
            [self.datePicker3 setCountDownDuration: totalSeconds]; //Defaults to 1 minute
            
        }
   
    
}



-(IBAction)groupselectionaction:(id)sender
{
    
    
    
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"grouppopupview" owner:self options:nil];
    [self addSubview:[nib objectAtIndex:0]];
    
}




-(IBAction)cancelbuttonaction:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"close" object:Nil];
      [[NSNotificationCenter defaultCenter] postNotificationName:@"enabletable" object:Nil];
    [self removeFromSuperview];
}



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.grouparray count];
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
  {
        static NSString *cellIdentifier = @"simplecell";
        groupcollceioncellclass *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
        cell.grouplabel.text=[self.grouparray objectAtIndex:indexPath.row];
        return cell;
  }



-(void)willRemoveSubview:(UIView *)subview
{
    self.mycollectionview.hidden=FALSE;
    
    NSMutableArray *selectedGropupArray=[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedDesig"];
    [self.grouparray removeAllObjects];
    [self.grouparray addObjectsFromArray:selectedGropupArray];
    [self.mycollectionview reloadData];
    
    
    if (self.grouparray.count>0) {
        
        [self.includedesignationbutton setTitle:@"EditDesignation" forState:UIControlStateNormal];
    }
    else
    {
        [self.includedesignationbutton setTitle:@"IncludeDesignation" forState:UIControlStateNormal];
    }

}




//-(IBAction)removegroupfromcollectionview:(id)sender
//{
//    groupcollceioncellclass *clickedCell = (groupcollceioncellclass *)[[sender superview] superview];
//    indexpath = [self.mycollectionview indexPathForCell:clickedCell];
//    [self.grouparray removeObjectAtIndex:indexpath.row];
//    [self.mycollectionview reloadData];
//}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (tableView==self.dayfirsttable) {
        
        return [self.dayarray1 count];
       
    }
    
    else  if (tableView==self.daysecondtable) {
        
        return [self.dayarray2 count];
    }
    else  if (tableView==self.daythirdtable) {
        
        return [self.dayarray3 count];
    }
    
    else  if (tableView==self.dayfourthtable) {
        
        return [self.dayarray4 count];
    }
    else  if (tableView==self.numberfirsttable) {
        
        return [self.numberarray1 count];
    }
    else  if (tableView==self.numbersecondtable) {
        
        return [self.numberarray2 count];
    }
    else  if (tableView==self.numberthirdtable) {
        
        return [self.numberarray3 count];
    }
    
    else if (tableView==self.weekDaySelectionTC)
    {
        return self.weekStartsArray.count;
    }
    else if (tableView==self.BreakTypeTC)
    {
        return  self.breakTypeArray.count;
    }
    
    else
    {
        return [self.numberarray4 count];
    }

    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView==self.dayfirsttable) {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.dayarray1 objectAtIndex:indexPath.row];
        return cell;
        
    }
    
    else if (tableView==self.daysecondtable) {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.dayarray2 objectAtIndex:indexPath.row];
        return cell;
        
    }
    else if (tableView==self.daythirdtable) {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.dayarray3 objectAtIndex:indexPath.row];
        return cell;
        
    }
    else if (tableView==self.dayfourthtable) {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.dayarray4 objectAtIndex:indexPath.row];
        return cell;
        
    }
    else if (tableView==self.numberfirsttable) {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.numberarray1 objectAtIndex:indexPath.row];
        
        if ([self.selectedarray1 containsObject:indexPath]) {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }else{
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
        return cell;
        
    }
    else if (tableView==self.numbersecondtable) {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.numberarray2 objectAtIndex:indexPath.row];
        
        if ([self.selectedarray2 containsObject:indexPath]) {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }else{
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
        
        return cell;
        
    }
    
    else if (tableView==self.numberthirdtable) {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.numberarray3 objectAtIndex:indexPath.row];
        
        if ([self.selectedarray3 containsObject:indexPath]) {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }else{
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
        
        return cell;
        
    }
    
    else if (tableView==self.weekDaySelectionTC)
    {
        
        UITableViewCell *cell=[[UITableViewCell alloc]init];
        cell.textLabel.text=[self.weekStartsArray objectAtIndex:indexPath.row];
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        return cell;
        
    }
    else if (tableView==self.BreakTypeTC)
    {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.breakTypeArray objectAtIndex:indexPath.row];
        return  cell;
    }
    
    else
    {
        
        UITableViewCell *cell=[[UITableViewCell alloc] init];
        cell.textLabel.font=[UIFont systemFontOfSize:12.0];
        cell.textLabel.text=[self.numberarray4 objectAtIndex:indexPath.row];
        
       // NSIndexPath *selectedIndex = [self.numberarray4 indexOfObject:[]]
        
        if (self.myownflag==0) {
            
            
            if ([self.selectedarray4 containsObject:indexPath]) {
                
                
                cell.accessoryType = UITableViewCellAccessoryNone;
                
                
            }
            
            else{
                
                
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
                
            }
            

        }
        else
        {
            
            
            
            if ([self.selectedarray4 containsObject:[self.numberarray4 objectAtIndex:indexPath.row
                                                     ]]) {
                
                
                
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
                
                
                
            }
            
            else{
                
                
              cell.accessoryType = UITableViewCellAccessoryNone;
                
                
                
            }

            
        }
        
        
        return cell;
        
    }
    
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    
        if (textField==self.daytext1) {
            
            if (self.daytext4.text.length>0) {
                
              //  self.myalert1=[[UIAlertView alloc] initWithTitle:@"Reset" message:@"Offdays Cannot processed.Do you want it must reset now!" delegate:self cancelButtonTitle:@"Yes" otherButtonTitles:@"Cancel", nil];
                //[self.myalert1 show];
                
                
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Reset"
                                           message:@"Do you want to reset it now...?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * action){
                                                                
                                                                [self firstreset];
                                                                
                                                            }];
                
                [alert addAction:yes];
                
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   
                                                                  
                                                                   
                                                               }];
                
                [alert addAction:cancel];
                
                
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                
                

                
            }
            
           
          else if (self.daytext1.text.length>0) {
                
              
              UIAlertController *alert= [UIAlertController
                                         alertControllerWithTitle:@"Reset"
                                         message:@"Do you want to reset it now...?"
                                         preferredStyle:UIAlertControllerStyleAlert];
              
              UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action){
                                                              
                                                              [self firstreset];
                                                              
                                                          }];
              
              [alert addAction:yes];
              
              
              UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * action){
                                                                 
                                                                  self.dayfirsttable.hidden=TRUE;
                                                                 
                                                             }];
              
              [alert addAction:cancel];
              
              
              
              dispatch_async(dispatch_get_main_queue(), ^{
                  
                  [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
              });

              
              
              
              
    
                self.dayfirsttable.hidden=TRUE;
                self.daysecondtable.hidden=TRUE;
                self.daythirdtable.hidden=TRUE;
                self.dayfourthtable.hidden=TRUE;
                self.weekDaySelectionTC.hidden=TRUE;
                self.dateview1.hidden=TRUE;
                self.dateview2.hidden=TRUE;
                self.dateview3.hidden=TRUE;
                self.dateview4.hidden=TRUE;

            }
            else
            {
                
            self.dayfirsttable.hidden=FALSE;
            self.daysecondtable.hidden=TRUE;
            self.daythirdtable.hidden=TRUE;
            self.dayfourthtable.hidden=TRUE;
            self.weekDaySelectionTC.hidden=TRUE;
            self.dateview1.hidden=TRUE;
            self.dateview2.hidden=TRUE;
            self.dateview3.hidden=TRUE;
            self.dateview4.hidden=TRUE;
                
            }
            
            [self.daytext1 resignFirstResponder];
            return NO;
        }
    
        if (textField==self.weekStartsOnText) {
            
            self.weekDaySelectionTC.hidden=false;
            self.dayfirsttable.hidden=TRUE;
            self.daysecondtable.hidden=TRUE;
            self.daythirdtable.hidden=TRUE;
            self.dayfourthtable.hidden=TRUE;
            self.dateview1.hidden=TRUE;
            self.dateview2.hidden=TRUE;
            self.dateview3.hidden=TRUE;
            self.dateview4.hidden=TRUE;
    
            return NO;
        }
    
    
        if (textField==self.daytext2) {
            
            if (self.daytext2.text.length>0) {
                
                
                
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Reset"
                                           message:@"Do you want to reset it now...?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * action){
                                                                
                                                                [self fourthreset];
                                                                [self thirdreset];
                                                                [self secondreset];
                                                                
                                                            }];
                
                [alert addAction:yes];
                
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   
                                                                   self.daysecondtable.hidden=TRUE;
                                                                   
                                                               }];
                
                [alert addAction:cancel];
                
                
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                
                

                
                
                self.dayfirsttable.hidden=TRUE;
                self.daysecondtable.hidden=TRUE;
                self.daythirdtable.hidden=TRUE;
                self.dayfourthtable.hidden=TRUE;
                self.weekDaySelectionTC.hidden=TRUE;
                self.dateview1.hidden=TRUE;
                self.dateview2.hidden=TRUE;
                self.dateview3.hidden=TRUE;
                self.dateview4.hidden=TRUE;
                
            }
            else
            {
                if (self.daytext4.text.length>0) {
                    
                    
                    
                    UIAlertController *alert= [UIAlertController
                                               alertControllerWithTitle:@"Reset"
                                               message:@"Do you want to reset it now...?"
                                               preferredStyle:UIAlertControllerStyleAlert];
                    
                    UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction * action){
                                                                    
                                                                    [self firstreset];
                                                                    
                                                                }];
                    
                    [alert addAction:yes];
                    
                    
                    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                                   handler:^(UIAlertAction * action){
                                                                       
                                                                       
                                                                       
                                                                   }];
                    
                    [alert addAction:cancel];
                    
                    
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                    });
                    


                    
                }
                else{
                
                self.dayfirsttable.hidden=TRUE;
                self.daysecondtable.hidden=FALSE;
                self.daythirdtable.hidden=TRUE;
                self.dayfourthtable.hidden=TRUE;
                self.weekDaySelectionTC.hidden=TRUE;
                self.dateview1.hidden=TRUE;
                self.dateview2.hidden=TRUE;
                self.dateview3.hidden=TRUE;
                self.dateview4.hidden=TRUE;
                }
                
                
            }
            
            [self.daytext2 resignFirstResponder];
            return NO;
        }
    
        if (textField==self.daytext3) {
    
            
            if (self.daytext3.text.length>0) {
                 
                
                
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Reset"
                                           message:@"Do you want to reset it now...?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * action){
                                                                
                                                                [self fourthreset];
                                                                [self thirdreset];

                                                                
                                                            }];
                
                [alert addAction:yes];
                
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   
                                                                   self.daythirdtable.hidden=TRUE;
                                                                   
                                                               }];
                
                [alert addAction:cancel];
                
                
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                
                 self.dayfirsttable.hidden=TRUE;
                 self.daysecondtable.hidden=TRUE;
                 self.daythirdtable.hidden=TRUE;
                 self.dayfourthtable.hidden=TRUE;
                 self.weekDaySelectionTC.hidden=TRUE;
                 self.dateview1.hidden=TRUE;
                 self.dateview2.hidden=TRUE;
                 self.dateview3.hidden=TRUE;
                 self.dateview4.hidden=TRUE;
            }
            
            else
            {
                
                
            if (self.daytext4.text.length>0) {
                    
                
                
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Reset"
                                           message:@"Do you want to reset it now...?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * action){
                                                                
                                                                [self firstreset];
                                                                
                                                            }];
                
                [alert addAction:yes];
                
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   
                                                                   
                                                                   
                                                               }];
                
                [alert addAction:cancel];
                
                
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                

                
                
            }
           
            else{
                
            self.dayfirsttable.hidden=TRUE;
            self.daysecondtable.hidden=TRUE;
            self.daythirdtable.hidden=FALSE;
            self.dayfourthtable.hidden=TRUE;
            self.weekDaySelectionTC.hidden=TRUE;
            self.dateview1.hidden=TRUE;
            self.dateview2.hidden=TRUE;
            self.dateview3.hidden=TRUE;
            self.dateview4.hidden=TRUE;
                
            }
                
            }
            
            [self.daytext3 resignFirstResponder];
            return NO;
        }
    
        if (textField==self.daytext4) {
            
            if (self.daytext4.text.length>0) {
                
                
                
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Reset"
                                           message:@"Do you want to reset it now...?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * action){
                                                                
                                                               [self fourthreset];
                                                                
                                                            }];
                
                [alert addAction:yes];
                
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   
                                                                   
                                                                    self.dayfourthtable.hidden=TRUE;
                                                                   
                                                               }];
                
                [alert addAction:cancel];
                
                
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                

                
                self.dayfirsttable.hidden=TRUE;
                self.daysecondtable.hidden=TRUE;
                self.daythirdtable.hidden=TRUE;
                self.dayfourthtable.hidden=TRUE;
                self.weekDaySelectionTC.hidden=TRUE;
                self.dateview1.hidden=TRUE;
                self.dateview2.hidden=TRUE;
                self.dateview3.hidden=TRUE;
                self.dateview4.hidden=TRUE;

                
            }
            else
            {
                
                self.dayfirsttable.hidden=TRUE;
                self.daysecondtable.hidden=TRUE;
                self.daythirdtable.hidden=TRUE;
                self.dayfourthtable.hidden=FALSE;
                self.weekDaySelectionTC.hidden=TRUE;
                self.dateview1.hidden=TRUE;
                self.dateview2.hidden=TRUE;
                self.dateview3.hidden=TRUE;
                self.dateview4.hidden=TRUE;

            }
            
        
            [self.daytext4 resignFirstResponder];
            return NO;
        }


        if (textField==self.nubertext1) {
            
            self.dayfirsttable.hidden=TRUE;
            self.daysecondtable.hidden=TRUE;
            self.daythirdtable.hidden=TRUE;
            self.dayfourthtable.hidden=TRUE;
            self.weekDaySelectionTC.hidden=TRUE;
            self.dateview1.hidden=FALSE;
            self.dateview2.hidden=TRUE;
            self.dateview3.hidden=TRUE;
            self.dateview4.hidden=TRUE;
            
            if (self.nubertext1.text.length>0) {
                self.nubertext1.text=@"";
                if ([self.daytext1.text isEqualToString:self.daytext4.text]) {
                    [self alertViewControllerForResetPartialDay];
                }
                
            }

            [self.nubertext1 resignFirstResponder];
            return NO;
        }
    
        if (textField==self.nubertext2) {
            
            self.dayfirsttable.hidden=TRUE;
            self.daysecondtable.hidden=TRUE;
            self.daythirdtable.hidden=TRUE;
            self.dayfourthtable.hidden=TRUE;
            self.weekDaySelectionTC.hidden=TRUE;
            self.dateview1.hidden=TRUE;
            self.dateview2.hidden=FALSE;
            self.dateview3.hidden=TRUE;
            self.dateview4.hidden=TRUE;
            
            if (self.nubertext2.text.length>0) {
                
                self.nubertext2.text=@"";
                if ([self.daytext2.text isEqualToString:self.daytext4.text]) {
                    [self alertViewControllerForResetPartialDay];
                }
            }

            [self.nubertext2 resignFirstResponder];
            return NO;
            
        }
    
        if (textField==self.nubertext3) {
            
            self.dayfirsttable.hidden=TRUE;
            self.daysecondtable.hidden=TRUE;
            self.daythirdtable.hidden=TRUE;
            self.dayfourthtable.hidden=TRUE;
            self.weekDaySelectionTC.hidden=TRUE;
            self.dateview1.hidden=TRUE;
            self.dateview2.hidden=TRUE;
            self.dateview3.hidden=FALSE;
            self.dateview4.hidden=TRUE;
            [self.nubertext3 resignFirstResponder];
            
            
            if (self.nubertext3.text.length>0) {
                self.nubertext3.text=@"";
                if ([self.daytext3.text isEqualToString:self.daytext4.text]) {
                    [self alertViewControllerForResetPartialDay];
                }
            }
            return NO;
        }
    
        if (textField==self.nubertext4) {
    
            if (self.nubertext4.text.length>0) {
                
                self.nubertext4.text=@"";
//                if ([self.daytext4.text isEqualToString:self.daytext4.text]) {
//                    [self alertViewControllerForResetPartialDay];
//                }
                
            }
            
            
            self.dayfirsttable.hidden=TRUE;
            self.daysecondtable.hidden=TRUE;
            self.daythirdtable.hidden=TRUE;
            self.dayfourthtable.hidden=TRUE;
            self.weekDaySelectionTC.hidden=TRUE;
            self.dateview1.hidden=TRUE;
            self.dateview2.hidden=TRUE;
            self.dateview3.hidden=TRUE;
            self.dateview4.hidden=FALSE;
            
        
            
            NSArray *myarray=[self.mydict allKeys];
            
           
            
            if ([myarray containsObject:self.daytext4.text])
            {
                if (self.myownflag==1) {
                    [self.selectedarray4 removeAllObjects];
                    
                    [self.selectedarray4 addObjectsFromArray:[self.mydict objectForKey:@"partialDay"]];
                }
                
                NSMutableArray *partialarray=[[self.mydict objectForKey:self.daytext4.text] mutableCopy];
                [self.numberarray4 removeAllObjects];
                [self.numberarray4 addObjectsFromArray:partialarray];
                
                
             //   NSLog(@"%@",partialarray);
             //   NSLog(@"%@",self.globalusearray);
                
                
                [self.numberfourthtable reloadData];
            }
            
            else
            {
                
            [self.numberarray4 removeAllObjects];
            [self.numberarray4 addObjectsFromArray:self.newnumberdummy];
              
            [self.numberfourthtable reloadData];
                
        }
            
        [self.nubertext4 resignFirstResponder];
        return NO;
    
            
    }
    
    
    if (textField==self.beginningTime) {
        self.datePickerView.frame=CGRectMake(186, 398, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
        self.datePickerView.hidden=false;
        self.y=1;
        if (self.beginningTime.text.length>0) {
            
            NSMutableArray *timeArray=[[NSMutableArray alloc]init];
            timeArray=[objTime timeInitialSettings];
            NSDate *startDate=[timeArray objectAtIndex:0];
            NSDate *endDate=[timeArray objectAtIndex:1];
            
            [self.datePicker setDatePickerMode:UIDatePickerModeTime];
            [self.datePicker setMinimumDate:startDate];
            [self.datePicker setMaximumDate:endDate];
            [self.datePicker setDate:startDate animated:YES];
            [self.datePicker reloadInputViews];
            
            self.beginningTime.text=@"";
            self.durationText.text=@"";
            self.endingTime.userInteractionEnabled=false;
            self.endingTime.backgroundColor=[UIColor lightGrayColor];
            self.endingTime.text=@"";
            self.breakBeginningTime.text=@"";
            self.breakBeginningTime.userInteractionEnabled=false;
            self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
            self.breakEndingTime.text=@"";
            self.breakEndingTime.userInteractionEnabled=false;
            self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
            self.durationText.text=@"00 Hrs 00 Mins";
            self.breakDurationText.text=@"00 Hrs 00 Mins";
            self.breakDurationText.userInteractionEnabled=false;
            self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
            
        }
        
        return  NO;
    }
    
    if (textField==self.endingTime) {
        self.datePickerView.frame=CGRectMake(317, 398, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
        self.datePickerView.hidden=false;
        self.y=2;
        
        if (self.endingTime.text.length > 0) {
            
            
            NSMutableArray *timeArray=[[NSMutableArray alloc]init];
            timeArray=[objTime timeInitialSettings];
            NSDate *startDate=[timeArray objectAtIndex:0];
            NSDate *endDate=[timeArray objectAtIndex:1];
            
            [self.datePicker setDatePickerMode:UIDatePickerModeTime];
            [self.datePicker setMinimumDate:startDate];
            [self.datePicker setMaximumDate:endDate];
            [self.datePicker setDate:startDate animated:YES];
            [self.datePicker reloadInputViews];
            
            self.endingTime.text=@"";
            self.durationText.text=@"";
            self.breakBeginningTime.text=@"";
            self.breakBeginningTime.userInteractionEnabled=false;
            self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
            self.breakEndingTime.text=@"";
            self.breakEndingTime.userInteractionEnabled=false;
            self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
            self.durationText.text=@"00 Hrs 00 Mins";
            self.breakDurationText.text=@"00 Hrs 00 Mins";
            self.breakDurationText.userInteractionEnabled=false;
            self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
            
        }
        
        
        
        NSString *time=[objTime timeMinimumValueSetting:self.beginningTime.text];
        NSArray *timeArray=[time componentsSeparatedByString:@"###"];
        
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSIntegerMax fromDate:self.datePicker.date];
        [components setHour:[[timeArray objectAtIndex:0] integerValue]];
        [components setMinute:[[timeArray objectAtIndex:1] integerValue]];
        NSDate *date= [[NSCalendar currentCalendar] dateFromComponents:components];
        self.datePicker.minimumDate = date;
        
        return NO;
    }
    if (textField==self.breakBeginningTime) {
        self.datePickerView.frame=CGRectMake(186, 459, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
        self.datePickerView.hidden=false;
        self.y=3;
        
        if (self.breakBeginningTime.text.length > 0) {
            self.breakBeginningTime.text=@"";
            self.breakEndingTime.text=@"";
            self.breakEndingTime.userInteractionEnabled=false;
            self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
            // self.durationText.text=@"00 Hrs 00 Mins";
            self.breakDurationText.text=@"00 Hrs 00 Mins";
            self.breakDurationText.userInteractionEnabled=false;
            self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
        }
        
        
        
        NSString *time=[objTime timeMinimumValueSetting:self.beginningTime.text];
        NSArray *timeArray=[time componentsSeparatedByString:@"###"];
        
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSIntegerMax fromDate:self.datePicker.date];
        [components setHour:[[timeArray objectAtIndex:0] integerValue]];
        [components setMinute:[[timeArray objectAtIndex:1] integerValue]];
        NSDate *date= [[NSCalendar currentCalendar] dateFromComponents:components];
        self.datePicker.minimumDate = date;
        
        
        
        NSString *time1=[objTime timeMinimumValueSetting:self.endingTime.text];
        NSArray *timeArray1=[time1 componentsSeparatedByString:@"###"];
        [components setHour:[[timeArray1 objectAtIndex:0] integerValue]];
        [components setMinute:[[timeArray1 objectAtIndex:1] integerValue] - 20];
        NSDate *date1= [[NSCalendar currentCalendar] dateFromComponents:components];
        self.datePicker.maximumDate = date1;
        
        return NO;
    }
    if (textField==self.breakEndingTime) {
        self.datePickerView.frame=CGRectMake(317, 459, self.datePickerView.frame.size.width, self.datePickerView.frame.size.height);
        self.datePickerView.hidden=false;
        self.y=4;
        
        if (self.breakEndingTime.text.length > 0) {
            self.breakEndingTime.text=@"";
            self.breakDurationText.text=@"00 Hrs 00 Mins";
            self.breakDurationText.userInteractionEnabled=FALSE;
        }
        
        
        NSString *time=[objTime timeMinimumValueSetting:self.breakBeginningTime.text];
        NSArray *timeArray=[time componentsSeparatedByString:@"###"];
        
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSIntegerMax fromDate:self.datePicker.date];
        [components setHour:[[timeArray objectAtIndex:0] integerValue]];
        [components setMinute:[[timeArray objectAtIndex:1] integerValue]];
        NSDate *date= [[NSCalendar currentCalendar] dateFromComponents:components];
        self.datePicker.minimumDate = date;
        
        
        
        
        NSString *time1=[objTime timeMinimumValueSetting:self.endingTime.text];
        NSArray *timeArray1=[time1 componentsSeparatedByString:@"###"];
        
        [components setHour:[[timeArray1 objectAtIndex:0] integerValue]];
        [components setMinute:[[timeArray1 objectAtIndex:1] integerValue] - 20];
        NSDate *date1= [[NSCalendar currentCalendar] dateFromComponents:components];
        self.datePicker.maximumDate = date1;
        
        return NO;
    }

    
    if (textField==self.breakDurationText) {
        self.datePickerView3.hidden=false;
        return NO;
        
    }
    
    if (textField==self.durationText) {
        return NO;
        
    }
    
    
    if (textField==self.BreakTypeText) {
        self.BreakTypeTC.hidden=FALSE;
        self.datePickerView.hidden=TRUE;

        return  NO;
    }


    return YES;
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (tableView==self.dayfirsttable) {
        
        self.daytext1.text=[self.dayarray1 objectAtIndex:indexPath.row];
        self.dayfirsttable.hidden=TRUE;
        

        self.nubertext1.userInteractionEnabled=TRUE;
        self.nubertext1.backgroundColor=[UIColor clearColor];
        self.donebutton.enabled=NO;
        self.donebutton.alpha=0.7;

    }
    
    if (tableView==self.daysecondtable) {
        self.daytext2.text=[self.dayarray2 objectAtIndex:indexPath.row];
        self.daysecondtable.hidden=TRUE;
        self.nubertext2.userInteractionEnabled=TRUE;
        self.nubertext2.backgroundColor=[UIColor clearColor];
        self.donebutton.enabled=NO;
        self.donebutton.alpha=0.7;

    }
    if (tableView==self.daythirdtable) {
        self.daytext3.text=[self.dayarray3 objectAtIndex:indexPath.row];
        self.daythirdtable.hidden=TRUE;
        self.nubertext3.userInteractionEnabled=TRUE;
        self.nubertext3.backgroundColor=[UIColor clearColor];
        self.donebutton.enabled=NO;
        self.donebutton.alpha=0.7;
    }
    if (tableView==self.dayfourthtable) {
        
        self.daytext4.text=[self.dayarray4 objectAtIndex:indexPath.row];
        self.dayfourthtable.hidden=TRUE;
        self.nubertext4.userInteractionEnabled=TRUE;
        self.nubertext4.backgroundColor=[UIColor clearColor];
        
        self.donebutton.enabled=NO;
        self.donebutton.alpha=0.7;
        
    }
    
    if (tableView==self.numberfirsttable) {
        
        [self.selectedarray1 removeAllObjects];
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
        if (newCell.accessoryType == UITableViewCellAccessoryNone) {
            
            newCell.accessoryType = UITableViewCellAccessoryCheckmark;
            
            //   [self.unselectedarray1 removeAllObjects];
            
            [self.selectedarray1 removeObject:indexPath];
            [self.unselectedarray1 removeObject:[self.numberarray1 objectAtIndex:indexPath.row]];
            
           
            
        }
        
        else {
            
            newCell.accessoryType = UITableViewCellAccessoryNone;
            // [self.unselectedarray1 removeAllObjects];
            
            [self.selectedarray1 addObject:indexPath];
            [self.unselectedarray1 addObject:[self.numberarray1 objectAtIndex:indexPath.row]];

        }
        
       
      
        
    }
    
    
    if (tableView==self.numbersecondtable) {
        
        
        
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
       // [self.unselectedarray2 removeAllObjects];
         [self.selectedarray2 removeAllObjects];
        if (newCell.accessoryType == UITableViewCellAccessoryNone) {
            
            newCell.accessoryType = UITableViewCellAccessoryCheckmark;
            [self.selectedarray2 removeObject:indexPath];
            [self.unselectedarray2 removeObject:[self.numberarray2 objectAtIndex:indexPath.row]];
            
        }
        
        else {
            
            newCell.accessoryType = UITableViewCellAccessoryNone;
            
            [self.selectedarray2 addObject:indexPath];
            [self.unselectedarray2 addObject:[self.numberarray2 objectAtIndex:indexPath.row]];

        }
    }
    if (tableView==self.numberthirdtable) {
        
        
    
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
         //[self.unselectedarray3 removeAllObjects];
         [self.selectedarray3 removeAllObjects];
        if (newCell.accessoryType == UITableViewCellAccessoryNone) {
            
            newCell.accessoryType = UITableViewCellAccessoryCheckmark;
            [self.selectedarray3 removeObject:indexPath];
            [self.unselectedarray3 removeObject:[self.numberarray3 objectAtIndex:indexPath.row]];

            
        }
        
        else {
            
            newCell.accessoryType = UITableViewCellAccessoryNone;
            
            [self.selectedarray3 addObject:indexPath];
            [self.unselectedarray3 addObject:[self.numberarray3 objectAtIndex:indexPath.row]];

        }
        
    }
    
    
    if (tableView==self.numberfourthtable) {
        
        //self.myownflag=0;
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
        
       //[self.unselectedarray4 removeAllObjects];
        
        if (self.myownflag==1) {
             [self.selectedarray4 removeAllObjects];
        }
      
        
        
        if (newCell.accessoryType == UITableViewCellAccessoryNone) {
            
            newCell.accessoryType = UITableViewCellAccessoryCheckmark;
            
            [self.selectedarray4 removeObject:indexPath];
            [self.unselectedarray4 removeObject:[self.numberarray4 objectAtIndex:indexPath.row]];

            
        }
        
        else {
            
            newCell.accessoryType = UITableViewCellAccessoryNone;
            [self.selectedarray4 addObject:indexPath];
            [self.unselectedarray4 addObject:[self.numberarray4 objectAtIndex:indexPath.row]];
        }
        
        NSLog(@"%@",self.unselectedarray4);
    }
    
    
    if (tableView==self.weekDaySelectionTC) {
        
        [self firstreset];
        self.weekStartsOnText.text=[self.weekStartsArray objectAtIndex:indexPath.row];
        self.weekDaySelectionTC.hidden=true;
        self.daytext1.userInteractionEnabled=TRUE;
        self.daytext1.backgroundColor=[UIColor clearColor];
        self.daytext4.userInteractionEnabled=TRUE;
        self.daytext4.backgroundColor=[UIColor clearColor];
        
    }
    
    if (tableView==self.BreakTypeTC) {
        
        if (indexPath.row==0) {
            
            self.BreakTypeText.text=[NSString stringWithFormat:@"%@",[self.breakTypeArray objectAtIndex:indexPath.row]];
            self.breakBeginningTime.userInteractionEnabled=YES;
            self.breakBeginningTime.backgroundColor=[UIColor clearColor];
            self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
            self.breakDurationText.userInteractionEnabled=NO;
            
            self.breakDurationText.textColor=[UIColor whiteColor];
            self.breakDurationText.text=@"00 Hr 00 Mins";
            
            self.breakBeginningTime.text=@"";
            self.breakEndingTime.text=@"";
            
            self.breakEndingTime.userInteractionEnabled=YES;
            self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];

            self.donebutton.enabled=NO;
            self.donebutton.alpha=0.7;
            
             self.breaktypestring=@"0";

        }
        else
        {
            self.BreakTypeText.text=[NSString stringWithFormat:@"%@",[self.breakTypeArray objectAtIndex:indexPath.row]];
            self.breakBeginningTime.text=@"";
            self.breakBeginningTime.userInteractionEnabled=NO;
            self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
            self.breakEndingTime.text=@"";
            self.breakEndingTime.userInteractionEnabled=NO;
            self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
            
            self.breakDurationText.userInteractionEnabled=YES;
            self.breakDurationText.backgroundColor=[UIColor clearColor];
            self.breakDurationText.text=@"";
            
            self.donebutton.enabled=NO;
            self.donebutton.alpha=0.7;
            
            self.breaktypestring=@"1";
        }
        
        self.BreakTypeTC.hidden=TRUE;
    }
    
}


-(void)parialreset
{
    self.daytext1.userInteractionEnabled=TRUE;
    self.daytext1.backgroundColor=[UIColor whiteColor];
    
    self.beginningTime.text=@"";
    self.endingTime.text=@"";
    self.durationText.text=@"";
    self.durationText.userInteractionEnabled=false;
    self.durationText.backgroundColor=[UIColor lightGrayColor];
    self.beginningTime.userInteractionEnabled=false;
    self.beginningTime.backgroundColor=[UIColor lightGrayColor];
    self.endingTime.userInteractionEnabled=false;
    self.endingTime.backgroundColor=[UIColor lightGrayColor];
    self.BreakTypeText.text=@"";
    self.BreakTypeText.userInteractionEnabled=false;
    self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
    self.BreakTypeText.userInteractionEnabled=false;
    self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
    self.breakBeginningTime.text=@"";
    self.breakBeginningTime.userInteractionEnabled=false;
    self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
    self.breakBeginningTime.userInteractionEnabled=false;
    self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
    self.breakEndingTime.text=@"";
    self.breakEndingTime.userInteractionEnabled=false;
    self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
    self.breakEndingTime.userInteractionEnabled=false;
    self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
    self.breakDurationText.text=@"";
    self.breakDurationText.userInteractionEnabled=false;
    self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
    self.breakDurationText.userInteractionEnabled=false;
    self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
    [self.durationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.breakDurationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    self.durationText.placeholder=@"0 Hr 00 Min";
    self.breakDurationText.placeholder=@"0 Hr 00 Min";
    

}




-(void)firstreset
{
    [self.mydict removeAllObjects];
    
  
    
    [self.dayarray1 removeAllObjects];
    [self.dayarray2 removeAllObjects];
    [self.dayarray3 removeAllObjects];
    [self.dayarray4 removeAllObjects];
    
    
    [self.dayarray1 addObjectsFromArray:self.daydummy];
    [self.dayarray2 addObjectsFromArray:self.daydummy];
    [self.dayarray3 addObjectsFromArray:self.daydummy];
    [self.dayarray4 addObjectsFromArray:self.daydummy];
    
    
    [self.numberarray1 removeAllObjects];
    [self.numberarray2 removeAllObjects];
    [self.numberarray3 removeAllObjects];
    [self.numberarray4 removeAllObjects];
    
    
    [self.numberarray1 addObjectsFromArray:self.newnumberdummy];
    [self.numberarray2 addObjectsFromArray:self.newnumberdummy];
    [self.numberarray3 addObjectsFromArray:self.newnumberdummy];
    [self.numberarray4 addObjectsFromArray:self.newnumberdummy];
    
    
    
    [self.selectedarray1 removeAllObjects];
    [self.selectedarray2 removeAllObjects];
    [self.selectedarray3 removeAllObjects];
    // [self.selectedarray4 removeAllObjects];
    
    
    
    
    [self.unselectedarray1 removeAllObjects];
    [self.unselectedarray2 removeAllObjects];
    [self.unselectedarray3 removeAllObjects];
    //[self.unselectedarray4 removeAllObjects];
    
    
    
    
    
    
    
    [self.dayfirsttable reloadData];
    [self.numberfirsttable reloadData];
    
    
    [self.daysecondtable reloadData];
    [self.numbersecondtable reloadData];
    
    
    [self.daythirdtable reloadData];
    [self.numberthirdtable reloadData];
    
    // [self.dayfourthtable reloadData];
    //[self.numberfourthtable reloadData];
    
    
    
    
    
    
    
    self.nubertext1.userInteractionEnabled=false;
    self.nubertext1.backgroundColor=[UIColor lightGrayColor];
    
    self.daytext2.userInteractionEnabled=false;
    self.daytext2.backgroundColor=[UIColor lightGrayColor];
    
    self.nubertext2.userInteractionEnabled=false;
    self.nubertext2.backgroundColor=[UIColor lightGrayColor];
    
    self.daytext3.userInteractionEnabled=false;
    self.daytext3.backgroundColor=[UIColor lightGrayColor];
    
    self.nubertext3.userInteractionEnabled=false;
    self.nubertext3.backgroundColor=[UIColor lightGrayColor];
    
    
    
    
    
    
    self.daytext1.text=@"";
    self.nubertext1.text=@"";
    
    self.daytext2.text=@"";
    self.nubertext2.text=@"";
    
    self.daytext3.text=@"";
    self.nubertext3.text=@"";
    
    self.daytext4.text=@"";
    self.nubertext4.text=@"";
    
    
    self.nubertext3.userInteractionEnabled=false;
    self.nubertext3.backgroundColor=[UIColor lightGrayColor];
    
    self.nubertext4.userInteractionEnabled=false;
    self.nubertext4.backgroundColor=[UIColor lightGrayColor];
    
    self.beginningTime.userInteractionEnabled=FALSE;
    self.beginningTime.backgroundColor=[UIColor lightGrayColor];
    
    [self.selectedarray4 removeAllObjects];
    [self.numberfourthtable reloadData];
    
    self.offdayfirstString=@"";
    self.offdaysecondString=@"";
    self.offdaythirdString=@"";
    self.offdayfourthString=@"";
    
    
    self.donebutton.enabled=YES;
    self.donebutton.alpha=1;
    
    
    [self parialreset];
    

    
}



-(void)secondreset
{
    
    [self.mydict removeObjectForKey:self.daytext2.text];
    
   
    
    [self.dayarray1 removeAllObjects];
    [self.dayarray2 removeAllObjects];
    [self.dayarray3 removeAllObjects];
    [self.dayarray4 removeAllObjects];
    
    
    [self.dayarray1 addObjectsFromArray:self.daydummy];
    [self.dayarray2 addObjectsFromArray:self.daydummy];
    [self.dayarray3 addObjectsFromArray:self.daydummy];
    [self.dayarray4 addObjectsFromArray:self.daydummy];
    
    [self.dayarray1 removeObject:self.daytext1.text];
    [self.dayarray2 removeObject:self.daytext1.text];
    [self.dayarray3 removeObject:self.daytext1.text];
    
    
    [self.numberarray2 removeAllObjects];
    [self.numberarray3 removeAllObjects];
    [self.numberarray4 removeAllObjects];
    
    
    
    [self.numberarray2 addObjectsFromArray:self.newnumberdummy];
    [self.numberarray3 addObjectsFromArray:self.newnumberdummy];
    [self.numberarray4 addObjectsFromArray:self.newnumberdummy];
    
    
    
    [self.selectedarray2 removeAllObjects];
    [self.selectedarray3 removeAllObjects];
    
    [self.unselectedarray2 removeAllObjects];
    [self.unselectedarray3 removeAllObjects];
    
    
    
    [self.dayfirsttable reloadData];
    
    
    [self.daysecondtable reloadData];
    [self.numbersecondtable reloadData];
    
    
    [self.daythirdtable reloadData];
    [self.numberthirdtable reloadData];
    
    
    self.daytext2.text=@"";
    self.nubertext2.text=@"";
    
    self.daytext3.text=@"";
    self.nubertext3.text=@"";
    
    self.daytext4.text=@"";
    self.nubertext4.text=@"";
    
    
    
    self.nubertext2.userInteractionEnabled=false;
    self.nubertext2.backgroundColor=[UIColor lightGrayColor];
    
    self.daytext3.userInteractionEnabled=false;
    self.daytext3.backgroundColor=[UIColor lightGrayColor];
    
    self.nubertext3.userInteractionEnabled=false;
    self.nubertext3.backgroundColor=[UIColor lightGrayColor];
    
    self.nubertext4.userInteractionEnabled=false;
    self.nubertext4.backgroundColor=[UIColor lightGrayColor];
    
    
    [self.selectedarray4 removeAllObjects];
    [self.numberfourthtable reloadData];
    
    self.offdaysecondString=@"";
    self.offdaythirdString=@"";
    self.offdayfourthString=@"";
    
    self.donebutton.enabled=YES;
    self.donebutton.alpha=1;

    
      [self parialreset];
}

-(void)thirdreset
{
   
    
    [self.mydict removeObjectForKey:self.daytext3.text];
    
    
    [self.dayarray1 removeAllObjects];
    [self.dayarray2 removeAllObjects];
    [self.dayarray3 removeAllObjects];
    [self.dayarray4 removeAllObjects];
    
    
    [self.dayarray1 addObjectsFromArray:self.daydummy];
    [self.dayarray2 addObjectsFromArray:self.daydummy];
    [self.dayarray3 addObjectsFromArray:self.daydummy];
    [self.dayarray4 addObjectsFromArray:self.daydummy];
    
    
    [self.dayarray1 removeObject:self.daytext1.text];
    [self.dayarray2 removeObject:self.daytext1.text];
    [self.dayarray3 removeObject:self.daytext1.text];
    [self.dayarray3 removeObject:self.daytext2.text];
    
    
    [self.numberarray3 removeAllObjects];
    [self.numberarray4 removeAllObjects];
    
    
    [self.numberarray3 addObjectsFromArray:self.newnumberdummy];
    [self.numberarray4 addObjectsFromArray:self.newnumberdummy];
    
    [self.selectedarray3 removeAllObjects];
    
    [self.unselectedarray3 removeAllObjects];
    
    
    [self.dayfirsttable reloadData];
    
    
    [self.daysecondtable reloadData];
    
    
    [self.daythirdtable reloadData];
    [self.numberthirdtable reloadData];
    
    
    self.daytext3.text=@"";
    self.nubertext3.text=@"";
    
    self.daytext4.text=@"";
    self.nubertext4.text=@"";
    
    self.nubertext3.userInteractionEnabled=false;
    self.nubertext3.backgroundColor=[UIColor lightGrayColor];
    
    self.nubertext4.userInteractionEnabled=false;
    self.nubertext4.backgroundColor=[UIColor lightGrayColor];
    
    
    [self.selectedarray4 removeAllObjects];
    [self.numberfourthtable reloadData];
    
    
    self.offdaythirdString=@"";
    self.offdayfourthString=@"";
    
    
    self.donebutton.enabled=YES;
    self.donebutton.alpha=1;

    
      [self parialreset];
    
    
}

-(void)fourthreset
{
    self.myownflag=0;
    
    [self.mydict removeObjectForKey:@"partialDay"];
    self.daytext4.text=@"";
    self.nubertext4.text=@"";
    self.nubertext4.userInteractionEnabled=false;
    self.nubertext4.backgroundColor=[UIColor lightGrayColor];
    [self.numberarray4 addObjectsFromArray:self.newnumberdummy];
    [self.selectedarray4 removeAllObjects];
    [self.unselectedarray4 removeAllObjects];
    [self.numberfourthtable reloadData];
    
    self.offdayfourthString=@"";
    
    
    self.donebutton.enabled=YES;
    self.donebutton.alpha=1;

      [self parialreset];
    
}


-(void)donesuperfunction
{
    
    
    NSLog(@"%@",self.selectedarray1);
    NSLog(@"%@",self.unselectedarray1);
    [self.mydict setObject:self.unselectedarray1 forKey:self.daytext1.text];
    self.dateview1.hidden=TRUE;
    
    [self.offfirstArray removeAllObjects];
    
    
    if ([self.unselectedarray1 count]==0) {
        
        self.nubertext1.text=@" All";
        
        self.daytext2.userInteractionEnabled=TRUE;
        self.daytext2.backgroundColor=[UIColor clearColor];
        
        
        
        [self.dayarray1 removeObject:self.daytext1.text];
        [self.dayarray2 removeObject:self.daytext1.text];
        [self.dayarray3 removeObject:self.daytext1.text];
        
        //[self.dayarray4 removeObject:self.daytext1.text];
        
        
        [self.dayfirsttable reloadData];
        [self.daysecondtable reloadData];
        [self.daythirdtable reloadData];
        
        //[self.dayfourthtable reloadData];
        
        [self.offfirstArray addObjectsFromArray:self.numberarray1];
        
        
    }
    
    else if (self.unselectedarray1.count<4) {
        
        if (self.unselectedarray1.count<3) {
            
            
            self.nubertext1.text=@" M";
            
            
            
            for (int i=0; i<self.unselectedarray1.count; i++) {
                
                [self.numberdummy removeObject:[self.unselectedarray1 objectAtIndex:i]];
                
            }
            
            [self.offfirstArray addObjectsFromArray:self.numberdummy];
            
            [self.numberdummy removeAllObjects];
            
            [self.numberdummy addObjectsFromArray:self.numberarray1];
            
            
            
            
        }
        
        else{
            
            for (int i=0; i<self.unselectedarray1.count; i++) {
                
                [self.numberdummy removeObject:[self.unselectedarray1 objectAtIndex:i]];
                
            }
            
            
            self.nubertext1.text= [self.numberdummy lastObject];
            
            [self.offfirstArray addObjectsFromArray:self.numberdummy];
            
            [self.numberdummy removeAllObjects];
            
            [self.numberdummy addObjectsFromArray:self.numberarray1];
        }
        
        self.daytext2.userInteractionEnabled=TRUE;
        self.daytext2.backgroundColor=[UIColor clearColor];
        
        
        
        [self.dayarray1 removeObject:self.daytext1.text];
        [self.dayarray2 removeObject:self.daytext1.text];
        [self.dayarray3 removeObject:self.daytext1.text];
        //[self.dayarray4 removeObject:self.daytext1.text];
        
        
        [self.dayfirsttable reloadData];
        [self.daysecondtable reloadData];
        [self.daythirdtable reloadData];
        //[self.dayfourthtable reloadData];
        
        
    }
    
    else{
        
        self.nubertext1.text=@"";
        self.nubertext1.placeholder=@" All";
        self.nubertext1.userInteractionEnabled=false;
        self.nubertext1.backgroundColor=[UIColor lightGrayColor];
        self.daytext2.userInteractionEnabled=false;
        self.daytext2.backgroundColor=[UIColor lightGrayColor];
        //self.daytext2.text=@"";
        self.nubertext2.text=@"";
        self.nubertext2.placeholder=@" All";
        self.nubertext2.userInteractionEnabled=false;
        self.nubertext2.backgroundColor=[UIColor lightGrayColor];
        self.daytext3.userInteractionEnabled=false;
        self.daytext3.backgroundColor=[UIColor lightGrayColor];
        //self.daytext3.text=@"";
        self.nubertext3.text=@"";
        self.nubertext3.placeholder=@" All";
        self.nubertext3.userInteractionEnabled=false;
        self.nubertext3.backgroundColor=[UIColor lightGrayColor];
        //self.daytext4.text=@"";
        self.nubertext4.text=@"";
        self.nubertext4.placeholder=@" All";
        self.nubertext4.userInteractionEnabled=false;
        self.nubertext4.backgroundColor=[UIColor lightGrayColor];
        
        self.beginningTime.text=@"";
        self.endingTime.text=@"";
        self.durationText.text=@"";
        self.durationText.userInteractionEnabled=false;
        self.durationText.backgroundColor=[UIColor lightGrayColor];
        self.beginningTime.userInteractionEnabled=false;
        self.beginningTime.backgroundColor=[UIColor lightGrayColor];
        self.endingTime.userInteractionEnabled=false;
        self.endingTime.backgroundColor=[UIColor lightGrayColor];
        self.BreakTypeText.text=@"";
        self.BreakTypeText.userInteractionEnabled=false;
        self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
        self.BreakTypeText.userInteractionEnabled=false;
        self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
        self.breakBeginningTime.text=@"";
        self.breakBeginningTime.userInteractionEnabled=false;
        self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
        self.breakBeginningTime.userInteractionEnabled=false;
        self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
        self.breakEndingTime.text=@"";
        self.breakEndingTime.userInteractionEnabled=false;
        self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
        self.breakEndingTime.userInteractionEnabled=false;
        self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
        self.breakDurationText.text=@"";
        self.breakDurationText.userInteractionEnabled=false;
        self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
        self.breakDurationText.userInteractionEnabled=false;
        self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
        [self.durationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        [self.breakDurationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        self.durationText.placeholder=@"0 Hr 00 Min";
        self.breakDurationText.placeholder=@"0 Hr 00 Min";
        
        
        [self firstreset];
        
        
    }
    
    
    
    if (self.offfirstArray.count>0) {
        
        [self.offfirstArray insertObject:self.daytext1.text atIndex:0];
        self.offdayfirstString = [self.offfirstArray componentsJoinedByString:@"###"];
        
    }
    else
    {
        
        self.offdayfirstString=@"";
    }
    
    
    NSLog(@"%@",self.offdayfirstString);
    
    if (self.nubertext1.text.length>0) {
        
        
        if (self.daytext2.text.length>0)   {
            
            if (self.daytext3.text.length>0)   {
                
                
                if (self.nubertext3.text.length>0) {
                    
                    if (self.daytext4.text.length>0)
                    {
                        
                        if (self.breakDurationText.text.length>0) {
                            
                            
                            self.donebutton.enabled=YES;
                            self.donebutton.alpha=1;
                        }
                        else
                        {
                            self.donebutton.enabled=NO;
                            self.donebutton.alpha=1;
                            
                            
                        }
                        
                        
                    }
                    
                }
                else
                {
                    self.donebutton.enabled=NO;
                    self.donebutton.alpha=0.7;
                }
            }
            else
            {
                
                if (self.nubertext2.text.length>0) {
                    
                    self.donebutton.enabled=YES;
                    self.donebutton.alpha=1;
                }
                else
                {
                    self.donebutton.enabled=NO;
                    self.donebutton.alpha=0.7;
                }
                
                
            }
            
        }
        
        
        
        else if (self.daytext4.text.length>0)   {
            {
                
                if (self.breakDurationText.text.length>0) {
                    
                    
                    self.donebutton.enabled=YES;
                    self.donebutton.alpha=1;
                }
                else
                {
                    self.donebutton.enabled=NO;
                    self.donebutton.alpha=1;
                    
                    
                }
                
                
            }
            
            
        }
        else
        {
            self.donebutton.enabled=YES;
            self.donebutton.alpha=1;
            
            
        }
        
        
        
    }
    

    
    
}



-(void)donesuperfunction2
{
    
    
    NSLog(@"%@",self.selectedarray2);
    NSLog(@"%@",self.unselectedarray2);
    [self.mydict setObject:self.unselectedarray2 forKey:self.daytext2.text];
    self.dateview2.hidden=TRUE;
    
    [self.offsecondArray removeAllObjects];
    
    
    if ([self.unselectedarray2 count]==0) {
        
        self.nubertext2.text=@" All";
        
        self.daytext3.userInteractionEnabled=TRUE;
        self.daytext3.backgroundColor=[UIColor clearColor];
        
        
        
        [self.dayarray1 removeObject:self.daytext2.text];
        [self.dayarray2 removeObject:self.daytext2.text];
        [self.dayarray3 removeObject:self.daytext2.text];
        // [self.dayarray4 removeObject:self.daytext2.text];
        
        
        [self.dayfirsttable reloadData];
        [self.daysecondtable reloadData];
        [self.daythirdtable reloadData];
        [self.dayfourthtable reloadData];
        
        [self.offsecondArray addObjectsFromArray:self.numberarray2];
        
    }
    
    else if (self.unselectedarray2.count<4) {
        
        if (self.unselectedarray2.count<3) {
            
            
            self.nubertext2.text=@" M";
            
            
            
            for (int i=0; i<self.unselectedarray2.count; i++) {
                
                [self.numberdummy2 removeObject:[self.unselectedarray2 objectAtIndex:i]];
                
            }
            
            [self.offsecondArray addObjectsFromArray:self.numberdummy2];
            
            [self.numberdummy2 removeAllObjects];
            
            [self.numberdummy2 addObjectsFromArray:self.numberarray2];
            
            
            
            
        }
        
        else{
            
            for (int i=0; i<self.unselectedarray2.count; i++) {
                
                [self.numberdummy2 removeObject:[self.unselectedarray2 objectAtIndex:i]];
                
            }
            
            
            self.nubertext2.text= [self.numberdummy2 lastObject];
            
            [self.offsecondArray addObjectsFromArray:self.numberdummy2];
            
            [self.numberdummy2 removeAllObjects];
            
            [self.numberdummy2 addObjectsFromArray:self.numberarray2];
        }
        
        
        self.daytext3.userInteractionEnabled=TRUE;
        self.daytext3.backgroundColor=[UIColor clearColor];
        
        
        
        [self.dayarray1 removeObject:self.daytext2.text];
        [self.dayarray2 removeObject:self.daytext2.text];
        [self.dayarray3 removeObject:self.daytext2.text];
        // [self.dayarray4 removeObject:self.daytext2.text];
        
        
        [self.dayfirsttable reloadData];
        [self.daysecondtable reloadData];
        [self.daythirdtable reloadData];
        [self.dayfourthtable reloadData];
        
        
        
    }
    else
    {
        self.nubertext2.text=@"";
        self.nubertext2.placeholder=@" All";
        self.nubertext2.userInteractionEnabled=false;
        self.nubertext2.backgroundColor=[UIColor lightGrayColor];
        self.daytext3.userInteractionEnabled=false;
        self.daytext3.backgroundColor=[UIColor lightGrayColor];
        //self.daytext3.text=@"";
        self.nubertext3.text=@"";
        self.nubertext3.placeholder=@" All";
        self.nubertext3.userInteractionEnabled=false;
        self.nubertext3.backgroundColor=[UIColor lightGrayColor];
        // self.daytext4.text=@"";
        self.nubertext4.text=@"";
        self.nubertext4.placeholder=@" All";
        self.nubertext4.userInteractionEnabled=false;
        self.nubertext4.backgroundColor=[UIColor lightGrayColor];
        
        
        self.beginningTime.text=@"";
        self.endingTime.text=@"";
        self.durationText.text=@"";
        self.durationText.userInteractionEnabled=false;
        self.durationText.backgroundColor=[UIColor lightGrayColor];
        self.beginningTime.userInteractionEnabled=false;
        self.beginningTime.backgroundColor=[UIColor lightGrayColor];
        self.endingTime.userInteractionEnabled=false;
        self.endingTime.backgroundColor=[UIColor lightGrayColor];
        self.BreakTypeText.text=@"";
        self.BreakTypeText.userInteractionEnabled=false;
        self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
        self.BreakTypeText.userInteractionEnabled=false;
        self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
        self.breakBeginningTime.text=@"";
        self.breakBeginningTime.userInteractionEnabled=false;
        self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
        self.breakBeginningTime.userInteractionEnabled=false;
        self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
        self.breakEndingTime.text=@"";
        self.breakEndingTime.userInteractionEnabled=false;
        self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
        self.breakEndingTime.userInteractionEnabled=false;
        self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
        self.breakDurationText.text=@"";
        self.breakDurationText.userInteractionEnabled=false;
        self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
        self.breakDurationText.userInteractionEnabled=false;
        self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
        [self.durationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        [self.breakDurationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        self.durationText.placeholder=@"0 Hr 00 Min";
        self.breakDurationText.placeholder=@"0 Hr 00 Min";
        
        [self fourthreset];
        [self thirdreset];
        [self secondreset];
        
        
    }
    
    
    
    if (self.offsecondArray.count>0) {
        
        [self.offsecondArray insertObject:self.daytext2.text atIndex:0];
        self.offdaysecondString = [self.offsecondArray componentsJoinedByString:@"###"];
        
    }
    else
    {
        
        self.offdaysecondString=@"";
    }
    
    NSLog(@"%@",self.offdaysecondString);
    
    if (self.nubertext2.text.length>0) {
        
        if (self.daytext3.text.length>0) {
            
            if (self.nubertext3.text.length>0) {
                
                if (self.daytext4.text.length>0)
                {
                    
                    if (self.breakDurationText.text.length>0) {
                        
                        
                        self.donebutton.enabled=YES;
                        self.donebutton.alpha=1;
                    }
                    else
                    {
                        self.donebutton.enabled=NO;
                        self.donebutton.alpha=1;
                        
                        
                    }
                    
                    
                }
                
            }
            else
            {
                self.donebutton.enabled=NO;
                self.donebutton.alpha=0.7;
            }
            
            
        }
        
        else if (self.daytext4.text.length>0)   {
            {
                
                if (self.breakDurationText.text.length>0) {
                    
                    
                    self.donebutton.enabled=YES;
                    self.donebutton.alpha=1;
                }
                else
                {
                    self.donebutton.enabled=NO;
                    self.donebutton.alpha=1;
                    
                    
                }
                
                
            }
            
            
        }
        
        else
        {
            self.donebutton.enabled=YES;
            self.donebutton.alpha=1;
            
            
        }
        
        
    }

    
    
}


-(void)donesuperfunction3
{
    
    
    
    NSLog(@"%@",self.selectedarray3);
    NSLog(@"%@",self.unselectedarray3);
    [self.mydict setObject:self.unselectedarray3 forKey:self.daytext3.text];
    self.dateview3.hidden=TRUE;
    
    [self.offthirdArray removeAllObjects];
    
    
    if ([self.unselectedarray3 count]==0) {
        
        self.nubertext3.text=@" All";
        
        [self.dayarray1 removeObject:self.daytext3.text];
        [self.dayarray2 removeObject:self.daytext3.text];
        [self.dayarray3 removeObject:self.daytext3.text];
        //[self.dayarray4 removeObject:self.daytext3.text];
        
        
        [self.dayfirsttable reloadData];
        [self.daysecondtable reloadData];
        [self.daythirdtable reloadData];
        [self.dayfourthtable reloadData];
        
        [self.offthirdArray addObjectsFromArray:self.numberarray3];
        
    }
    
    else if (self.unselectedarray3.count<4) {
        
        if (self.unselectedarray3.count<3) {
            
            
            self.nubertext3.text=@" M";
            
            
            
            for (int i=0; i<self.unselectedarray3.count; i++) {
                
                [self.numberdummy3 removeObject:[self.unselectedarray3 objectAtIndex:i]];
                
            }
            
            [self.offthirdArray addObjectsFromArray:self.numberdummy3];
            
            [self.numberdummy3 removeAllObjects];
            
            [self.numberdummy3 addObjectsFromArray:self.numberarray3];
            
            
            
        }
        
        else{
            
            for (int i=0; i<self.unselectedarray3.count; i++) {
                
                [self.numberdummy3 removeObject:[self.unselectedarray3 objectAtIndex:i]];
                
            }
            
            
            self.nubertext3.text= [self.numberdummy3 lastObject];
            
            [self.offthirdArray addObjectsFromArray:self.numberdummy3];
            
            [self.numberdummy3 removeAllObjects];
            
            [self.numberdummy3 addObjectsFromArray:self.numberarray3];
            
            
        }
        
        
        [self.dayarray1 removeObject:self.daytext3.text];
        [self.dayarray2 removeObject:self.daytext3.text];
        [self.dayarray3 removeObject:self.daytext3.text];
        
        //[self.dayarray4 removeObject:self.daytext3.text];
        
        
        [self.dayfirsttable reloadData];
        [self.daysecondtable reloadData];
        [self.daythirdtable reloadData];
        [self.dayfourthtable reloadData];
        
    }
    else
    {
        
        self.nubertext3.text=@"";
        self.nubertext3.placeholder=@" All";
        self.nubertext3.userInteractionEnabled=false;
        self.nubertext3.backgroundColor=[UIColor lightGrayColor];
        //self.daytext4.text=@"";
        self.nubertext4.text=@"";
        self.nubertext4.placeholder=@" All";
        self.nubertext4.userInteractionEnabled=false;
        self.nubertext4.backgroundColor=[UIColor lightGrayColor];
        
        
        
        self.beginningTime.text=@"";
        self.endingTime.text=@"";
        self.durationText.text=@"";
        self.durationText.userInteractionEnabled=false;
        self.durationText.backgroundColor=[UIColor lightGrayColor];
        self.beginningTime.userInteractionEnabled=false;
        self.beginningTime.backgroundColor=[UIColor lightGrayColor];
        self.endingTime.userInteractionEnabled=false;
        self.endingTime.backgroundColor=[UIColor lightGrayColor];
        self.BreakTypeText.text=@"";
        self.BreakTypeText.userInteractionEnabled=false;
        self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
        self.BreakTypeText.userInteractionEnabled=false;
        self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
        self.breakBeginningTime.text=@"";
        self.breakBeginningTime.userInteractionEnabled=false;
        self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
        self.breakBeginningTime.userInteractionEnabled=false;
        self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
        self.breakEndingTime.text=@"";
        self.breakEndingTime.userInteractionEnabled=false;
        self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
        self.breakEndingTime.userInteractionEnabled=false;
        self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
        self.breakDurationText.text=@"";
        self.breakDurationText.userInteractionEnabled=false;
        self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
        self.breakDurationText.userInteractionEnabled=false;
        self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
        [self.durationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        [self.breakDurationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        self.durationText.placeholder=@"0 Hr 00 Min";
        self.breakDurationText.placeholder=@"0 Hr 00 Min";
        
        [self fourthreset];
        [self thirdreset];
        
    }
    
    
    
    
    
    if (self.offthirdArray.count>0) {
        
        [self.offthirdArray insertObject:self.daytext3.text atIndex:0];
        self.offdaythirdString = [self.offthirdArray componentsJoinedByString:@"###"];
        
    }
    else
    {
        
        self.offdaythirdString=@"";
    }
    
    NSLog(@"%@",self.offdaythirdString);
    
    if (self.nubertext3.text>0) {
        
        
        if (self.daytext4.text.length>0)   {
            {
                
                if (self.breakDurationText.text.length>0) {
                    
                    
                    self.donebutton.enabled=YES;
                    self.donebutton.alpha=1;
                }
                else
                {
                    self.donebutton.enabled=NO;
                    self.donebutton.alpha=1;
                    
                    
                }
                
                
            }
            
            
        }
        else
        {
            self.donebutton.enabled=YES;
            self.donebutton.alpha=1;
            
        }
        
        
    }
    

    
    
}



-(void)donesuperfunction4
{
    
    
    
    self.dateview4.hidden=TRUE;
    
    [self.offfourthArray removeAllObjects];
    
    if (!(self.unselectedarray4.count>0)) {
        
        self.beginningTime.userInteractionEnabled=TRUE;
        self.beginningTime.backgroundColor=[UIColor clearColor];
        
        if ([self.numberarray4 count]==0) {
            
            
            self.nubertext4.text=@"";
            self.nubertext4.placeholder=@" All";
            self.nubertext4.userInteractionEnabled=false;
            self.nubertext4.backgroundColor=[UIColor lightGrayColor];
            self.beginningTime.userInteractionEnabled=FALSE;
            self.beginningTime.backgroundColor=[UIColor lightGrayColor];
            self.endingTime.userInteractionEnabled=FALSE;
            self.endingTime.backgroundColor=[UIColor lightGrayColor];
            self.beginningTime.text=@"";
            self.endingTime.text=@"";
            self.breakBeginningTime.text=@"";
            self.breakEndingTime.text=@"";
            self.breakBeginningTime.userInteractionEnabled=false;
            self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
            self.breakEndingTime.userInteractionEnabled=false;
            self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
            self.durationText.text=@"";
            self.breakDurationText.text=@"";
            self.durationText.placeholder=@"00 Hrs 00 Mins";
            self.breakDurationText.placeholder=@"00 Hrs 00 Mins";
            [self.durationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
            [self.breakDurationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
            
            self.breakDurationText.userInteractionEnabled=false;
            self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
            self.BreakTypeText.text=@"";
            self.BreakTypeText.userInteractionEnabled=false;
            self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
            [self fourthreset];
            
        }
        
        else  if ([self.numberarray4 count]>0) {
            
            if (self.numberarray4.count>1) {
                
                if (self.numberarray4.count == 4) {
                    
                    self.nubertext4.text=@" All";
                    
                    [self.offfourthArray addObjectsFromArray:self.numberarray4];
                }
                else
                {
                    self.nubertext4.text=@" M";
                    
                    [self.offfourthArray addObjectsFromArray:self.numberarray4];
                    
                }
            }
            else
            {
                
                self.nubertext4.text=[self.numberarray4 lastObject];
                
                [self.offfourthArray addObjectsFromArray:self.numberarray4];
            }
            
        }
        
        [self.mydict setObject:[self.numberarray4 mutableCopy]forKey:@"partialDay"];
        NSLog(@"%@",self.mydict);
    }
    
    else{
        
        [self.offfourthArray removeAllObjects];
        
        self.beginningTime.userInteractionEnabled=TRUE;
        self.beginningTime.backgroundColor=[UIColor clearColor];
        
        
        for (int i=0; i<self.unselectedarray4.count; i++) {
            
            [self.numberarray4 removeObject:[self.unselectedarray4 objectAtIndex:i]];
            
        }
        
        if ([self.numberarray4 count]==0) {
            
            self.nubertext4.text=@"";
            self.nubertext4.placeholder=@" All";
            self.nubertext4.userInteractionEnabled=false;
            self.nubertext4.backgroundColor=[UIColor lightGrayColor];
            self.beginningTime.userInteractionEnabled=FALSE;
            self.beginningTime.backgroundColor=[UIColor lightGrayColor];
            self.endingTime.userInteractionEnabled=FALSE;
            self.endingTime.backgroundColor=[UIColor lightGrayColor];
            self.beginningTime.text=@"";
            self.endingTime.text=@"";
            self.breakBeginningTime.text=@"";
            self.breakEndingTime.text=@"";
            self.breakBeginningTime.userInteractionEnabled=false;
            self.breakBeginningTime.backgroundColor=[UIColor lightGrayColor];
            self.breakEndingTime.userInteractionEnabled=false;
            self.breakEndingTime.backgroundColor=[UIColor lightGrayColor];
            self.durationText.text=@"";
            self.breakDurationText.text=@"";
            self.durationText.placeholder=@"00 Hrs 00 Mins";
            self.breakDurationText.placeholder=@"00 Hrs 00 Mins";
            [self.durationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
            [self.breakDurationText setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
            self.breakDurationText.userInteractionEnabled=false;
            self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
            self.BreakTypeText.text=@"";
            self.BreakTypeText.userInteractionEnabled=false;
            self.BreakTypeText.backgroundColor=[UIColor lightGrayColor];
            [self fourthreset];
        }
        
        else  if ([self.numberarray4 count]>0) {
            
            if (self.numberarray4.count>1) {
                
                if (self.numberarray4.count == 4) {
                    
                    self.nubertext4.text=@" All";
                    [self.offfourthArray addObjectsFromArray:self.numberarray4];
                }
                else
                {
                    self.nubertext4.text=@" M";
                    [self.offfourthArray addObjectsFromArray:self.numberarray4];
                    
                }
            }
            else
            {
                
                self.nubertext4.text=[self.numberarray4 lastObject];
                [self.offfourthArray addObjectsFromArray:self.numberarray4];
            }
            
        }
        
        
        [self.mydict setObject:[self.numberarray4 mutableCopy] forKey:@"partialDay"];
        NSLog(@"%@",self.mydict);
        
    }
    
    
    
    if (self.offfourthArray.count>0) {
        
        [self.offfourthArray insertObject:self.daytext4.text atIndex:0];
        self.offdayfourthString = [self.offfourthArray componentsJoinedByString:@"###"];
        
    }
    else
    {
        
        self.offdayfourthString=@"";
    }
    
    NSLog(@"%@",self.offdayfourthString);
   
    
}

- (IBAction)done1:(id)sender {
    
    [self donesuperfunction];
    
}



- (IBAction)done2:(id)sender {
    
    [self donesuperfunction2];
    
}



- (IBAction)done3:(id)sender {
    
    [self donesuperfunction3];
    
}


-(IBAction)doneTimerAction3:(id)sender
{
    NSDate *myDate = self.datePicker3.date;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"HH :mm"];
    NSString *prettyVersion = [dateFormat stringFromDate:myDate];
    NSArray *timeArray=[prettyVersion componentsSeparatedByString:@":"];
    NSString *selectedTime=[NSString stringWithFormat:@"%@Hrs %@ Mins",[timeArray objectAtIndex:0],[timeArray objectAtIndex:1]];
    self.breakdurationString = [NSString stringWithFormat:@"%@:%@ ",[[timeArray objectAtIndex:0] stringByTrimmingCharactersInSet:                                                                    [NSCharacterSet whitespaceCharacterSet]],[timeArray objectAtIndex:1]];
    self.breakDurationText.text=selectedTime;
    
    self.donebutton.enabled=YES;
    self.donebutton.alpha=1;
    self.breakDurationText.textColor=[UIColor blackColor];
    self.datePickerView3.hidden=TRUE;
    
}


- (IBAction)done4:(id)sender {
    
    [self donesuperfunction4];
    
}


-(IBAction)dayButtonAction:(id)sender
{
}
-(IBAction)dateButtonAction:(id)sender
{
}
-(IBAction)timeAction:(id)sender
{
}
-(IBAction) datePickerAction:(id)sender
{
   
    NSDate *myDate = self.datePicker.date;
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"hh:mm a"];
    NSString *prettyVersion = [dateFormat stringFromDate:myDate];
    
    
  
    if (self.y==1) {
        
        
        
        self.beginningTime.text=prettyVersion;
        
        self.endingTime.userInteractionEnabled=TRUE;
        self.endingTime.backgroundColor=[UIColor clearColor];
        
    }
    else if(self.y==2)
    {
        self.endingTime.text=prettyVersion;
        
        self.BreakTypeText.userInteractionEnabled=TRUE;
        self.BreakTypeText.text= @"Fixed Break";
        self.BreakTypeText.backgroundColor=[UIColor clearColor];
        self.breakBeginningTime.userInteractionEnabled=TRUE;
        self.breakBeginningTime.backgroundColor=[UIColor clearColor];
        
        
        NSDateFormatter *df=[[NSDateFormatter alloc] init];
        // Set the date format according to your needs
        [df setDateFormat:@"hh:mm a"]; //for 12 hour format
        //[df setDateFormat:@"MM/dd/YYYY HH:mm "]  // for 24 hour format
        NSDate *date1 = [df dateFromString:self.beginningTime.text];
        NSDate *date2 = [df dateFromString:self.endingTime.text];
        int timeDiff=[date2 timeIntervalSinceDate:date1];
        float hours=timeDiff/3600;
        float remainder=timeDiff%3600;
        remainder=remainder/60;
        
        NSLog(@"%f",hours);
        NSLog(@"%f",remainder);
        if (remainder<10) {
            self.partialDurationString=[NSString stringWithFormat:@"0%.f:0%.f ",hours,remainder];
        }
        else
        {
            self.partialDurationString=[NSString stringWithFormat:@"0%.f:%.f ",hours,remainder];
        }       
        if (hours>1) {
            self.durationText.text=[NSString stringWithFormat:@"%.f Hrs %.f Mins",hours,remainder];
          

        }
        else
            self.durationText.text=[NSString stringWithFormat:@"%.f Hr %.f Mins",hours,remainder];
        

            }
    
    else if (self.y==3)
    {
       self.breakBeginningTime.text=prettyVersion;
        self.breakEndingTime.userInteractionEnabled=TRUE;
        self.breakEndingTime.backgroundColor=[UIColor clearColor];
    }
    else
    {
        self.breakEndingTime.text=prettyVersion;
        
        
        NSDateFormatter *df=[[NSDateFormatter alloc] init];
        // Set the date format according to your needs
        [df setDateFormat:@"hh:mm a"]; //for 12 hour format
        //[df setDateFormat:@"MM/dd/YYYY HH:mm "]  // for 24 hour format
        NSDate *date1 = [df dateFromString:self.breakBeginningTime.text];
        NSDate *date2 = [df dateFromString:self.breakEndingTime.text];
        int timeDiff=[date2 timeIntervalSinceDate:date1];
        float hours=timeDiff/3600;
        float remainder=timeDiff%3600;
        remainder=remainder/60;
        NSLog(@"%f",hours);
        NSLog(@"%f",remainder);
        if (remainder<10) {
             self.breakdurationString=[NSString stringWithFormat:@"0%.f:0%.f ",hours,remainder];
        }
        else
        {
        self.breakdurationString=[NSString stringWithFormat:@"0%.f:%.f ",hours,remainder];
        }
        if (hours>1) {
            self.breakDurationText.text=[NSString stringWithFormat:@"%.f Hrs %.f Mins",hours,remainder];
          
            
        }
        else
            self.breakDurationText.text=[NSString stringWithFormat:@"%.f Hr %.f Mins",hours,remainder];
        self.donebutton.enabled=YES;
        self.donebutton.alpha=1;

    }
    self.datePickerView.hidden=TRUE;
    
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string
{
    if (textField==self.abbrbText) {
        if ([string isEqualToString:@""]) {
            return YES;
        }
        if (textField.text.length<=4) {
            NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"];
            unichar u = [string characterAtIndex:0];
            if ([myCharSet characterIsMember:u])
            {
                return YES;
            }
            else{
                return NO;
            }
            return YES;
        }
        // return  NO;
    }
    else if (textField==self.weekRuleNameText)
    {
        if ([string isEqualToString:@""]) {
            return YES;
        }
        if (textField.text.length<=49) {
            NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "];
            unichar u = [string characterAtIndex:0];
            if ([myCharSet characterIsMember:u])
            {
                return YES;
            }
            else{
                return NO;
            }
            return YES;
        }

    }
    else
    {
        return YES;
    }
    return false;
    
    
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if (textView==self.descriptionTextView) {
        if ([text isEqualToString:@""]) {
            return YES;
        }
        if (textView.text.length<=199) {
            NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "];
            unichar u = [text characterAtIndex:0];
            if ([myCharSet characterIsMember:u])
            {
                return YES;
            }
            else{
                return NO;
            }
            return YES;
        }

    }
    
    else
    {
        return YES;
    }
    return false;

}

-(IBAction)donebuttonaction:(id)sender
{
    
    self.weekRuleNameText.text=[self.weekRuleNameText.text stringByTrimmingCharactersInSet:
                                [NSCharacterSet whitespaceCharacterSet]];
    self.abbrbText.text=[self.abbrbText.text stringByTrimmingCharactersInSet:
                         [NSCharacterSet whitespaceCharacterSet]];
    
    
    // if (timeBeginidflag==0) {
    
    
    if ((self.weekRuleNameText.text.length > 0) && (self.abbrbText.text.length > 0) && (self.weekStartsOnText.text.length > 0))
    {
        
        NSMutableArray *myarray=[[NSUserDefaults standardUserDefaults] objectForKey:@"duplicete"];
        if (([myarray containsObject:self.weekRuleNameText.text])&&([ServiceStr isEqualToString:@"create"])) {
            
            [self showAlert:@"Week Rule Already Existing"];
            
            
        }
        
        else
        {
            
            if (self.offdayfirstString.length>0) {
                
                [self checkDuplicateEntry:self.offdayfirstString];
            }
            
            
            if (self.offdaysecondString.length>0) {
                
                [self checkDuplicateEntry:self.offdaysecondString];
                
            }
            
            
            
            if (self.offdaythirdString.length>0) {
                
                [self checkDuplicateEntry:self.offdaythirdString];
            }
            
            
            
            if (self.offdayfourthString.length>0) {
                NSMutableArray *myarray1 = [[self.offdayfourthString componentsSeparatedByString:@"###"] mutableCopy];
                
                self.checkstring = [myarray1 objectAtIndex:0];
                
                [myarray1 removeObjectAtIndex:0];
                
                self.partialset = [NSSet setWithArray:myarray1];
            }
            
            
            if ([self.checkdict objectForKey:self.checkstring]!= Nil) {
                
                NSMutableArray *myarray2 = [self.checkdict objectForKey:self.checkstring];
                self.resultset = [NSSet setWithArray:myarray2];
                BOOL answer = [self.partialset intersectsSet:self.resultset];
                
                if (answer==YES) {
                    
                    [self showAlert:@"Duplicate Entry"];
                    
                    
                    
                    
                }
                
                else
                    
                {
                    
                    //[app hudStart:self];
                    if([ServiceStr isEqualToString:@"create"])
                    {
                        [self serviceFunctionCall:ServiceStr];
                        //
                    }
                    else{
                        
                        [self serviceFunctionCall:ServiceStr];
                       
                    }
                }
                
            }
            
            else{
                // [app hudStart:self];
                if([ServiceStr isEqualToString:@"create"])
                {
                    [self serviceFunctionCall:ServiceStr];
                    
                }
                else{
                    [self serviceFunctionCall:ServiceStr];
                    
                }
                
                //                        [self.myconnection createNewweekRule:self.weekRuleNameText.text abbrev:self.abbrbText.text description:self.descriptionTextView.text weekStarton:self.weekStartsOnText.text offday1:self.offdayfirstString offday2:self.offdaysecondString offday3:self.offdaythirdString partialday:self.offdayfourthString beginningTime:self.beginningTime.text  endingTime:self.endingTime.text duration:self.partialDurationString breaktype:self.BreakTypeText.text breakstart:self.breakBeginningTime.text breakend:self.breakEndingTime.text  breakduration:self.breakdurationString  offficeid:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
                //
                
            }
            
            
            
        }
        
    }
    
    else
    {
        [self showAlert:@"Mandatory Field Required"];
        
    }
    
    
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
                                               }];
    [alert addAction:ok];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
    });
    
}

-(NSMutableDictionary *)checkDuplicateEntry:(NSString *)checkString
{
    
    
    
    NSMutableArray *myarray1 = [[checkString componentsSeparatedByString:@"###"] mutableCopy];
    
    NSString *key = [myarray1 objectAtIndex:0];
    
    [myarray1 removeObjectAtIndex:0];
    
    [self.checkdict setObject:myarray1 forKey:key];
    
    
    
    return self.checkdict ;
}

//Service Funtions

-(void)serviceFunctionCall:(NSString *)idString
{
    [app hudStart:self];
    
    NSString *desig=@"";
    if (self.grouparray.count > 0) {
        desig=[self.grouparray componentsJoinedByString:@"###"];
    }
    
    

    if([idString isEqualToString:@"create"]) {
        
        
        [self.myconnection createNewweekRule:self.weekRuleNameText.text abbrev:self.abbrbText.text description:self.descriptionTextView.text weekStarton:self.weekStartsOnText.text offday1:self.offdayfirstString offday2:self.offdaysecondString offday3:self.offdaythirdString partialday:self.offdayfourthString beginningTime:self.beginningTime.text  endingTime:self.endingTime.text duration:self.partialDurationString breaktype:self.BreakTypeText.text breakstart:self.breakBeginningTime.text breakend:self.breakEndingTime.text  breakduration:self.breakdurationString  offficeid:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId" ] : desig : [[NSUserDefaults standardUserDefaults]objectForKey:@"selectedDesignation"]];
      
        [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"selectedDesignation"];
        
        
    }
    else{
       
        [self.myconnection updateNewweekRule:self.weekRuleNameText.text abbrev:self.abbrbText.text description:self.descriptionTextView.text weekStarton:self.weekStartsOnText.text offday1:self.offdayfirstString offday2:self.offdaysecondString offday3:self.offdaythirdString partialday:self.offdayfourthString beginningTime:self.beginningTime.text endingTime:self.endingTime.text duration:self.partialDurationString breaktype:self.BreakTypeText.text breakstart:self.breakBeginningTime.text breakend:self.breakEndingTime.text breakduration:self.breakdurationString offficeid:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"] ruleid:[[NSUserDefaults standardUserDefaults]objectForKey:@"weekRuleId"] : desig : [[NSUserDefaults standardUserDefaults]objectForKey:@"selectedDesignation"]] ;
        
        [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"selectedDesignation"];
        
        
    }
    
    
    
    
}

-(void)alertViewControllerForResetPartialDay
{
    UIAlertController *alert= [UIAlertController
                               alertControllerWithTitle:@"Warning"
                               message:@"Ok will leads to reset partial day. Do you want to reset it now...?"
                               preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction * action){
                                                    
                                                    [self fourthreset];
                                                    
                                                }];
    
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action){
                                                       
                                                   }];
    [alert addAction:yes];
    [alert addAction:cancel];
    
    
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
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
                                                                                         [app hudStop];
                                                                                     }];
                                           [alert addAction:ok];
    
                                          dispatch_async(dispatch_get_main_queue(), ^{
                                  
                                               [(settingsViewController *)[self.superview.superview.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                                         });
}




-(void)individualWeekruleViewResponse:(NSMutableArray *)weekRuleList
{
    
    if ([weekRuleList count]>0) {
        
        
        attendancesettingsviewclass *ob = (attendancesettingsviewclass *)self.superview.superview;
        
        [ob individualWeekruleViewResponse:weekRuleList];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter] postNotificationName:@"close" object:Nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"enabletable" object:Nil];

            [self removeFromSuperview];
        });
        
        
    }
    else
    {
        
        [self showalerviewcontroller:@"Connection Failed"];
    }
    

    
    
}
-(void)individualweekruleDetailsViewResponse:(NSMutableArray *)weekRuleList
{
    
   // NSMutableDictionary *updateruleDict=[weekRuleList objectAtIndex:0];

    
    dispatch_async(dispatch_get_main_queue(), ^{
    
    
        self.weekRuleNameText.text=[[weekRuleList objectAtIndex:0]objectForKey:@"rule_name"];
        self.abbrbText.text=[[weekRuleList objectAtIndex:0]objectForKey:@"abr"];
        if ([[weekRuleList objectAtIndex:0]objectForKey:@"description"]!=(id)[NSNull null]) {
        self.descriptionTextView.text=[[weekRuleList objectAtIndex:0]objectForKey:@"description"];
        }
        self.weekStartsOnText.text=[[weekRuleList objectAtIndex:0]objectForKey:@"starts"];

        [self.grouparray removeAllObjects];
        NSString *mystring=[[weekRuleList objectAtIndex:0]objectForKey:@"desi_details"];
        
        if ([[weekRuleList objectAtIndex:0]objectForKey:@"desi_details"]!=(id)[NSNull null])
        {
            NSArray *desigArray=[mystring componentsSeparatedByString:@"###"];
            [self.grouparray addObjectsFromArray:desigArray];
            [self.mycollectionview reloadData];
            
        }
        
    if ([[weekRuleList objectAtIndex:0]objectForKey:@"break_type"]!=(id)[NSNull null]) {
        
        self.BreakTypeText.text=[[weekRuleList objectAtIndex:0]objectForKey:@"break_type"];
        if([[[weekRuleList objectAtIndex:0]objectForKey:@"break_type"] isEqualToString:@"Fixed Break"])
        {
            self.breakBeginningTime.backgroundColor=[UIColor clearColor];
            self.breakEndingTime.backgroundColor=[UIColor clearColor];
            self.breakDurationText.backgroundColor=[UIColor lightGrayColor];
            self.breakDurationText.userInteractionEnabled=NO;
        }
        else
        {
            self.breakDurationText.backgroundColor=[UIColor clearColor];
            self.breakDurationText.userInteractionEnabled=YES;
            self.breakBeginningTime.userInteractionEnabled=NO;
            self.breakEndingTime.userInteractionEnabled=NO;
        }
        
    }
    
    if ([[weekRuleList objectAtIndex:0]objectForKey:@"partial_begining"]!=(id)[NSNull null])
    {
        self.beginningTime.text=[[weekRuleList objectAtIndex:0]objectForKey:@"partial_begining"];
        
        self.endingTime.backgroundColor=[UIColor clearColor];
        
    }
    if ([[weekRuleList objectAtIndex:0]objectForKey:@"partial_end"]!=(id)[NSNull null])
    {
        self.endingTime.text=[[weekRuleList objectAtIndex:0]objectForKey:@"partial_end"];
        self.BreakTypeText.backgroundColor=[UIColor clearColor];
        self.breakBeginningTime.textColor=[UIColor blackColor];
                self.BreakTypeText.userInteractionEnabled=YES;
        if([[[weekRuleList objectAtIndex:0]objectForKey:@"break_type"] isEqualToString:@"Fixed Break"])
        {
            self.breakBeginningTime.userInteractionEnabled=YES;
        }
    }
    if ([[weekRuleList objectAtIndex:0]objectForKey:@"partial_duration"]!=(id)[NSNull null])
    {
        NSArray *prtialStringAray=[[[weekRuleList objectAtIndex:0]objectForKey:@"partial_duration"]componentsSeparatedByString:@":"];
        self.durationText.text=[NSString stringWithFormat:@"%@ Hr %@ Mins",[prtialStringAray objectAtIndex:0],[prtialStringAray objectAtIndex:1]];
        self.partialDurationString=[[weekRuleList objectAtIndex:0]objectForKey:@"partial_duration"];
    }
    
    if ([[weekRuleList objectAtIndex:0]objectForKey:@"break_start"]!=(id)[NSNull null])
    {
        self.breakBeginningTime.text=[[weekRuleList objectAtIndex:0]objectForKey:@"break_start"];
        self.breakEndingTime.userInteractionEnabled=YES;
        
    }
    if ([[weekRuleList objectAtIndex:0]objectForKey:@"break_end"]!=(id)[NSNull null])
    {
        self.breakEndingTime.text=[[weekRuleList objectAtIndex:0]objectForKey:@"break_end"];
        
    }
    
    if ([[weekRuleList objectAtIndex:0]objectForKey:@"break_duration"]!=(id)[NSNull null])
    {
        NSArray *breakStringAray=[[[weekRuleList objectAtIndex:0]objectForKey:@"break_duration"]componentsSeparatedByString:@":"];
        self.breakDurationText.text=[NSString stringWithFormat:@"%@ Hr %@ Mins",[breakStringAray objectAtIndex:0],[breakStringAray objectAtIndex:1]];
        self.breakdurationString=[[weekRuleList objectAtIndex:0]objectForKey:@"break_duration"];
    }

    });

//    
//    if ([self.BreakTypeText.text isEqualToString:@"   Fixed Break"]) {
//        self.breakBeginningTime.backgroundColor=[UIColor clearColor];
//        
//        self.breakEndingTime.backgroundColor=[UIColor clearColor];
//        
//        
//    }
    
    self.myownflag=1;
    //myserviceflag1=1;
    
    NSString *string1 = [[weekRuleList objectAtIndex:0]objectForKey:@"off_day1"];
    if (string1!=(id)[NSNull null]) {

    
        NSMutableArray *myoffdayarray1 = [[[[weekRuleList objectAtIndex:0]objectForKey:@"off_day1"]componentsSeparatedByString:@"###"] mutableCopy] ;
    
    
        dispatch_async(dispatch_get_main_queue(), ^{
    
    
            if ([myoffdayarray1 containsObject:@""]) {
                [myoffdayarray1 removeObject:@""];
            }
    
    
        if (myoffdayarray1.count>0) {
    
    
            self.daytext1.userInteractionEnabled=TRUE;
            self.daytext1.backgroundColor=[UIColor clearColor];
    
            self.nubertext1.userInteractionEnabled=TRUE;
            self.nubertext1.backgroundColor=[UIColor clearColor];
    
            self.daytext4.userInteractionEnabled=TRUE;
            self.daytext4.backgroundColor=[UIColor clearColor];
    
            self.daytext1.text=[myoffdayarray1 objectAtIndex:0];
    
    
            [myoffdayarray1 removeObjectAtIndex:0];
    
    
            [self.selectedarray1 removeAllObjects];
            [self.unselectedarray1 removeAllObjects];
    
    
            [self.unselectedarray1 addObjectsFromArray:self.numberdummy];
    
    
    
            for (int i=0; i<4; i++) {
    
                NSIndexPath *myIP = [NSIndexPath indexPathForRow:i inSection:0];
                [self.selectedarray1 addObject:myIP];
            }
    
    
            for (int i=0; i<[myoffdayarray1 count]; i++) {
    
                NSString *mystr=[myoffdayarray1 objectAtIndex:i];
    
                if ([self.unselectedarray1 containsObject:mystr]) {
    
                     [self.unselectedarray1 removeObject:mystr];
    
                }
    
                NSString *string=[myoffdayarray1 objectAtIndex:i];
                NSString *firstChar=[string substringToIndex:1];
    
                NSIndexPath *myIP = [NSIndexPath indexPathForRow:([firstChar integerValue]-1)inSection:0];
    
                if ([self.selectedarray1 containsObject:myIP]) {
    
                     [self.selectedarray1 removeObject:myIP];
                }
    
    
    
            }
    
            [self donesuperfunction];
    
              [self.numberfirsttable reloadData];
    
        }
    
            
            
            
    
    });
        
        
    }
    
    NSString *string2 = [[weekRuleList objectAtIndex:0]objectForKey:@"off_day2"];
    if (string2!=(id)[NSNull null]) {
        
        NSMutableArray *myoffdayarray2 = [[[[weekRuleList objectAtIndex:0]objectForKey:@"off_day2"]componentsSeparatedByString:@"###"] mutableCopy] ;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            
            if ([myoffdayarray2 containsObject:@""]) {
                [myoffdayarray2 removeObject:@""];
            }
            
            
            if (myoffdayarray2.count>0) {
                
                
                self.daytext2.userInteractionEnabled=TRUE;
                self.daytext2.backgroundColor=[UIColor clearColor];
                
                self.nubertext2.userInteractionEnabled=TRUE;
                self.nubertext2.backgroundColor=[UIColor clearColor];
                
                
                self.daytext2.text=[myoffdayarray2 objectAtIndex:0];
                
                
                [myoffdayarray2 removeObjectAtIndex:0];
                
                
                [self.selectedarray2 removeAllObjects];
                [self.unselectedarray2 removeAllObjects];
                
                
                [self.unselectedarray2 addObjectsFromArray:self.numberdummy];
                
                
                
                
                for (int i=0; i<4; i++) {
                    
                    NSIndexPath *myIP = [NSIndexPath indexPathForRow:i inSection:0];
                    [self.selectedarray2 addObject:myIP];
                }
                
                
                for (int i=0; i<[myoffdayarray2 count]; i++) {
                    
                    NSString *mystr=[myoffdayarray2 objectAtIndex:i];
                    
                    if ([self.unselectedarray2 containsObject:mystr]) {
                        
                        [self.unselectedarray2 removeObject:mystr];
                        
                    }
                    
                    NSString *string=[myoffdayarray2 objectAtIndex:i];
                    NSString *firstChar=[string substringToIndex:1];
                    
                    NSIndexPath *myIP = [NSIndexPath indexPathForRow:([firstChar integerValue]-1)inSection:0];
                    
                    
                    if ([self.selectedarray2 containsObject:myIP]) {
                        
                        [self.selectedarray2 removeObject:myIP];
                    }
                    
                    
                }
                
                
                
                [self donesuperfunction2];
                
                [self.numbersecondtable reloadData];
                
            }
            
            
        });
        

    }

    
    NSString *string3 = [[weekRuleList objectAtIndex:0]objectForKey:@"off_day3"];
    if (string3!=(id)[NSNull null]) {
        
        
        NSMutableArray *myoffdayarray3 = [[[[weekRuleList objectAtIndex:0]objectForKey:@"off_day3"]componentsSeparatedByString:@"###"] mutableCopy] ;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            
            if ([myoffdayarray3 containsObject:@""]) {
                
                [myoffdayarray3 removeObject:@""];
                
            }
            
            if (myoffdayarray3.count>0) {
                
                self.daytext3.userInteractionEnabled=TRUE;
                self.daytext3.backgroundColor=[UIColor clearColor];
                
                self.nubertext3.userInteractionEnabled=TRUE;
                self.nubertext3.backgroundColor=[UIColor clearColor];
                
                
                self.daytext3.text=[myoffdayarray3 objectAtIndex:0];
                
                [myoffdayarray3 removeObjectAtIndex:0];
                
                [self.selectedarray3 removeAllObjects];
                [self.unselectedarray3 removeAllObjects];
                
                
                [self.unselectedarray3 addObjectsFromArray:self.numberdummy];
                
                for (int i=0; i<4; i++) {
                    
                    NSIndexPath *myIP = [NSIndexPath indexPathForRow:i inSection:0];
                    [self.selectedarray3 addObject:myIP];
                }
                
                
                for (int i=0; i<[myoffdayarray3 count]; i++) {
                    
                    
                    NSString *mystr=[myoffdayarray3 objectAtIndex:i];
                    
                    if ([self.unselectedarray3 containsObject:mystr]) {
                        
                        [self.unselectedarray3 removeObject:mystr];
                        
                    }
                    
                    
                    NSString *string=[myoffdayarray3 objectAtIndex:i];
                    NSString *firstChar=[string substringToIndex:1];
                    
                    NSIndexPath *myIP = [NSIndexPath indexPathForRow:([firstChar integerValue]-1)inSection:0];
                    
                    
                    if ([self.selectedarray3 containsObject:myIP]) {
                        
                        [self.selectedarray3 removeObject:myIP];
                    }
                    
                    
                    
                }
                
                [self donesuperfunction3];
                
                [self.numberthirdtable reloadData];
                
            }
            
            
            
            
            
        });

    }
    
    
    NSString *string4 = [[weekRuleList objectAtIndex:0]objectForKey:@"partial_day"];
    if (string4!=(id)[NSNull null]) {
        
        NSMutableArray *myoffdayarray4 = [[[[weekRuleList objectAtIndex:0]objectForKey:@"partial_day"]componentsSeparatedByString:@"###"] mutableCopy];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            
            if ([myoffdayarray4 containsObject:@""]) {
                [myoffdayarray4 removeObject:@""];
            }
            
            
            if (myoffdayarray4.count>0) {
                
                self.daytext4.userInteractionEnabled=TRUE;
                self.daytext4.backgroundColor=[UIColor clearColor];
                
                self.nubertext4.userInteractionEnabled=TRUE;
                self.nubertext4.backgroundColor=[UIColor clearColor];
                
                self.daytext4.text=[myoffdayarray4 objectAtIndex:0];
                
                [myoffdayarray4 removeObjectAtIndex:0];
                
                
                [self.selectedarray4 removeAllObjects];
                [self.unselectedarray4 removeAllObjects];
                
                [self.unselectedarray4 addObjectsFromArray:self.numberdummy];
                
                
                
                for (int i=0; i<[myoffdayarray4 count]; i++) {
                    
                    
                    NSString *mystr=[myoffdayarray4 objectAtIndex:i];
                    
                    if ([self.unselectedarray4 containsObject:mystr]) {
                        
                        [self.unselectedarray4 removeObject:mystr];
                        
                    }
                    
                    
                    
                }
                
                
                
                [self.selectedarray4 addObjectsFromArray:myoffdayarray4];
                
                
                
                
                
                [self donesuperfunction4];
                
                
            }
            
            
        });
        

    }
    
  
}


@end
