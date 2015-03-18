//
//  DrinkTableViewCell.m
//  HappyLunch
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "DrinkTableViewCell.h"

@implementation DrinkTableViewCell
- (IBAction)selectedButtonOnTap:(UIButton *)sender
{//calls our method
    [self.delegate drinkTableViewCellDidTapButton:sender];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
