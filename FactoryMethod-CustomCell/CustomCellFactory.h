//
//  CustomCellFactory.h
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomCell.h"

@interface CustomCellFactory : NSObject

+ (CustomCellFactory *)factory;
- (CustomCell *)cellForKey:(NSString *)cellKey fromTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath;

@end
