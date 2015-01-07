//
//  CustomCell1.m
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "CustomCell1.h"

@implementation CustomCell1

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithClassName {
    self._mImageView.image = [UIImage imageNamed:@"landscape-mountain.jpg"];
    self._mHeadlineLabel.text = NSStringFromClass([self class]);
    self._mSubheadLabel.text = @"This is an image type of object.";
    
    return self;
}
@end
