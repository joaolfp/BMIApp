//
//  ViewController.m
//  BMI
//
//  Created by Joao Lucas on 13/08/20.
//  Copyright © 2020 Joao Lucas. All rights reserved.
//

#import "ViewController.h"
#import "BMIModel.h"
#import "SCLAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)BMI:(id)sender {
    [self result: _weightText.text : _heightText.text];
}

- (void) result: (NSString *)weight :(NSString *)height {
    double weightValue = [weight doubleValue];
    double heightValue = [height doubleValue];

    BMIModel *resultBMI = [[BMIModel alloc] init];
    
    if ([weight isEqualToString: @""] && [height isEqualToString: @""]) {
        [self showWarningAlert];
    } else {
        double result = [resultBMI resultBMI:weightValue :heightValue];
        [self showAlert: result];
    }
}

- (void) showAlert: (double)result {
    NSNumber *resultValue = [NSNumber numberWithDouble:result];
    NSString *resultText = [resultValue stringValue];

    SCLAlertView *alert = [[SCLAlertView alloc] init];
    [alert showSuccess:self title:@"BMI is" subTitle:resultText closeButtonTitle:@"OK" duration:0.0f];
}

- (void) showWarningAlert {
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    [alert showWarning:self title:@"Warning" subTitle:@"Please fill in all fields" closeButtonTitle:@"OK" duration:0.0f];
}

@end
