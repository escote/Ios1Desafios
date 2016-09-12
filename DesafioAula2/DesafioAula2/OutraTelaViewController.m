//
//  OutraTelaViewController.m
//  DesafioAula2
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//

#import "OutraTelaViewController.h"

@interface OutraTelaViewController ()

@property (strong, nonatomic) IBOutlet UITextField *tf_texto;

@end

@implementation OutraTelaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *btVoltar =
    [[UIBarButtonItem alloc] initWithTitle:@"Voltar"
                                     style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(voltar:)];
    [self.navigationItem setLeftBarButtonItem:btVoltar];
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tf_texto setText:self.informacao];
}

- (IBAction)btVoltar:(id)sender {
    [self performSegueWithIdentifier:@"voltarParaUmaTela" sender:sender];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) voltar: (UIBarButtonItem *) sender {
    [self performSegueWithIdentifier:@"voltarParaUmaTela" sender:sender];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"voltarParaUmaTela"]) {
        self.informacao=self.tf_texto.text;
    }
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
