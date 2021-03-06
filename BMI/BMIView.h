//
//  BMIView.h
//  BMI
//
//  Created by Joao Lucas on 03/03/21.
//  Copyright © 2021 Joao Lucas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BMIView : UIView

@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UITextField *weightField;
@property (strong, nonatomic) UITextField *heightField;
@property (strong, nonatomic) UIButton *buttonLogin;

@end

NS_ASSUME_NONNULL_END
