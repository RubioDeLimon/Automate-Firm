//
//  ViewController.m
//  AutomateFirm
//
//  Created by leonine on 12/10/15.
//  Copyright (c) 2015 leonine. All rights reserved.
//

#import "ViewController.h"
#import <DropboxSDK/DropboxSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myconnection=[[connectionclass alloc]init];
    self.myconnection.mydelegate=self;
    NSMutableDictionary *dict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"vipin",@"Name",@"9400108486",@"Contact",@"vipin@leonine.in",@"Email", nil];
    [self.myconnection testService:dict];
    [self.myconnection officeListingService];
   
    self.officeListAray=[[NSMutableArray alloc ]init];
    self.officeListDictionary=[[NSMutableDictionary alloc ]init];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)back:(UIStoryboardSegue *)sender
{
    
    
    
}

//OfficeListing In Dropdown Table

-(void)officeListingResponse:(NSMutableDictionary *)officeListDict
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.officeListDictionary=officeListDict;
        [self.officeDropDwnList reloadData];
    });
    
}
//Login Button Function

- (IBAction)login:(id)sender {
    
    //if ((self.userNameField.text.length && self.paswrdText.text.length && self.officeDropdwnText.text.length)>0) {
      
        NSString * userString = [self.userNameField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString * pwdstring = [self.paswrdText.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        
         [[NSUserDefaults standardUserDefaults]setObject:@"1" forKey:@"selectedofficeId"];
       /// [self.myconnection LoginService:userString paswrd:pwdstring officeid:self.officeidString];
        
        [self performSegueWithIdentifier:@"loggedUser" sender:nil];
    
    
//    }
//    else{
//        
//        UIAlertController *alert= [UIAlertController
//                                   alertControllerWithTitle:@"Login Failed"
//                                   message:@"Enter all Fields"
//                                   preferredStyle:UIAlertControllerStyleAlert];
//        
//        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
//                                                   handler:^(UIAlertAction * action){
//                                                       
//                                                   }];
//        [alert addAction:ok];
//        [self presentViewController:alert animated:YES completion:nil];
//
//    }
    
    
}
//Login Service Response

-(void)loginResponse:(NSString *)responseMessage
{
    
    NSLog(@"%@",responseMessage);
    if (!([responseMessage isEqualToString:@"1"])) {
        
        UIAlertController *alert= [UIAlertController
                                   alertControllerWithTitle:@"Login Failed"
                                   message:@"Invalid Username or Password"
                                   preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action){
                                                       self.userNameField.text=@"";
                                                       self.paswrdText.text=@"";
                                                       self.officeDropdwnText.text=@"";
                                                
                                                   }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
     }
    else{
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSUserDefaults standardUserDefaults]setObject:self.userNameField.text forKey:@"user_id"];
            
        
            //[[NSUserDefaults standardUserDefaults]setObject:@"Black" forKey:@"color"];
            
            
        [self performSegueWithIdentifier:@"loggedUser" sender:nil];
            });
    }

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return [[self.officeListDictionary objectForKey:@"data"]count];
}

//Officelisting TableView

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=[[UITableViewCell alloc]init];
        
    cell.textLabel.font=[UIFont systemFontOfSize:12.0f];
    cell.textLabel.text=[[[self.officeListDictionary objectForKey:@"data"]objectAtIndex:indexPath.row]objectForKey:@"office_name"];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    self.officeidString=[[[self.officeListDictionary objectForKey:@"data"]objectAtIndex:indexPath.row]objectForKey:@"id"];
        
   // [[NSUserDefaults standardUserDefaults]setObject:[[[self.officeListDictionary objectForKey:@"data"]objectAtIndex:indexPath.row]objectForKey:@"id"] forKey:@"selectedofficeId" ];
    
    [[NSUserDefaults standardUserDefaults]setObject:@"1" forKey:@"selectedofficeId"];
    
    [[NSUserDefaults standardUserDefaults]setObject:[[[self.officeListDictionary objectForKey:@"data"]objectAtIndex:indexPath.row]objectForKey:@"abbreviation"] forKey:@"selectedofficeAbbrv" ];
        
    self.officeDropdwnText.text=[[[self.officeListDictionary objectForKey:@"data"]objectAtIndex:indexPath.row]objectForKey:@"office_name"];
    self.officeDropDwnList.hidden=TRUE;
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
{

    if (textField==self.officeDropdwnText) {
        
        [self.paswrdText resignFirstResponder];
        [self.userNameField resignFirstResponder];
        self.officeDropDwnList.hidden=FALSE;
        return  NO;

    }
    else
        return  YES;
    
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if (textField==self.paswrdText) {
        [self.paswrdText resignFirstResponder];
    }
    return  YES;
}
-(IBAction)signout:(id)sender
{
        // - (void)unlinkAll;
        //  - (void)unlinkUserId:(NSString *)userId;
    [[DBSession sharedSession] unlinkAll];

 }
- (IBAction)forgetpaswrdAction:(id)sender {
    
        [[NSUserDefaults standardUserDefaults]setObject:@"1" forKey:@"forgetAction"];
        [self performSegueWithIdentifier:@"registerView" sender:nil];

}
@end
