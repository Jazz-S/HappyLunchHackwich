//
//  ViewController.m
//  HappyLunch
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "MenuViewController.h"
#import "FoodTableViewCell.h"
#import "DrinkTableViewCell.h"

@interface MenuViewController ()<UITableViewDelegate,UITableViewDataSource,FoodTableViewCellDelegate,DrinkTableViewCellDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *foodImageView;
@property (weak, nonatomic) IBOutlet UIImageView *drinkImageView;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (indexPath.row == 0) {
        FoodTableViewCell *foodCell = [tableView dequeueReusableCellWithIdentifier:@"foodCellID"];
        foodCell.delegate = self;

        return foodCell;
    }
    else
    {
        DrinkTableViewCell *drinkCell = [tableView dequeueReusableCellWithIdentifier:@"drinkCellID"];
        drinkCell.delegate = self;

        return drinkCell;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
-(void)drinkTableViewCellDidTapButton:(UIButton *)button
{
    self.drinkImageView.image = button.imageView.image;
}
-(void)shouldDisplayImageForButton:(UIButton *)button
{
    self.foodImageView.image = button.imageView.image;
}

@end
