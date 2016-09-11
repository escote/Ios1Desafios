//
//  ViewEstrela.m
//  Aula05
//
//  Created by ADMINISTRADOR on 24/08/16.
//  Copyright © 2016 IESB. All rights reserved.
//

#import "ViewEstrela.h"

@implementation ViewEstrela

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configurar];
    }
    return self;
}

- (void) configurar {
    [self setBackgroundColor:[UIColor whiteColor]];
}


- (void)drawRect:(CGRect)rect {
    
    int mtop = 30;
    
    float e_ponta = 0.050*rect.size.width;
    
    int altura = rect.size.height-mtop;
    int largura = rect.size.width;
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
    
    UIBezierPath *estrela = [UIBezierPath new];
    
    [estrela moveToPoint:CGPointMake(largura/2, 0+mtop)];
    
    [estrela addLineToPoint:CGPointMake((largura/2)+e_ponta, (altura/2)-e_ponta+mtop)];
    [estrela addLineToPoint:CGPointMake(largura, (altura/2)+mtop)];
    [estrela addLineToPoint:CGPointMake((largura/2)+e_ponta, (altura/2)+e_ponta+mtop)];
    [estrela addLineToPoint:CGPointMake((largura/2), (altura)+mtop)];
    [estrela addLineToPoint:CGPointMake((largura/2)-e_ponta, (altura/2)+e_ponta+mtop)];
    [estrela addLineToPoint:CGPointMake(0, (altura/2)+mtop)];
    [estrela addLineToPoint:CGPointMake((largura/2)-e_ponta, (altura/2)-e_ponta+mtop)];
    
    
    [estrela closePath];
    
    
    [[UIColor yellowColor] setFill];
    
    [estrela fill];
    [estrela stroke];

    
    
    NSMutableAttributedString *norte =
    
    [[NSMutableAttributedString alloc] initWithString:@"Norte"];
    
    
    [norte addAttribute:NSFontAttributeName
                 value:[UIFont fontWithName:@"Courier" size:20]
                 range:NSMakeRange(0, norte.length)];
    
    [norte addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blueColor]
                 range:NSMakeRange(0, norte.length)];
    
    [norte drawAtPoint:CGPointMake((largura-norte.size.width)/2
                                   , 0)];

    
    
    
    UIImage *pikachu = [UIImage imageNamed:@"pikachu"];
    
    
    
    
    [pikachu drawInRect:CGRectMake(0.0f, 2*(rect.size.height/3), rect.size.width/3, rect.size.height/3)];
    
    
    
}


@end
