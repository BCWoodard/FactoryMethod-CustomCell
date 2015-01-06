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

- (CustomCell *)cellForKey:(NSString *)cellKey {
    
    CustomCell *customCell = nil;
    
    if ([cellKey isEqualToString:@"CustomCell0"]) {
        customCell = [[CustomCell0 alloc] init];
    } else if ([cellKey isEqualToString:@"CustomCell1"]) {
        customCell = [[CustomCell1 alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"CustomCell1"];
    } else if ([cellKey isEqualToString:@"CustomCell2"]) {
        customCell = [[CustomCell2 alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"CustomCell2"];
    } else {
        NSAssert(NO, @"No custom cell found for cellKey %@", cellKey);
    }
    
    return customCell;
}

@end
