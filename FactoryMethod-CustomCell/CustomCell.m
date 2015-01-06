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

//- (NSString *)setTextLabel {
//    return nil;
//}
//
//- (NSString *)cellLabelFromClassName {
//    return [NSStringFromClass([self class]) lowercaseString];
//}

- (instancetype)initWithClassName {
    
    self = [super init];
    
    if (self) {
        self.textLabel.text = [NSStringFromClass([self class]) lowercaseString];
    }
    
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
