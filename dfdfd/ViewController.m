//
//  ViewController.m
//  dfdfd
//
//  Created by Tran Trong Hien on 2014/01/06.
//  Copyright (c) 2014年 framgia. All rights reserved.
//

#import "ViewController.h"
#define kImageHeight		200.0
#define kImageWidth			250.0
#define kTransitionDuration	0.75
#define kTopPlacement		80.0	// y coord for the images

@interface ViewController ()

@end

@implementation ViewController
@synthesize v;
- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self Effect_Transition];
    v = [[view2 alloc]init];
    v.view.backgroundColor = [UIColor grayColor];
   
    self.title = @"ViewController";
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(aMethod) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Show View" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
     //[self.navigationController pushViewController: v animated:NO];
    [self.view addSubview:button];
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)Effect_Transition{
    [UIView beginAnimations:@"animation2" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration: 0.7];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.navigationController.view cache:NO];
    NSLog(@"dfd");
    [UIView commitAnimations];
}
-(void)aMethod{
    [self.navigationController pushViewController: v animated:NO];
    [self Effect_Transition];
   

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
