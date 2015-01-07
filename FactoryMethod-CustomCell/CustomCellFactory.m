//
//  CustomCellFactory.m
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "CustomCellFactory.h"
#import "CustomCell0.h"
#import "CustomCell1.h"
#import "CustomCell2.h"

@implementation CustomCellFactory

+ (CustomCellFactory *)factory {
    return [[[self class] alloc] init];
}

- (CustomCell *)cellForKey:(NSString *)cellKey fromTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier = nil;
    
    if ([cellKey isEqualToString:@"CustomCell0"]) {
        identifier = @"CustomCell0";
    } else if ([cellKey isEqualToString:@"CustomCell1"]) {
        identifier = @"CustomCell1";
    } else if ([cellKey isEqualToString:@"CustomCell2"]) {
        identifier = @"CustomCell2";
    } else {
        NSAssert(NO, @"No custom cell found for cellKey %@", cellKey);
    }
    
    CustomCell *customCell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    return customCell;
}

@end
