//
//  ViewController.m
//  FactoryMethod-CustomCell
//
//  Created by Brad Woodard on 1/6/15.
//  Copyright (c) 2015 Brad Woodard. All rights reserved.
//

#import "ViewController.h"
#import "CustomCellFactory.h"

#define kCustomCell0 @"CustomCell0"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *mTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 240.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // Implement the cell factory
    CustomCellFactory *factory = [CustomCellFactory factory];
    
    UITableViewCell *cell = nil;
    
    switch (indexPath.row) {
        case 0:
            cell = [[factory cellForKey:@"CustomCell0" fromTableView:tableView forIndexPath:indexPath] initWithClassName];
            break;
        case 1:
            cell = [[factory cellForKey:@"CustomCell1" fromTableView:tableView forIndexPath:indexPath] initWithClassName];
            break;
        case 2:
            cell = [[factory cellForKey:@"CustomCell2" fromTableView:tableView forIndexPath:indexPath] initWithClassName];
            break;
        default:
            break;
    }
    
    return cell;
    
}


#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
