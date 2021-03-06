//
//  BMIView.m
//  BMI
//
//  Created by Joao Lucas on 03/03/21.
//  Copyright © 2021 Joao Lucas. All rights reserved.
//

#import "BMIView.h"

@interface BMIView ()

@end

@implementation BMIView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupBaseView];
    }
    return self;
}

- (void)setupBaseView {
    [self setupViews];
    [self buildViewHierarchy];
    [self setupConstraints];
}

- (void)setupViews {
    self.imageView = [[UIImageView alloc] init];
    self.imageView.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.imageView.image = [UIImage imageNamed:@"logo"];
    
    self.weightField = [[UITextField alloc] init];
    self.weightField.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.weightField.placeholder = @"Enter your weight";
    self.weightField.layer.borderWidth = 1;
    self.weightField.layer.borderColor = [UIColor grayColor].CGColor;
    self.weightField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.heightField = [[UITextField alloc] init];
    self.heightField.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.heightField.placeholder = @"Enter your height";
    self.heightField.layer.borderWidth = 1;
    self.heightField.layer.borderColor = [UIColor grayColor].CGColor;
    self.heightField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.buttonLogin = [[UIButton alloc] init];
    self.buttonLogin.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.buttonLogin.backgroundColor = [UIColor blackColor];
    [self.buttonLogin setTitle:@"CALCULATE BMI" forState:UIControlStateNormal];
    [self.buttonLogin setTintColor:[UIColor whiteColor]];
}

- (void)buildViewHierarchy {
    [self addSubview:self.imageView];
    [self addSubview:self.weightField];
    [self addSubview:self.heightField];
    [self addSubview:self.buttonLogin];
}

- (void)setupConstraints {
    [self.imageView.topAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.topAnchor constant:30].active = YES;
    [self.imageView.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
    [self.imageView.widthAnchor constraintEqualToConstant:200].active = YES;
    [self.imageView.heightAnchor constraintEqualToConstant:150].active = YES;
    
    [self.weightField.topAnchor constraintEqualToAnchor:self.imageView.bottomAnchor constant:16].active = YES;
    [self.weightField.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:40].active = YES;
    [self.weightField.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-40].active = YES;
    [self.weightField.heightAnchor constraintEqualToConstant:40].active = YES;
    
    [self.heightField.topAnchor constraintEqualToAnchor:self.weightField.bottomAnchor constant:8].active = YES;
    [self.heightField.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:40].active = YES;
    [self.heightField.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-40].active = YES;
    [self.heightField.heightAnchor constraintEqualToConstant:40].active = YES;
    
    [self.buttonLogin.topAnchor constraintEqualToAnchor:self.heightField.bottomAnchor constant:20].active = YES;
    [self.buttonLogin.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:40].active = YES;
    [self.buttonLogin.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-40].active = YES;
    [self.buttonLogin.heightAnchor constraintEqualToConstant:50].active = YES;
}

@end
