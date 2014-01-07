//
//  view2.m
//  dfdfd
//
//  Created by Tran Trong Hien on 2014/01/06.
//  Copyright (c) 2014年 framgia. All rights reserved.
//

#import "view2.h"

@interface view2 ()

@end

@implementation view2

- (id)init{
    self = [super init];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor grayColor];

    }
    return self;
}
-(void)Effect_Transition{
    [UIView beginAnimations:@"animation2" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration: 0.7];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.navigationController.view cache:NO];
    NSLog(@"dfd");
    [UIView commitAnimations];
}
-(void)viewDidLayoutSubviews{
    UIBarButtonItem *barBtnItem = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(pop)];
    self.navigationItem.leftBarButtonItem= barBtnItem;
    NSLog(@"dd");
}
-(void)pop{
    [self.navigationController popViewControllerAnimated:YES];
    [self Effect_Transition];
}- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"view2";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
