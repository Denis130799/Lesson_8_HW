//
//  ThirdViewController.m
//  UiElements
//
//  Created by Denis on 05.09.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
- (IBAction)backAction:(UIButton *)sender
{
    NSArray *viewControllers = self.navigationController.viewControllers;
    UIViewController *firstVc = viewControllers[1];
    
    
    [self.navigationController popToViewController:firstVc animated:YES];
}



@end
