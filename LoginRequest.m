//
//  LoginRequest.m
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import "LoginRequest.h"

@implementation LoginRequest

+(NSDictionary*) JSONKeyPathsByPropertyKey
{
    return @{@"encryptedPin" : @"pin"};
}

@end
