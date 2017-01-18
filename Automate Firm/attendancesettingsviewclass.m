//
//  attendancesettingsviewclass.m
//  
//
//  Created by leonine on 12/10/15.
//
//

#import "attendancesettingsviewclass.h"
#import "settingcell.h"
#import "rulesTableViewCell.h"
#import "settingsViewController.h"
@implementation attendancesettingsviewclass
@synthesize k,selectedflag;

-(void)awakeFromNib
{
    
    self.myconnection=[[connectionclass alloc] init];
    self.myconnection.mydelegate=self;
    
     NSLog(@"%@",[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]);
    [self.myconnection viewOfficeWeekRule:[[NSUserDefaults standardUserDefaults]objectForKey:@"selectedofficeId"]];
    
   
    
    appObj=(AppDelegate *)[[UIApplication sharedApplication]delegate];

    
    
    [ self.attendancecollectionview registerNib:[UINib nibWithNibName:@"settingcustumcell" bundle:nil] forCellWithReuseIdentifier:@"simplecell"];
    
    self.iconsarray=[[NSMutableArray alloc]initWithObjects:@"weekicon2_blue.png",@"timeicon2_blue.png", @"roundupicon_blue2.png", @"shifticon_blue2.png", @"leavesicon_blue2.png",@"holidayicon_blue2.png",  nil];
    self.iconnamesarray=[[NSMutableArray alloc]initWithObjects:@"Week",@"Time", @"Round Up", @"Shifts", @"Leaves", @"Holidays", nil];
    self.idpassingarray=[[NSMutableArray alloc]init];
    self.shiftIDPassingArray=[[NSMutableArray alloc]init];
    self.WeekIdPassingAray=[[NSMutableArray alloc]init];

    self.weekarray=[[NSMutableArray alloc] init];
    self.shiftarray=[[NSMutableArray alloc] init];
    self.timearray=[[NSMutableArray alloc] init];
    self.leavesarray=[[NSMutableArray alloc] init];
    self.leavesIDArray=[[NSMutableArray alloc]init];
    self.leavesFlagArray=[[NSMutableArray alloc]init];
    self.holidayarray=[[NSMutableArray alloc] init];
    self.rounduparray=[[NSMutableArray alloc] init];
    self.holydayIdPassingAray=[[NSMutableArray alloc] init];

    
    selectedflag=1;
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(disablecollcetionview) name:@"open" object:Nil];
    
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(enablecollcetionview) name:@"close" object:Nil];
    
    [[NSUserDefaults standardUserDefaults]setObject:@"week" forKey:@"ruleType"];
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.iconsarray count];
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
 
        settingcell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"simplecell" forIndexPath:indexPath];
        cell.myimg.image=[UIImage imageNamed:[self.iconsarray objectAtIndex:indexPath.row]];
        cell.mylabel.text=[self.iconnamesarray objectAtIndex:indexPath.row];
    
        if (indexPath.row==0) {
            k=indexPath;
            cell.mylabel.textColor=[UIColor blueColor];
        }
    
        UICollectionViewFlowLayout *flow = (UICollectionViewFlowLayout*)self.attendancecollectionview.collectionViewLayout;
        flow.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        flow.minimumLineSpacing = 27;
        return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    settingcell *cell1=(settingcell *)[self.attendancecollectionview cellForItemAtIndexPath:k];
    cell1.mylabel.textColor=[UIColor blackColor];
    settingcell *cell=(settingcell *)[self.attendancecollectionview cellForItemAtIndexPath:indexPath];
    cell.mylabel.textColor=[UIColor blueColor];

    if (indexPath.row==0) {
        [[NSUserDefaults standardUserDefaults]setObject:@"week" forKey:@"ruleType"];
        selectedflag=1;
        [self.settingscontainstableview reloadData];
        [self.createnewbutton setTitle:@"Create New Week" forState:UIControlStateNormal];
        [self.myconnection viewOfficeWeekRule:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
    }
    if (indexPath.row==1) {
        selectedflag=2;
        //[self.settingscontainstableview reloadData];
        [[NSUserDefaults standardUserDefaults]setObject:@"time" forKey:@"ruleType"];
        [self.createnewbutton setTitle:@"Create New Time" forState:UIControlStateNormal];
        //service calling for listing time rules
        [self.myconnection getviewalltimerules:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
        //[appObj hudStart:self];
    }

    if (indexPath.row==2) {
        [[NSUserDefaults standardUserDefaults]setObject:@"roundup" forKey:@"ruleType"];
        [self.createnewbutton setTitle:@"" forState:UIControlStateNormal];
        selectedflag=3;
        [self.settingscontainstableview reloadData];
        [self.myconnection roundUpViewAll:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
    }

    if (indexPath.row==3) {
        selectedflag=4;
        [self.settingscontainstableview reloadData];
        [[NSUserDefaults standardUserDefaults]setObject:@"shift" forKey:@"ruleType"];
        [self.createnewbutton setTitle:@"Create New Shift" forState:UIControlStateNormal];
        [self.myconnection getViewAllShiftRules:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
    }

    if (indexPath.row==4) {
        [[NSUserDefaults standardUserDefaults]setObject:@"leave" forKey:@"ruleType"];
        [self.createnewbutton setTitle:@"Create New Leave" forState:UIControlStateNormal];
        selectedflag=5;
        [self.myconnection viewAllLeaves:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
    }
    if (indexPath.row==5) {
        [[NSUserDefaults standardUserDefaults]setObject:@"holiday" forKey:@"ruleType"];
        [self.myconnection viewAllHolidays:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]];
        [self.createnewbutton setTitle:@"Create New Holiday" forState:UIControlStateNormal];
        selectedflag=6;
        [self.settingscontainstableview reloadData];

    }
    
}


-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    settingcell *cell=(settingcell *)[self.attendancecollectionview cellForItemAtIndexPath:indexPath];
    cell.mylabel.textColor=[UIColor blackColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   if(self.selectedflag==1)
   {
       return self.weekarray.count;
   }
   else if(selectedflag==2)
   {
       return self.timearray.count;
   }
    else if (selectedflag==3)
    {
        return self.rounduparray.count;
    }
    else if (selectedflag==4)
    {
        return self.shiftarray.count;
    }
    else if (selectedflag==5)
    {
        return self.leavesarray.count;
    }
    else
    {
        return  self.holidayarray.count;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"simplecell";
    rulesTableViewCell  *cell = (rulesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"rulesTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
    }
    if (selectedflag==1) {
        if (self.weekarray.count == 0) {
            
            cell.mainLabel.text=[self.weekarray objectAtIndex:indexPath.row];
            
        }
        else
        {
            NSMutableDictionary *mydict=[self.weekarray objectAtIndex:indexPath.row];
            cell.mainLabel.text=[mydict objectForKey:@"rule_name"];
            if ([mydict objectForKey:@"description"]!=(id)[NSNull null])
            {
            cell.descriLabel.text=[mydict objectForKey:@"description"];
            }

          //  cell.descriLabel.text=[mydict objectForKey:@"description"];
            cell.datemodifyLabel.text=[mydict objectForKey:@"created_time"];
            
        }

    }
    if (selectedflag==2)
    {
        if (self.timearray.count==0) {
            
            cell.mainLabel.text=[self.timearray objectAtIndex:indexPath.row];
            [appObj hudStop];
        }
        else
        {
            dispatch_async(dispatch_get_main_queue(), ^{
                NSMutableDictionary *mydict=[self.timearray objectAtIndex:indexPath.row];
                cell.mainLabel.text=[mydict objectForKey:@"time_rule_name"];
                if ([mydict objectForKey:@"description"]!=(id)[NSNull null])
                {
                    cell.descriLabel.text=[mydict objectForKey:@"description"];
                }
               // cell.descriLabel.text=[mydict objectForKey:@"description"];
                cell.datemodifyLabel.text=[mydict objectForKey:@"created_date"];
            });
            [appObj hudStop];
        }
        

    }
    if (selectedflag==3) {
        if (self.rounduparray.count==0) {
            cell.mainLabel.text=[self.rounduparray objectAtIndex:indexPath.row];
        }
        else
        {
            NSMutableDictionary *mydict=[self.rounduparray objectAtIndex:indexPath.row];
            cell.mainLabel.text=[mydict objectForKey:@"round_up_name"];
            if ([mydict objectForKey:@"round_up_description"]!=(id)[NSNull null])
            {
                cell.descriLabel.text=[mydict objectForKey:@"round_up_description"];
            }
          //  cell.descriLabel.text=[mydict objectForKey:@"round_up_description"];
            cell.datemodifyLabel.text=[mydict objectForKey:@"modified_date"];
        }
        
    }

    
    if (selectedflag==4) {
        if (self.shiftarray.count==0) {
            
            cell.mainLabel.text=[self.shiftarray objectAtIndex:indexPath.row];
            
        }
        else
        {
            dispatch_async(dispatch_get_main_queue(), ^{
                NSMutableDictionary *shiftDict=[self.shiftarray objectAtIndex:indexPath.row];
                cell.mainLabel.text=[shiftDict objectForKey:@"shift_name"];
                if ([shiftDict objectForKey:@"shift_description"]!=(id)[NSNull null])
                {
                    cell.descriLabel.text=[shiftDict objectForKey:@"shift_description"];
                }
             //   cell.descriLabel.text=[shiftDict objectForKey:@"shift_description"];
                cell.datemodifyLabel.text=[shiftDict objectForKey:@"shift_created_date"];
            });

            
                    
        }
        
        
    }
    if (selectedflag==5) {
        if (self.leavesarray.count == 0) {
            
            cell.mainLabel.text=[self.leavesarray objectAtIndex:indexPath.row];
            
        }
        else
        {
            NSMutableDictionary *mydict=[self.leavesarray objectAtIndex:indexPath.row];
            cell.mainLabel.text=[mydict objectForKey:@"leave_name"];
            cell.descriMainLabel.hidden=true;
            cell.descriLabel.text=@"";
            cell.datemodifyLabel.text=[mydict objectForKey:@"leave_created_date"];
                    
        }
        
    }

    if (selectedflag==6) {
        if (self.holidayarray.count == 0) {
            
            cell.mainLabel.text=[self.holidayarray objectAtIndex:indexPath.row];
            
        }
        else
        {
            NSMutableDictionary *mydict=[self.holidayarray objectAtIndex:indexPath.row];
            cell.mainLabel.text=[mydict objectForKey:@"holyday_name"];
            if ([mydict objectForKey:@"description"]!=(id)[NSNull null])
            {
                cell.descriLabel.text=[mydict objectForKey:@"description"];
            }
            //cell.descriLabel.text=[mydict objectForKey:@"description"];
            cell.datemodifyLabel.text=[mydict objectForKey:@"modified_date"];
            
        }
        
    }
    
    //NSLog(@"%lu",(unsigned long)self.idpassingarray.count);
    return cell;
    


}

-(IBAction)createnewbuttonaction:(id)sender
{
    UIButton *mybutton=(UIButton *)sender;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"open" object:Nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Tableview" object:Nil];
    
    if ([mybutton.currentTitle isEqualToString:@"Create New Week"])
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"create" forKey:@"weekAction"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"weeksettingsview" owner:self options:nil];
            [self.attendancesettingscontainsview addSubview:[nib objectAtIndex:0]];
        });
        
    }
    
    else if ([mybutton.currentTitle isEqualToString:@"Create New Shift"])
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults]setObject:@"0" forKey:@"shiftruleid"];
            [[NSUserDefaults standardUserDefaults] setObject:@"create" forKey:@"shiftAction"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"shiftsettingsview" owner:self options:nil];
            [self.attendancesettingscontainsview addSubview:[nib objectAtIndex:0]];
        });
        
    }
    else if ([mybutton.currentTitle isEqualToString:@"Create New Leave"])
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"create" forKey:@"leaveAction"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"settingsleaveviews" owner:self options:nil];
            [self.attendancesettingscontainsview addSubview:[nib objectAtIndex:0]];
        });
        
    }
    
    else if ([mybutton.currentTitle isEqualToString:@"Create New Time"])
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"create" forKey:@"Timeaction"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"timesettingsView" owner:self options:nil];
            [self.attendancesettingscontainsview addSubview:[nib objectAtIndex:0]];
        });
        
    }
    else if ([mybutton.currentTitle isEqualToString:@"Create New Holiday"])
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"create" forKey:@"holidayAction"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"holidaySettingsView" owner:self options:nil];
            
            [self.attendancesettingscontainsview addSubview:[nib objectAtIndex:0]];
        });
        
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"open" object:Nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Tableview" object:Nil];
    if (selectedflag==1) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"update" forKey:@"weekAction"];
            [[NSUserDefaults standardUserDefaults] setObject:[self.WeekIdPassingAray objectAtIndex:indexPath.row] forKey:@"weekRuleId"];
            
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"weeksettingsview" owner:self options:nil];
            UIView *myview=[nib objectAtIndex:0];
            CATransition *applicationLoadViewIn =[CATransition animation];
            [applicationLoadViewIn setDuration:0.5];
            [applicationLoadViewIn setType:kCATransitionReveal];
            [applicationLoadViewIn setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
            [[self.attendancesettingscontainsview layer]addAnimation:applicationLoadViewIn forKey:kCAMediaTimingFunctionEaseOut];
            [self.attendancesettingscontainsview addSubview:myview];
        });
        
    }
    
    else if (selectedflag==2) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"update" forKey:@"Timeaction"];
            NSString *str=[self.idpassingarray objectAtIndex:indexPath.row];
            [[NSUserDefaults standardUserDefaults] setObject:str forKey:@"timeruleid"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"timesettingsView" owner:self options:nil];
            UIView *myview=[nib objectAtIndex:0];
            CATransition *applicationLoadViewIn =[CATransition animation];
            [applicationLoadViewIn setDuration:0.5];
            [applicationLoadViewIn setType:kCATransitionReveal];
            [applicationLoadViewIn setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
            [[self.attendancesettingscontainsview layer]addAnimation:applicationLoadViewIn forKey:kCAMediaTimingFunctionEaseOut];
            [self.attendancesettingscontainsview addSubview:myview];
        });
        
    }
    else if (selectedflag==3)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"update" forKey:@"roundupAction"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"roundupsettingsview" owner:self options:nil];
            UIView *myview=[nib objectAtIndex:0];
            CATransition *applicationLoadViewIn =[CATransition animation];
            [applicationLoadViewIn setDuration:0.5];
            [applicationLoadViewIn setType:kCATransitionReveal];
            [applicationLoadViewIn setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
            [[self.attendancesettingscontainsview layer]addAnimation:applicationLoadViewIn forKey:kCAMediaTimingFunctionEaseOut];
            [self.attendancesettingscontainsview addSubview:myview];
        
        });
        
    }

    else if (selectedflag==4)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"update" forKey:@"shiftAction"];
            NSString *str=[self.shiftIDPassingArray objectAtIndex:indexPath.row];
            [[NSUserDefaults standardUserDefaults] setObject:str forKey:@"shiftruleid"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"shiftsettingsview" owner:self options:nil];
            UIView *myview=[nib objectAtIndex:0];
            CATransition *applicationLoadViewIn =[CATransition animation];
            [applicationLoadViewIn setDuration:0.5];
            [applicationLoadViewIn setType:kCATransitionReveal];
            [applicationLoadViewIn setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
            [[self.attendancesettingscontainsview layer]addAnimation:applicationLoadViewIn forKey:kCAMediaTimingFunctionEaseOut];
            [self.attendancesettingscontainsview addSubview:myview];
        });
        
    }
    else if (selectedflag==5)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"update" forKey:@"leaveAction"];
            
            NSString *str=[self.leavesIDArray objectAtIndex:indexPath.row];
            [[NSUserDefaults standardUserDefaults] setObject:str forKey:@"leaveRuleID"];
            
            NSString *flag=[self.leavesFlagArray objectAtIndex:indexPath.row];
            [[NSUserDefaults standardUserDefaults] setObject:flag forKey:@"leaveFlag"];
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"settingsleaveviews" owner:self options:nil];
            UIView *myview=[nib objectAtIndex:0];
            CATransition *applicationLoadViewIn =[CATransition animation];
            [applicationLoadViewIn setDuration:0.5];
            [applicationLoadViewIn setType:kCATransitionReveal];
            [applicationLoadViewIn setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
            [[self.attendancesettingscontainsview layer]addAnimation:applicationLoadViewIn forKey:kCAMediaTimingFunctionEaseOut];
            [self.attendancesettingscontainsview addSubview:myview];
        });
        
        
    }
    else if (selectedflag==6)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults] setObject:@"update" forKey:@"holidayAction"];
            [[NSUserDefaults standardUserDefaults] setObject:[self.holydayIdPassingAray objectAtIndex:indexPath.row] forKey:@"holi_id"];
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"holidaySettingsView" owner:self options:nil];
            UIView *myview=[nib objectAtIndex:0];
            CATransition *applicationLoadViewIn =[CATransition animation];
            [applicationLoadViewIn setDuration:0.5];
            [applicationLoadViewIn setType:kCATransitionReveal];
            [applicationLoadViewIn setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
            [[self.attendancesettingscontainsview layer]addAnimation:applicationLoadViewIn forKey:kCAMediaTimingFunctionEaseOut];
            [self.attendancesettingscontainsview addSubview:myview];
        });
        
    }
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (editingStyle==UITableViewCellEditingStyleDelete) {
        if (self.selectedflag==1) {
            
            UIAlertController *alert= [UIAlertController
                                       alertControllerWithTitle:@"Delete?"
                                       message:@"Are you sure you want to delete?"
                                       preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* ok = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * action){
                                                           NSString *rid=[self.WeekIdPassingAray objectAtIndex:indexPath.row];
                                                           [self.myconnection deleteWeekRule:rid];
                                                           [self.WeekIdPassingAray removeObjectAtIndex:indexPath.row];
                                                           [self.weekarray removeObjectAtIndex:indexPath.row];
                                                           [self.settingscontainstableview reloadData];
                                                           
                                                       }];
            
            UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * action){
                                                               [self.settingscontainstableview setEditing:false animated:YES];
                                                           }];
            [alert addAction:ok];
            [alert addAction:cancel];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                [(settingsViewController *)[self.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
            });
            

            
            
            
            
        }
        if (selectedflag==2) {
            UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Delete?"
                                           message:@"Are you sure you want to delete?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
            UIAlertAction* ok = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * action){
                                                               NSString *rid=[self.idpassingarray objectAtIndex:indexPath.row];
                                                               [self.myconnection deleteTimeRule:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]:rid];
                                                               
                                                               [self.idpassingarray removeObjectAtIndex:indexPath.row];
                                                               [self.timearray removeObjectAtIndex:indexPath.row];
                                                               [self.settingscontainstableview reloadData];
                                                               
                                                           }];
                
            UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   [self.settingscontainstableview setEditing:false animated:YES];
                                                               }];
            [alert addAction:ok];
            [alert addAction:cancel];
                
            dispatch_async(dispatch_get_main_queue(), ^{
                    
                [(settingsViewController *)[self.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
            });
            
                
            }
            else if (selectedflag==4)
            {
                
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Delete?"
                                           message:@"Are you sure you want to delete?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* ok = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * action){
                                                               //Do Some action here
                                                               
                                                               NSString *rid=[self.shiftIDPassingArray objectAtIndex:indexPath.row];
                                                               [self.myconnection deleteShiftRule:[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedofficeId"]:rid];
                                                               [self.shiftIDPassingArray removeObjectAtIndex:indexPath.row];
                                                               [self.shiftarray removeObjectAtIndex:indexPath.row];
                                                               [self.settingscontainstableview reloadData];
                                                           }];
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   [self.settingscontainstableview setEditing:false animated:YES];
                                                                   //Do Some action here
                                                               }];
                
                [alert addAction:ok];
                [alert addAction:cancel];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                
                
            }
            else if (selectedflag==5)
                
            {
                if ((indexPath.row==0) || (indexPath.row==1) || (indexPath.row==2) || (indexPath.row==3) || (indexPath.row==4) || (indexPath.row==5)) {
                    
                    UIAlertController *alert= [UIAlertController
                                               alertControllerWithTitle:@"Warning"
                                               message:@"Cannot Delete"
                                               preferredStyle:UIAlertControllerStyleAlert];
                    
                    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   [self.settingscontainstableview setEditing:false animated:YES];
                                                                   
                                                                   
                                                                   
                                                               }];
                    [alert addAction:ok];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        [(settingsViewController *)[self.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                    });
                    
                        
                }
                else
                {
                    UIAlertController *alert= [UIAlertController
                                               alertControllerWithTitle:@"Delete?"
                                               message:@"Are you sure you want to delete?"
                                               preferredStyle:UIAlertControllerStyleAlert];
                    
                    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   //Do Some action here
                                                                   
                                                                   NSString *rid=[self.leavesIDArray objectAtIndex:indexPath.row];
                                                                   [self.myconnection deleteLeave:rid];
                                                                   [self.leavesIDArray removeObjectAtIndex:indexPath.row];
                                                                   [self.leavesarray removeObjectAtIndex:indexPath.row];
                                                                   [self.settingscontainstableview reloadData];
                                                               }];
                    
                    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                                   handler:^(UIAlertAction * action){
                                                                        [self.settingscontainstableview setEditing:false animated:YES];                                                                   }];
                    
                    [alert addAction:ok];
                    [alert addAction:cancel];
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        [(settingsViewController *)[self.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                    });

                }
            }
            else if (selectedflag==6)
            {
                
                UIAlertController *alert= [UIAlertController
                                           alertControllerWithTitle:@"Delete?"
                                           message:@"Are you sure you want to delete?"
                                           preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* ok = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * action){
                                                               //Do Some action here
                                                               
                                                               NSString *rid=[self.holydayIdPassingAray objectAtIndex:indexPath.row];
                                                               [self.myconnection deleteHoliday:rid];
                                                               [self.holydayIdPassingAray removeObjectAtIndex:indexPath.row];
                                                               [self.holidayarray removeObjectAtIndex:indexPath.row];
                                                               [self.settingscontainstableview reloadData];
                                                               
                                                           }];
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * action){
                                                                   [self.settingscontainstableview setEditing:false animated:YES];
                                                               }];
                
                [alert addAction:ok];
                [alert addAction:cancel];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [(settingsViewController *)[self.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
                });
                
                
            }

        }
    
}

