//
//  DetalheViewController.m
//  DesafioAula3
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//

#import "DetalheViewController.h"

@interface DetalheViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lb_item;

@end

@implementation DetalheViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _lb_item.text=_item;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
