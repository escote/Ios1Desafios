//
//  ViewController.m
//  DesafioAula5
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//


#import "ViewController.h"
#import "ViewEstrela.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    ViewEstrela *clip = [[ViewEstrela alloc] initWithFrame:CGRectMake(30, 30, 300, 330)];
    [self.view addSubview:clip];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
