//
//  TokenymAPIClient.m
//  Tokenym
//
//  Created by Elias Bagley on 10/1/13.
//  Copyright (c) 2013 Elias Bagley. All rights reserved.
//

#import "TokenymAPIClient.h"

@implementation TokenymAPIClient

+(instancetype)sharedClient
{
    static TokenymAPIClient* _sharedClient;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString* tokenymAPIUrl = @"https://tokenym.appspot.com";
        _sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:tokenymAPIUrl]];
    });

    return _sharedClient;
}

-(void) getToken:(NSString *)moniker success:(void (^)())success failure:(APIClientErrorBlock)failure
{
    [self GET:@"token" parameters:@{} success:^(NSURLSessionDataTask *task, id responseObject)
    {
        if (success)
            success();
    } failure:^(NSURLSessionDataTask *task, NSError *error)
    {
        if (failure)
            failure(error);
    }];
}

@end