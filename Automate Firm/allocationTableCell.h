//
//  allocationTableCell.h
//  Automate Firm
//
//  Created by leonine on 18/10/16.
//  Copyright © 2016 leonine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface allocationTableCell : UITableViewCell
@property(nonatomic,retain)NSMutableArray *shiftAray;
@property (weak, nonatomic) IBOutlet UICollectionView *cellCollection;
@end
