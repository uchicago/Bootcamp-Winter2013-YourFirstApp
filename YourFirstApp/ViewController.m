//
//  ViewController.m
//  YourFirstApp
//
//  Created by T. Andrew Binkowski on 3/4/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/*******************************************************************************
 * @method          viewDidLoad
 * @abstract        Called when the view loads
 * @description
 ******************************************************************************/
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

/*******************************************************************************
 * @method          didReceiveMemoryWarning
 * @abstract
 * @description      
 ******************************************************************************/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField Delegate Methods
/*******************************************************************************
 * @method          textFieldShouldReturn:
 * @abstract        Called when the return button is pressed on the keyboard
 * @description      
 ******************************************************************************/
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"%@",textField);
    
    // Test which textField we are dealing with
    // Useful for multiple UITextFields on save view controller
    if (textField == self.passwordField) {

        // Test if the password is "abc123"
        if ([textField.text isEqualToString:@"abc123"]) {

            // Update the greeting label
            self.greetingLabel.text = @"Password Accepted";
            
            // Change the view controller's main view background color
            self.view.backgroundColor = [UIColor greenColor];

        } else {
            
            // Update the greeting label
            self.greetingLabel.text = @"Access Denied";

            // Change the view controller's main view background color
            self.view.backgroundColor = [UIColor redColor];
        }
    }

    // Dismiss the keyboard
    [textField resignFirstResponder];
    
    return YES;
}

/*******************************************************************************
 * @method          tapButton:
 * @abstract        Called when the button is tapped
 * @description     
 ******************************************************************************/
- (IBAction)tapButton:(UIButton *)sender
{
    self.greetingLabel.text = @"Goodbye";
}
@end
