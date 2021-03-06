//
//  ResultView.h
//  BMI
//
//  Created by Joao Lucas on 04/03/21.
//  Copyright © 2021 Joao Lucas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResultView : UIView

@property (strong, nonatomic) UIView *contentResult;
@property (strong, nonatomic) UILabel *resultLabel;
@property (strong, nonatomic) UIImageView *photo;

@end

NS_ASSUME_NONNULL_END
