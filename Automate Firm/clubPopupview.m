//
//  clubPopupview.m
//  Automate Firm
//
//  Created by Ambu Vamadevan on 05/05/2016.
//  Copyright © 2016 leonine. All rights reserved.
//

#import "clubPopupview.h"

@implementation clubPopupview

-(void)awakeFromNib
{
    self.frame=CGRectMake(-60, 100, self.frame.size.width, self.frame.size.height);
    self.backgroundColor=[UIColor whiteColor];
    self.alpha=100;
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(-500, -300, 1300, 1000)];
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    //  self.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowPath = shadowPath.CGPath;
    //////bdbdbdbdbdbdbdbdb
}

-(IBAction)closeButtonAction:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"enableall" object:Nil];
    [self removeFromSuperview];
}

@end
