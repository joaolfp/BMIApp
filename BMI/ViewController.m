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
    
    [self setupView];
    [self setupComponents];
}

- (void) setupView {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void) setupComponents {
    self.imageView = [[UIImageView alloc] init];
    self.imageView.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.imageView.image = [UIImage imageNamed:@"logo"];
    [self.view addSubview: self.imageView];
    
    [self.imageView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:30].active = YES;
    [self.imageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.imageView.widthAnchor constraintEqualToConstant:200].active = YES;
    [self.imageView.heightAnchor constraintEqualToConstant:150].active = YES;
    
    self.weightField = [[UITextField alloc] init];
    self.weightField.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.weightField.placeholder = @"Enter your weight";
    self.weightField.layer.borderWidth = 1;
    self.weightField.layer.borderColor = [UIColor grayColor].CGColor;
    self.weightField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.weightField];
    
    [self.weightField.topAnchor constraintEqualToAnchor:self.imageView.bottomAnchor constant:16].active = YES;
    [self.weightField.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:40].active = YES;
    [self.weightField.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40].active = YES;
    [self.weightField.heightAnchor constraintEqualToConstant:40].active = YES;
    
    self.heightField = [[UITextField alloc] init];
    self.heightField.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.heightField.placeholder = @"Enter your height";
    self.heightField.layer.borderWidth = 1;
    self.heightField.layer.borderColor = [UIColor grayColor].CGColor;
    self.heightField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.heightField];
    
    [self.heightField.topAnchor constraintEqualToAnchor:self.weightField.bottomAnchor constant:8].active = YES;
    [self.heightField.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:40].active = YES;
    [self.heightField.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40].active = YES;
    [self.heightField.heightAnchor constraintEqualToConstant:40].active = YES;
    
    self.buttonLogin = [[UIButton alloc] init];
    self.buttonLogin.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.buttonLogin.backgroundColor = [UIColor blackColor];
    [self.buttonLogin setTitle:@"CALCULATE BMI" forState:UIControlStateNormal];
    [self.buttonLogin setTintColor:[UIColor whiteColor]];
    [self.buttonLogin addTarget:self action:@selector(imcTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonLogin];
    
    [self.buttonLogin.topAnchor constraintEqualToAnchor:self.heightField.bottomAnchor constant:20].active = YES;
    [self.buttonLogin.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:40].active = YES;
    [self.buttonLogin.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40].active = YES;
    [self.buttonLogin.heightAnchor constraintEqualToConstant:50].active = YES;
}

- (void) imcTap {
    [self result:self.weightField.text :self.heightField.text];
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
