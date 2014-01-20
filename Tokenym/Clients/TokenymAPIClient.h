//
//  TokenymAPIClient.h
//  Tokenym
//
//  Created by Elias Bagley on 10/1/13.
//  Copyright (c) 2013 Elias Bagley. All rights reserved.
//

#import <AFNetworking/AFHTTPSessionManager.h>

typedef void(^APIClientErrorBlock)(NSError *error);

@class LoginRequest;
@class LogoutRequest;
@class RedeemTokenRequest;
@class TokenRequest;

@interface TokenymAPIClient : AFHTTPSessionManager

+(instancetype) sharedClient;

-(void) registerWithEmailAddress:(NSString*)username password:(NSString*)password success:(void (^)())success failure:(APIClientErrorBlock)failure;
-(void) loginWithRequest:(LoginRequest*)loginRequest success:(void (^)())success failure:(APIClientErrorBlock)failure;
-(void) logoutWithRequest:(LogoutRequest*)logoutRequest success:(void (^)())success failure:(APIClientErrorBlock)failure;
-(void) requestKeyboard:(NSString*)emailAddress success:(void (^)(NSString* keyboard))success failure:(APIClientErrorBlock)failure;
-(void) requestToken:(TokenRequest*)tokenRequest success:(void (^)(NSString* token))success failure:(APIClientErrorBlock)failure;
-(void) redeemToken:(RedeemTokenRequest*)redeemTokenRequest success:(void (^)(NSString* id))success failure:(APIClientErrorBlock)failure;

@end