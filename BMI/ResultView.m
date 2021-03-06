//
//  ResultView.m
//  BMI
//
//  Created by Joao Lucas on 04/03/21.
//  Copyright © 2021 Joao Lucas. All rights reserved.
//

#import "ResultView.h"

@interface ResultView ()

@property (strong, nonatomic) UIView *contentResult;

@end

@implementation ResultView

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
    self.contentResult = [[UIView alloc] init];
    self.contentResult.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.contentResult.backgroundColor = [UIColor darkGrayColor];
    
    self.resultLabel = [[UILabel alloc] init];
    self.resultLabel.translatesAutoresizingMaskIntoConstraints = false;
    self.resultLabel.textColor = [UIColor whiteColor];
    self.resultLabel.font = [UIFont boldSystemFontOfSize:20];
    
    self.photo = [[UIImageView alloc] init];
    self.photo.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.photo.image = [UIImage imageNamed:@"overweight"];
}

- (void)buildViewHierarchy {
    [self addSubview:self.contentResult];
    [self.contentResult addSubview:self.resultLabel];
    [self addSubview:self.photo];
}

- (void)setupConstraints {
    [self.contentResult.topAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.topAnchor constant:30].active = YES;
    [self.contentResult.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:40].active = YES;
    [self.contentResult.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-40].active = YES;
    [self.contentResult.heightAnchor constraintEqualToConstant:55].active = YES;
    
    [self.resultLabel.centerXAnchor constraintEqualToAnchor:self.contentResult.centerXAnchor].active = YES;
    [self.resultLabel.centerYAnchor constraintEqualToAnchor:self.contentResult.centerYAnchor].active = YES;
    
    [self.photo.topAnchor constraintEqualToAnchor:self.contentResult.bottomAnchor constant:50].active = YES;
    [self.photo.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
    [self.photo.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-50].active = YES;
    [self.photo.widthAnchor constraintEqualToConstant:250].active = YES;
}

@end
