//
//  ANTMasterViewController.m
//  AnimationTest
//
//  Created by Cornelius Schiffer on 26.06.13.
//  Copyright (c) 2013 wetter.com. All rights reserved.
//

#import "ANTMasterViewController.h"

#import "ANTDetailViewController.h"
#import "ANTTableViewCell.h"

@interface ANTMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation ANTMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    _objects = [[NSMutableArray alloc] init];
    for (int i = 0; i < 1000; i++) {
        [_objects addObject:[NSString stringWithFormat:@"Row %d", i]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ANTTableViewCell *cell = (ANTTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.alpha = 0.0;

    cell.textLabel.text = _objects[indexPath.row];
    [UIView animateWithDuration:3.0 animations:^{
        cell.imageView.alpha = 1.0;
    }];
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
}

@end
