//
//  PinController.m
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import "PinController.h"

@interface PinController ()

@property (weak, nonatomic) IBOutlet UILabel *keyboardLabel;

@end

@implementation PinController

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.keyboardLabel.text = self.keyboard;
}


@end
