//
//  shiftTeamViewClass.m
//  Automate Firm
//
//  Created by leonine on 06/10/16.
//  Copyright © 2016 leonine. All rights reserved.
//

#import "shiftTeamViewClass.h"
#import "CollectionViewCellForTeamShift.h"
@implementation shiftTeamViewClass

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)awakeFromNib
{
    self.teamFirstArray=[[NSMutableArray alloc]initWithObjects:@"photoSift1.png", @"photoSift1.png", @"photoSift1.png", @"photoSift1.png", @"photoSift1.png",@"photoSift1.png", nil];
    self.teamsecondArray=[[NSMutableArray alloc]initWithObjects:@"photoSift1.png",nil];
    self.teamThirdArray=[[NSMutableArray alloc]initWithObjects:@"photoSift1.png",@"photoSift1.png",@"photoSift1.png",nil];
    self.teamFourthArray=[[NSMutableArray alloc]initWithObjects:@"photoSift1.png",@"photoSift1.png",@"photoSift1.png",nil];
    self.teamFifthArray=[[NSMutableArray alloc]initWithObjects:@"photoSift1.png",@"photoSift1.png",@"photoSift1.png",nil];
    self.teamSixthArray=[[NSMutableArray alloc]initWithObjects:@"photoSift1.png",@"photoSift1.png",@"photoSift1.png",nil];
   
    [self.teamcollcetion registerNib:[UINib nibWithNibName:@"CollectionViewCellForTeamShift" bundle:nil] forCellWithReuseIdentifier:@"teamCell"];
    [self.teamcollcetion1 registerNib:[UINib nibWithNibName:@"CollectionViewCellForTeamShift" bundle:nil] forCellWithReuseIdentifier:@"teamCell"];
    [self.teamcollcetion2 registerNib:[UINib nibWithNibName:@"CollectionViewCellForTeamShift" bundle:nil] forCellWithReuseIdentifier:@"teamCell"];
    [self.teamcollcetion3 registerNib:[UINib nibWithNibName:@"CollectionViewCellForTeamShift" bundle:nil] forCellWithReuseIdentifier:@"teamCell"];
    [self.teamcollcetion4 registerNib:[UINib nibWithNibName:@"CollectionViewCellForTeamShift" bundle:nil] forCellWithReuseIdentifier:@"teamCell"];
    [self.teamcollcetion5 registerNib:[UINib nibWithNibName:@"CollectionViewCellForTeamShift" bundle:nil] forCellWithReuseIdentifier:@"teamCell"];
    
    

   
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
{
    if(collectionView==_teamcollcetion)
    {
        return [self.teamFirstArray count];
    }
    else if (collectionView==_teamcollcetion1){
        
        return [self.teamsecondArray count];
    }
    else if (collectionView==_teamcollcetion2){
        
        return [self.teamThirdArray count];
    }
    else if (collectionView==_teamcollcetion3){
        
        return [self.teamFourthArray count];
    }
    else if (collectionView==_teamcollcetion4){
        
        return [self.teamFifthArray count];
    }
    else
    {
        return [self.teamSixthArray count];
    }
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
    {
    //if (collectionView==_teamcollcetion1) {
        
        CollectionViewCellForTeamShift *cell=(CollectionViewCellForTeamShift *)[collectionView dequeueReusableCellWithReuseIdentifier:@"teamCell" forIndexPath:indexPath];
        
        UIPanGestureRecognizer *pan=[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragfunction:)];
        [pan setMaximumNumberOfTouches:1];
        pan.delegate=self;
        [cell addGestureRecognizer:pan];
        
      //  cell.backgroundColor=[UIColor greenColor];
        return cell;
        
 //   }
       

//    else{
//        
//        CollectionViewCellForTeamShift *cell=(CollectionViewCellForTeamShift *)[collectionView dequeueReusableCellWithReuseIdentifier:@"teamCell" forIndexPath:indexPath];
//        
//        UIPanGestureRecognizer *pan=[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragfunction:)];
//        
//        [cell addGestureRecognizer:pan];
//        
//        
//        return cell;
//        
        
    //}
//
    
}
-(void)dragfunction:(UIPanGestureRecognizer *)panRecognizer
{
    UICollectionView *mycoll1 = (UICollectionView *)[panRecognizer.view superview];
    CGPoint touchLocation = [panRecognizer locationInView:self];

    //NSLog(@"%ld",(long)mycoll1.tag);
    
    NSInteger storedcollectionTag = mycoll1.tag;
    
    CGPoint locationPoint = [panRecognizer locationInView:mycoll1];
    
    if (panRecognizer.state == UIGestureRecognizerStateBegan) {
        
        
        UICollectionView *mycoll = (UICollectionView *)[panRecognizer.view superview];
       // NSLog(@"%ld",(long)mycoll.tag);
        
        NSIndexPath *indexPathOfMovingCell = [mycoll indexPathForItemAtPoint:locationPoint];
       // indexPathDestCell=indexPathOfMovingCell;
        UICollectionViewCell *cell = ( CollectionViewCellForTeamShift *)[mycoll cellForItemAtIndexPath:indexPathOfMovingCell];
       // CGPoint touchLocation = [panRecognizer locationInView:cell];

        UIGraphicsBeginImageContext(cell.bounds.size);
        [cell.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *cellImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        self.movingCell = [[UIImageView alloc] initWithImage:cellImage];
        [self.movingCell setCenter:touchLocation];
        [self.movingCell setAlpha:0.75f];
        [self addSubview:self.movingCell];
        
    }
    
    if (panRecognizer.state == UIGestureRecognizerStateChanged) {
        [self.movingCell setCenter:touchLocation];
    }
    
    
    if (panRecognizer.state == UIGestureRecognizerStateEnded) {
        CGPoint locationPoint = [panRecognizer locationInView:mycoll1];

        UICollectionView *destCollection = (UICollectionView *)[panRecognizer.view superview];
        NSIndexPath *indexPathDestCell = [destCollection indexPathForItemAtPoint:locationPoint];
        if(CGRectContainsPoint(_teamcollcetion1.frame, [panRecognizer locationInView:self]))
        {
            if (storedcollectionTag==1) {
                [self reloadFunction:_teamFirstArray destArray:_teamsecondArray indexpath:indexPathDestCell];
            }
            
            if (storedcollectionTag==3) {
                [self reloadFunction:_teamThirdArray destArray:_teamsecondArray indexpath:indexPathDestCell];

            }
            if (storedcollectionTag==4) {
                [self reloadFunction:_teamFourthArray destArray:_teamsecondArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==5) {
                [self reloadFunction:_teamFifthArray destArray:_teamsecondArray indexpath:indexPathDestCell];

                
            }
            if (storedcollectionTag==6) {
                [self reloadFunction:_teamSixthArray destArray:_teamsecondArray indexpath:indexPathDestCell];

            }
          
        }
        
        if(CGRectContainsPoint(_teamcollcetion.frame, [panRecognizer locationInView:self]))
        {
           
            if (storedcollectionTag==2) {
                [self reloadFunction:_teamsecondArray destArray:_teamFirstArray indexpath:indexPathDestCell];
            }
            
            if (storedcollectionTag==3) {
                [self reloadFunction:_teamThirdArray destArray:_teamFirstArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==4) {
                [self reloadFunction:_teamFourthArray destArray:_teamFirstArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==5) {
                [self reloadFunction:_teamFifthArray destArray:_teamFirstArray indexpath:indexPathDestCell];
                
                
            }
            if (storedcollectionTag==6) {
                [self reloadFunction:_teamSixthArray destArray:_teamFirstArray indexpath:indexPathDestCell];
                
            }

        }
        
        if(CGRectContainsPoint(_teamcollcetion2.frame, [panRecognizer locationInView:self]))
        {
            
            if (storedcollectionTag==2) {
                [self reloadFunction:_teamsecondArray destArray:_teamThirdArray indexpath:indexPathDestCell];
            }
            
            if (storedcollectionTag==1) {
                [self reloadFunction:_teamFirstArray destArray:_teamThirdArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==4) {
                [self reloadFunction:_teamFourthArray destArray:_teamThirdArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==5) {
                [self reloadFunction:_teamFifthArray destArray:_teamThirdArray indexpath:indexPathDestCell];
                
                
            }
            if (storedcollectionTag==6) {
                [self reloadFunction:_teamSixthArray destArray:_teamFirstArray indexpath:indexPathDestCell];
                
            }
            
        }
        if(CGRectContainsPoint(_teamcollcetion3.frame, [panRecognizer locationInView:self]))
        {
            
            if (storedcollectionTag==2) {
                [self reloadFunction:_teamsecondArray destArray:_teamFourthArray indexpath:indexPathDestCell];
            }
            
            if (storedcollectionTag==1) {
                [self reloadFunction:_teamFirstArray destArray:_teamFourthArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==3) {
                [self reloadFunction:_teamThirdArray destArray:_teamFourthArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==5) {
                [self reloadFunction:_teamFifthArray destArray:_teamFourthArray indexpath:indexPathDestCell];
                
                
            }
            if (storedcollectionTag==6) {
                [self reloadFunction:_teamSixthArray destArray:_teamFourthArray indexpath:indexPathDestCell];
                
            }
            
        }
        if(CGRectContainsPoint(_teamcollcetion4.frame, [panRecognizer locationInView:self]))
        {
            
            if (storedcollectionTag==2) {
                [self reloadFunction:_teamsecondArray destArray:_teamFifthArray indexpath:indexPathDestCell];
            }
            
            if (storedcollectionTag==1) {
                [self reloadFunction:_teamFirstArray destArray:_teamFifthArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==3) {
                [self reloadFunction:_teamThirdArray destArray:_teamFifthArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==4) {
                [self reloadFunction:_teamFourthArray destArray:_teamFifthArray indexpath:indexPathDestCell];
                
                
            }
            if (storedcollectionTag==6) {
                [self reloadFunction:_teamSixthArray destArray:_teamFifthArray indexpath:indexPathDestCell];
                
            }
            
        }
        if(CGRectContainsPoint(_teamcollcetion5.frame, [panRecognizer locationInView:self]))
        {
            
            if (storedcollectionTag==2) {
                [self reloadFunction:_teamsecondArray destArray:_teamSixthArray indexpath:indexPathDestCell];
            }
            
            if (storedcollectionTag==1) {
                [self reloadFunction:_teamFirstArray destArray:_teamSixthArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==3) {
                [self reloadFunction:_teamThirdArray destArray:_teamSixthArray indexpath:indexPathDestCell];
                
            }
            if (storedcollectionTag==4) {
                [self reloadFunction:_teamFourthArray destArray:_teamSixthArray indexpath:indexPathDestCell];
                
                
            }
            if (storedcollectionTag==5) {
                [self reloadFunction:_teamFifthArray destArray:_teamSixthArray indexpath:indexPathDestCell];
                
            }
            
        }

        [self.movingCell removeFromSuperview];
    }
    
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    
    if(CGRectContainsPoint(_teamcollcetion.frame, [touch locationInView:self]))
    {
        NSLog(@"iefeffjffekfkelfe");
    }
    
}
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
//
//{
//    
//    if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]
//        
//        && gestureRecognizer.numberOfTouches == 2) {
//        
//        return NO;
//        
//    }
//    
//    return YES;
//    
//}

//cell reloadFunction

-(void)reloadFunction:(NSMutableArray *)sourceArray destArray:(NSMutableArray *)destArray indexpath:(NSIndexPath *)destPath
{
    [sourceAray removeObjectAtIndex:destPath.row];
    [destArray insertObject:@"photoSift1.png" atIndex:0];
    [self.teamcollcetion reloadData];
    [self.teamcollcetion1 reloadData];
    [self.teamcollcetion2 reloadData];
    [self.teamcollcetion3 reloadData];
    [self.teamcollcetion4 reloadData];
    [self.teamcollcetion5 reloadData];
    

}

@end
