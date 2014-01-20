//
//  RedeemTokenRequest.m
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import "RedeemTokenRequest.h"

@implementation RedeemTokenRequest

+(NSDictionary*) JSONKeyPathsByPropertyKey
{
    return @{@"apiKey" : @"api_key",
             @"userId" : @"user_id",
             @"sharedSecret" : @"shared_secret"
             };
}

@end
