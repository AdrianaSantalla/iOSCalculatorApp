	//
//  ViewController.m
//  Calculator
//
//  Created by Adriana on 20/04/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorCore.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonNumber:(UIButton *)sender {
    //NSLog(@"Button clicked %@",sender.currentTitle);
    if ( [_display.text isEqualToString:@"0"])
        _display.text = @"";
    _display.text = [_display.text stringByAppendingString:[sender currentTitle]];
   // NSString * text = label.text;
    //[core pushOperand:[_display.text doubleValue]];
    
}
- (IBAction)buttonOperator:(UIButton *)sender {
    NSLog(@"buttonOperator %@",sender.currentTitle);
    double result = [core performOperation:[sender currentTitle]];
    _display.text = [NSString stringWithFormat:@"%f",result];
}

- (IBAction)buttonPush {
    NSLog(@"buttonPush %@",_display.text);
    [core pushOperand:[_display.text doubleValue]];
    _display.text = @"0";
}

- (IBAction)buttonClear {
    _display.text = @"0";
    [core clearOperands];
}

-(void) viewDidLoad {
    core = [[CalculatorCore alloc] init];
}

@end
