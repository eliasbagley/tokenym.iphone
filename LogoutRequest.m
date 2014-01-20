//
//  LogoutRequest.m
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import "LogoutRequest.h"

@implementation LogoutRequest

+(NSDictionary*)JSONKeyPathsByPropertyKey
{
    return @{@"apiKey" : @"api_key",
             @"userId" : @"user_id"
             };
}

@end