//Individual Office Week rule Response

-(void)individualWeekruleViewResponse:(NSMutableArray *)weekRuleList;

{
    [self.weekarray removeAllObjects];
    [self.WeekIdPassingAray removeAllObjects];
    NSMutableArray *weekname=[[NSMutableArray alloc]init];
    for (int i=0; i<weekRuleList.count; i++) {
        NSMutableDictionary *weekDict=[weekRuleList objectAtIndex:i];
        [self.WeekIdPassingAray addObject:[weekDict objectForKey:@"week_rule_id"]];
        [weekname addObject:[weekDict objectForKey:@"rule_name"]];
    }
    [self.weekarray addObjectsFromArray:weekRuleList];
    [[NSUserDefaults standardUserDefaults]setObject:weekname forKey:@"duplicete"];
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [self.settingscontainstableview reloadData];
        
    });
    
    
}


//Got response when user creates a new shift rule, passing value from shift rule creating class
-(void)savedShiftsArray:(NSMutableArray *)savedShiftData
{
    [self.shiftarray removeAllObjects];
    [self.shiftIDPassingArray removeAllObjects];
    for (int i=0; i<savedShiftData.count; i++) {
        NSMutableDictionary *shiftDict=[savedShiftData objectAtIndex:i];
        [self.shiftIDPassingArray addObject:[shiftDict objectForKey:@"id"]];
    }
    [self.shiftarray addObjectsFromArray:savedShiftData];
    [self.settingscontainstableview reloadData];
}


