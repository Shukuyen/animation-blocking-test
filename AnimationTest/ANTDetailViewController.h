//
//  ANTDetailViewController.h
//  AnimationTest
//
//  Created by Cornelius Schiffer on 26.06.13.
//  Copyright (c) 2013 wetter.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
