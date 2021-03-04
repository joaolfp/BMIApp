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

- (void)loadView {
    self.bmiView = [[BMIView alloc] init];
    self.view = self.bmiView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
    [self setupComponents];
}

- (void) setupView {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void) setupComponents {
    [self.bmiView.buttonLogin addTarget:self action:@selector(bmiTap) forControlEvents:UIControlEventTouchUpInside];
}

- (void) bmiTap {
    [self result:self.bmiView.weightField.text :self.bmiView.heightField.text];
}

- (void) result: (NSString *)weight :(NSString *)height {
    double weightValue = [weight doubleValue];
    double heightValue = [height doubleValue];

    BMIModel *resultBMI = [[BMIModel alloc] init];
    
    if ([weight isEqualToString: @""] || [height isEqualToString: @""]) {
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
