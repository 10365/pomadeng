//
//  ViewController.m
//  paoMaDeng
//
//  Created by mac on 17/7/12.
//  Copyright © 2017年 liying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"跑马灯";
    self.view.backgroundColor=[UIColor whiteColor];
    
    [self setUI];
}

-(void)setUI{
    label=[[UILabel alloc] initWithFrame:CGRectMake(0, 100, 150, 20)];
    label.text=@"跑马灯好看";
    [self.view addSubview:label];
    
    CGRect frame = label.frame;
    frame.origin.x = -150;
    label.frame = frame;
    [UIView beginAnimations:@"animation"context:NULL];
    [UIView setAnimationDuration:5.0f];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationRepeatCount:200];
    frame = label.frame;
    frame.origin.x =350;
    label.frame = frame;
    [UIView commitAnimations];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
