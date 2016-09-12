//
//  TableViewController.m
//  DesafioAula3
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//

#import "TableViewController.h"
#import "DetalheViewController.h"

@interface TableViewController ()

@property (strong, nonatomic) NSArray<NSString *> *lista;
@property (strong, nonatomic) NSString *selecao;


@end

@implementation TableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSBundle *mb = [NSBundle mainBundle];
    NSString *path = [mb pathForResource:@"lista" ofType:@"plist"];
    
    self.lista = [NSArray arrayWithContentsOfFile:path];
    
    for (NSArray *item in self.lista) {
        NSLog(@"%@", item);
    }
    
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selecao=[self.lista objectAtIndex:indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    return self.lista.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"itemLista"
                                    forIndexPath:indexPath];
    
    if (indexPath.row % 2) {
        [cell setBackgroundColor:[UIColor yellowColor]];
    }else {
        [cell setBackgroundColor:[UIColor lightGrayColor]];
    }
    
    NSString *nome = [self.lista objectAtIndex:indexPath.row];
    
    [cell.textLabel setTextColor:[UIColor darkGrayColor]];
    
    [cell.textLabel setText:nome];
    
    
    return cell;
    
    
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detalhaItemSegue"]) {
        NSIndexPath *section = [self.tableView indexPathForSelectedRow];
        NSString *valor = [_lista objectAtIndex:section.row];
        
        DetalheViewController *detalhe = segue.destinationViewController;
        
//        NSString *valor = self.selecao;
        [detalhe setItem:valor];
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
