//
//  CustomCell.h
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

// Would be converted to initWithCellType: withDictionary: or similar
- (instancetype)initWithClassName;

@end
