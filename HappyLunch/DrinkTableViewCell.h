//
//  DrinkTableViewCell.h
//  HappyLunch
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DrinkTableViewCellDelegate <NSObject>

-(void)drinkTableViewCellDidTapButton:(UIButton *)button;

@end

@interface DrinkTableViewCell : UITableViewCell

@property id<DrinkTableViewCellDelegate> delegate;

@end
