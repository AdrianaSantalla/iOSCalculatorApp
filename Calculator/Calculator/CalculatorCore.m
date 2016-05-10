//
//  CalculatorCore.m
//  Calculator
//
//  Created by Adriana on 04/05/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

#import "CalculatorCore.h"

@implementation CalculatorCore

@synthesize operands = _operands;

-(void)pushOperand:(double)operand {
    NSLog(@"operand %f",operand);
    [self.operands addObject:[NSNumber numberWithDouble:operand]];
    NSLog(@"array %@",_operands);
}

-(void)clearOperands {
    [self.operands removeAllObjects];
}

-(double)performOperation:(NSString *)operation {
    double result = [[_operands objectAtIndex:0] doubleValue];;
    //double tmp = [operands]
    for(int i=1; i<[self.operands count]; i++) {
        if([operation isEqualToString:@"+"])
            result += [[_operands objectAtIndex:i] doubleValue];
        if([operation isEqualToString:@"-"])
            result -= [[_operands objectAtIndex:i] doubleValue];
        if([operation isEqualToString:@"*"])
            result *= [[_operands objectAtIndex:i] doubleValue];
        if([operation isEqualToString:@"/"])
            result /= [[_operands objectAtIndex:i] doubleValue];
    }
    [_operands removeAllObjects];
    //[_operands addObject:[NSNumber numberWithDouble:result]];
    return result;
}

-(NSMutableArray *)operands {
    NSLog(@"lazy initialization");
    if(!_operands) {
        _operands = [[NSMutableArray alloc] init];
    }
    return _operands;
}

/*-(void)setOperands:(NSMutableArray *)operands
{
}*/
@end
