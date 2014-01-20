//
//  RegisterController.m
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import "RegisterController.h"
#import "TokenymAPIClient.h"

@interface RegisterController ()

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;

@end

@implementation RegisterController

- (IBAction)registerButtonTapped:(id)sender
{
    NSString* username = self.usernameTextField.text;
    NSString* password = self.passwordTextField.text;

    if (self.usernameTextField.text.length > 0 || self.passwordTextField.text.length > 0)
    {
        [[TokenymAPIClient sharedClient] registerWithEmailAddress:username password:password success:^{
            NSLog(@"register succeded. Check email for confirmation");
        } failure:^(NSError *error) {
            NSLog(@"registration failed");
        }];
    }
    else
    {
        // display error
    }
}

@end
