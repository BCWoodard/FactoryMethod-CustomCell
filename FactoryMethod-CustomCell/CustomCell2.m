//
//  CustomCell2.m
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "CustomCell2.h"

@implementation CustomCell2

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithClassName {
    self._mHeadlineLabel.text = NSStringFromClass([self class]);
    [self._mWebView loadRequest:[[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"http://static2.lxdcdn.net/images/6bd09c48e6ad87acecc1a33fe1be06dd.gif"]]];
    self._mSubheaderLabel.text = @"This is a video type of object.";
    
    return self;
}

@end