//Got response when user needs to list all the created time rules initially
-(void)initiallyruleviewresponse:(NSMutableArray *)viewrulearray
{
    [self.timearray removeAllObjects];
    [self.idpassingarray removeAllObjects];
        
    for (int i=0; i<[viewrulearray count]; i++) {
        NSMutableDictionary *mydict=[viewrulearray objectAtIndex:i];
        [self.idpassingarray addObject:[mydict objectForKey:@"id"]];
    }
        
    [self.timearray addObjectsFromArray:viewrulearray];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.settingscontainstableview reloadData];
    });
    
}
//Got response when user needs to list all created shift rules initially
-(void)initiallyShiftRuleViewResponse:(NSMutableArray *)shiftRulesArray
{
    if (shiftRulesArray.count>0) {
        [self.shiftarray removeAllObjects];
        [self.shiftIDPassingArray removeAllObjects];
        for(int i=0;i<shiftRulesArray.count;i++)
        {
            NSMutableDictionary *shiftDict=[shiftRulesArray objectAtIndex:i];
            [self.shiftIDPassingArray addObject:[shiftDict objectForKey:@"id"]];
        }
        [self.shiftarray addObjectsFromArray:shiftRulesArray];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.settingscontainstableview reloadData];
        });
        [appObj hudStop];
    }
}

