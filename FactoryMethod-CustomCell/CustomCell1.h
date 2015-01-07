//
//  CustomCell1.h
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "CustomCell.h"

@interface CustomCell1 : CustomCell

@property (weak, nonatomic) IBOutlet UIImageView *_mImageView;
@property (weak, nonatomic) IBOutlet UILabel *_mHeadlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *_mSubheadLabel;

@end
