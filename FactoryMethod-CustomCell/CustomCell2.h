//
//  CustomCell2.h
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "CustomCell.h"

@interface CustomCell2 : CustomCell <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *_mHeadlineLabel;
@property (weak, nonatomic) IBOutlet UIWebView *_mWebView;
@property (weak, nonatomic) IBOutlet UILabel *_mSubheaderLabel;


@end
