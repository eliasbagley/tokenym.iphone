//
//  TokenymAPIClient.m
//  Tokenym
//
//  Created by Elias Bagley on 10/1/13.
//  Copyright (c) 2013 Elias Bagley. All rights reserved.
//

#import "TokenymAPIClient.h"
#import "LoginRequest.h"
#import "LogoutRequest.h"
#import "RedeemTokenRequest.h"
#import "TokenRequest.h"

@implementation TokenymAPIClient

+(instancetype)sharedClient
{
    static TokenymAPIClient* _sharedClient;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString* tokenymAPIUrl = @"http://localhost:5000";
        _sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:tokenymAPIUrl]];
    });

    return _sharedClient;
}

#pragma mark - Login methods

-(void) registerWithEmailAddress:(NSString*)emailAddress password:(NSString*)password success:(void (^)())success failure:(APIClientErrorBlock)failure
{
    [self POST:@"user/register" parameters:@{@"email" : emailAddress, @"password" : password} success:^(NSURLSessionDataTask *task, id responseObject) {
        if (success)
        {
            success();
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}

-(void) loginWithRequest:(LoginRequest*)loginRequest success:(void (^)())success failure:(APIClientErrorBlock)failure
{
    [self POST:@"user/login" parameters:[MTLJSONAdapter JSONDictionaryFromModel:loginRequest] success:^(NSURLSessionDataTask *task, id responseObject) {
        if (success)
        {
            success();
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}

-(void) logoutWithRequest:(LogoutRequest*)logoutRequest success:(void (^)())success failure:(APIClientErrorBlock)failure
{
    [self POST:@"user/logout" parameters:[MTLJSONAdapter JSONDictionaryFromModel:logoutRequest] success:^(NSURLSessionDataTask *task, id responseObject) {
        if (success)
        {
            success();
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}


-(void) requestKeyboard:(NSString*)emailAddress success:(void (^)(NSString* keyboard))success failure:(APIClientErrorBlock)failure
{
    [self POST:@"requestkeyboard" parameters:@{@"email" : emailAddress} success:^(NSURLSessionDataTask *task, id responseObject) {
        NSString* keyboard = [responseObject objectForKey:@"keyboard"];
        if (success)
        {
            success(keyboard);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}

#pragma mark - Token methods

-(void) requestToken:(TokenRequest*)tokenRequest success:(void (^)(NSString* token))success failure:(APIClientErrorBlock)failure
{
    [self POST:@"token/request" parameters:[MTLJSONAdapter JSONDictionaryFromModel:tokenRequest] success:^(NSURLSessionDataTask *task, id responseObject) {
        if (success)
        {
            NSString* token = [responseObject objectForKey:@"token"];
            success(token);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}

-(void) redeemToken:(RedeemTokenRequest*)redeemTokenRequest success:(void (^)(NSString* id))success failure:(APIClientErrorBlock)failure
{
    [self POST:@"token/redeem" parameters:[MTLJSONAdapter JSONDictionaryFromModel:redeemTokenRequest] success:^(NSURLSessionDataTask *task, id responseObject) {
        if (success)
        {
            NSString* id = [responseObject objectForKey:@"id"];
            success(id);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}

@end