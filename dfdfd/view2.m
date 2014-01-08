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
        int (^ sum_2)(int x,int y);
        sum_2 =^int(int x,int y){
            return x+y;
        };
        NSLog(@"sum 4 + 5 is : %d",sum_2(4,5));
    }
    return self;
}
-(void)Effect_Transition{
    [UIView beginAnimations:@"animation2" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration: 0.7];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.navigationController.view cache:NO];
    [UIView commitAnimations];
}
-(void)viewDidLayoutSubviews{
    UIBarButtonItem *barBtnItem = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(pop)];
    self.navigationItem.rightBarButtonItem= barBtnItem;
}
-(void)pop{
    [self.navigationController popViewControllerAnimated:YES];
    [self Effect_Transition];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"view2";
    [self ReadingData];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ReadData_plist{
    
    
}

-(NSArray *)ReadingData : (NSString *)pathForResourceName : (NSArray *)array : (NSString *)dictionaryValue{
    // Find out the path of recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:pathForResourceName ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    return  array = [dict objectForKey:dictionaryValue];
}
-(void)ReadingData{
    NSArray *array = [[NSArray alloc]init];
    array = [self ReadingData:@"content" :array :@"Age"];
    NSLog(@"phan tu dau :%@",array[0]);
    
}
@end