//Got response when user needs to list all created roundUp rules initially
-(void)initiallyRoundupRuleViewResponse:(NSMutableArray *)roundupRulesArray
{
    if (roundupRulesArray.count > 0) {
        [self.rounduparray removeAllObjects];
        for (int i=0; i<roundupRulesArray.count; i++) {
            [self.rounduparray addObject:[roundupRulesArray objectAtIndex:i]];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.settingscontainstableview reloadData];
        });
        [appObj hudStop];
    }
}

//Got Response when user needs to list all created leaves
-(void)initiallyLeaveRuleViewResponse:(NSMutableArray *)leavesArray
{
    
    if (leavesArray.count > 0) {
        [self.leavesarray removeAllObjects];
        [self.leavesFlagArray removeAllObjects];
        [self.leavesIDArray removeAllObjects];
        for (int i=0; i<leavesArray.count; i++) {
            NSMutableDictionary *leaveDict=[leavesArray objectAtIndex:i];
            [self.leavesIDArray addObject:[leaveDict objectForKey:@"leave_id"]];
            [self.leavesFlagArray addObject:[leaveDict objectForKey:@"leave_flag_type"]];
        }
        [self.leavesarray addObjectsFromArray:leavesArray];
           }
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.settingscontainstableview reloadData];
    });
    

    
    
}

