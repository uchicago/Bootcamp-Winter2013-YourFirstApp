//
//  ViewController.h
//  YourFirstApp
//
//  Created by T. Andrew Binkowski on 3/4/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)tapButton:(UIButton *)sender;
@end
