//
//  ViewController.m
//  DrawViewPracitce
//
//  Created by RexMa on 15/8/27.
//  Copyright (c) 2015年 RexMa. All rights reserved.
//

#import "ViewController.h"
#import "UIBezierPathDrawView.h"
#import "UIGraphicsDrawView.h"

#define screenWidth [UIScreen mainScreen].bounds.size.width
#define screenHeight [UIScreen mainScreen].bounds.size.height/3

@interface ViewController ()

@property (strong, nonatomic) UIBezierPathDrawView *bezierPathDrawView;

@property (strong, nonatomic) UIGraphicsDrawView *graphicsDrawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //UIBezierPath Draw View(include Arc and Line)
    self.bezierPathDrawView = [[UIBezierPathDrawView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    //Quartz2D Draw View(include Arc and Line)
    self.graphicsDrawView = [[UIGraphicsDrawView alloc] initWithFrame:CGRectMake(0, screenHeight, screenWidth, screenHeight)];
    
    [self.view addSubview:self.bezierPathDrawView];
    [self.view addSubview:self.graphicsDrawView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
