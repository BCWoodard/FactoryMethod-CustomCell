//
//  CustomCell.m
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
}


- (instancetype)initWithClassName {
    
    self = [super init];
    
    if (self) {
        self.textLabel.text = NSStringFromClass([self class]);
    }
    
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
