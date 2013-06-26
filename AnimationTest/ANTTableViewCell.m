//
//  ANTTableViewCell.m
//  AnimationTest
//
//  Created by Cornelius Schiffer on 26.06.13.
//  Copyright (c) 2013 wetter.com. All rights reserved.
//

#import "ANTTableViewCell.h"

@implementation ANTTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
