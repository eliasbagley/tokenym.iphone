//
//  TokenymAPIClient.h
//  Tokenym
//
//  Created by Elias Bagley on 10/1/13.
//  Copyright (c) 2013 Elias Bagley. All rights reserved.
//

#import <AFNetworking/AFHTTPSessionManager.h>

typedef void(^APIClientErrorBlock)(NSError *error);

@interface TokenymAPIClient : AFHTTPSessionManager

+(instancetype) sharedClient;

-(void) getToken:(NSString*)moniker success:(void (^)())success failure:(APIClientErrorBlock)failure;

@end