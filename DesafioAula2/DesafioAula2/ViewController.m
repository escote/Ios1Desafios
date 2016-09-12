//
//  ViewController.m
//  DesafioAula2
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//

#import "ViewController.h"
#import "OutraTelaViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *texto;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) unwindDaOutraTelaParaUmaTela: (UIStoryboardSegue *) segue {
    OutraTelaViewController *outraTela = segue.sourceViewController;
    [self.texto setText:outraTela.informacao];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"irParaOutraTelaSegue"]) {
        OutraTelaViewController *outraTela = segue.destinationViewController;
        
        NSString *valor = self.texto.text;
        [outraTela setInformacao:valor];
    }
}

@end
