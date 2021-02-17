//
//  BMITests.m
//  BMITests
//
//  Created by Joao Lucas on 13/08/20.
//  Copyright © 2020 Joao Lucas. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BMIModel.h"

@interface BMITests : XCTestCase

@property BMIModel *bmiModel;

@end

@implementation BMITests

- (void)setUp {
    _bmiModel = [[BMIModel alloc] init];
}

- (void)tearDown {
    _bmiModel = nil;
}

- (void)testVerifyResultCorrect {
    double weight = 50;
    double height = 1.50;
    
    double result = [_bmiModel resultBMI: weight : height];
    
    XCTAssertEqual(result, 22.22222222222222);
}

@end
