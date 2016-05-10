//
//  ViewController.h
//  Calculator
//
//  Created by Adriana on 20/04/16.
//  Copyright © 2016 Adriana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorCore.h"

@interface ViewController : UIViewController
{
    CalculatorCore *core;
}
@property (weak, nonatomic) IBOutlet UILabel *display;
//weak means that if no strong pointer it holding this element, it will be destroyed
//strong meand that the pointer will keep alive


@end