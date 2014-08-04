//
//  FirstViewController.m
//  crmDemo
//
//  Created by liyang on 14-8-4.
//  Copyright (c) 2014年 minxing. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
{
    UIButton *testButton;
}

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testButton.frame = CGRectMake(50, 80, 60, 30);
    testButton.backgroundColor = [UIColor grayColor];
    testButton.titleLabel.text = @"test";
    testButton.titleLabel.textColor = [UIColor blackColor];
    [testButton addTarget:self action:@selector(showSecondView:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:testButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)showSecondView:(UIButton *)sender
{
    NSLog(@"----show the second view-----");
}

@end
