//
//  BMIModel.m
//  BMI
//
//  Created by Joao Lucas on 13/08/20.
//  Copyright © 2020 Joao Lucas. All rights reserved.
//
#import "BMIModel.h"
#import <Foundation/Foundation.h>

@interface BMIModel()

@end

@implementation BMIModel

- (double)resultBMI:(double)weight : (double)height {
    return weight / (height * height);
}

@end
