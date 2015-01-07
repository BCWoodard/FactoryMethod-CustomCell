//
//  CustomCell0.m
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "CustomCell0.h"

@implementation CustomCell0

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithClassName {
    self._mHeadlineLabel.text = NSStringFromClass([self class]);
    self._mSubHeadLabel.text = @"This is a text type of object.";
    
    return self;
}

@end