//...Get  service Response to view all Holidays

-(void)serviceGotResponse : (id)responseData
{
    
    [self.holidayarray removeAllObjects];
    [self.holydayIdPassingAray removeAllObjects];
    for (int i=0; i<[responseData count]; i++) {
        NSMutableDictionary *holyDict=[responseData objectAtIndex:i];
        [self.holydayIdPassingAray addObject:[holyDict objectForKey:@"holi_id"]];
    }
    [self.holidayarray addObjectsFromArray:responseData];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [self.settingscontainstableview reloadData];
        
    });
    
    
    
    
}

//Got response when ther no internet connection and user calls any connection 

-(void)showalerviewcontroller:(NSString *)errorMessage
{
    UIAlertController *alert= [UIAlertController
                               alertControllerWithTitle:@"Error"
                               message:@"No internet connection"
                               preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction * action){
                                                   //Do Some action here
                                               }];
    [alert addAction:ok];
    
    
    dispatch_async(dispatch_get_main_queue(), ^{
       
        [(settingsViewController *)[self.superview.superview nextResponder] presentViewController:alert animated:YES completion:nil];
   });

}

-(void)deleteSettingsRuleResponse:(NSString *)deleteRule
{
    
}

-(void)disablecollcetionview
{
    [self.attendancecollectionview setUserInteractionEnabled:FALSE];

}

-(void)enablecollcetionview
{
    [self.attendancecollectionview setUserInteractionEnabled:TRUE];
}

@end
