//
//  TokenRequest.m
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import "TokenRequest.h"

@implementation TokenRequest

+(NSDictionary*) JSONKeyPathsByPropertyKey
{
    return @{@"userId" : @"user_id",
             @"sharedSecret" : @"shared_secret",
             @"apiKey" : @"api_key"
             };
}

@end
