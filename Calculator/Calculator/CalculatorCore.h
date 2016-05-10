//
//  CalculatorCore.h
//  Calculator
//
//  Created by Adriana on 04/05/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorCore : NSObject

//@property(nonatomic, weak) NSMutableArray *operands;
@property(nonatomic) NSMutableArray *operands;

-(void)pushOperand: (double) operand;

-(void)clearOperands;

-(double)performOperation: (NSString *) operation;

@end
