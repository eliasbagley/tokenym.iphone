//
//  LoginController.m
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import "LoginController.h"
#import "TokenymAPIClient.h"
#import "PinController.h"

@interface LoginController ()

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation LoginController

- (IBAction)requestKeyboardButtonTapped:(id)sender {
    NSString* emailAddress = self.emailTextField.text;

    [[TokenymAPIClient sharedClient] requestKeyboard:emailAddress success:^(NSString *keyboard) {
        NSLog(@"keyboard: %@", keyboard);
        PinController* pinController = [self.storyboard instantiateViewControllerWithIdentifier:@"pinController"];
        pinController.keyboard = keyboard;
        [self.navigationController pushViewController:pinController animated:YES];
    } failure:^(NSError *error) {
        NSLog(@"error");
    }];
}

@end
