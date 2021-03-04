//
//  ResultViewController.m
//  BMI
//
//  Created by Joao Lucas on 04/03/21.
//  Copyright © 2021 Joao Lucas. All rights reserved.
//

#import "ResultViewController.h"
#import "ResultView.h"

@interface ResultViewController ()

@property ResultView *resultView;

@end

@implementation ResultViewController

- (void)loadView {
    self.resultView = [[ResultView alloc] init];
    self.view = self.resultView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
    [self setupLoadResults];
}

- (void)setupView {
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"Result BMI";
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
}

- (void)setupLoadResults {
    double result = [self.resultBMI doubleValue];
    NSNumber *resultValue = [NSNumber numberWithDouble:result];
    self.resultView.resultLabel.text = [resultValue stringValue];
    [self verifyTableBMI:result];
}

- (void)verifyTableBMI:(double)result {
    if (result <= 18.5) {
        self.resultView.photo.image = [UIImage imageNamed:@"skinny"];
    } else if (result >= 18.5 && result <= 24.9) {
        self.resultView.photo.image = [UIImage imageNamed:@"skinny"];
    } else if (result >= 25 && result <= 29.9 ) {
        self.resultView.photo.image = [UIImage imageNamed:@"overweight"];
    } else {
        self.resultView.photo.image = [UIImage imageNamed:@"fat"];
    }
}

@end
