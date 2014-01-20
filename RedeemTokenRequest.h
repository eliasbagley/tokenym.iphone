//
//  RedeemTokenRequest.h
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface RedeemTokenRequest : MTLModel<MTLJSONSerializing>

@property(nonatomic, copy) NSString* apiKey;
@property(nonatomic, copy) NSString* userId;
@property(nonatomic, copy) NSString* token;
@property(nonatomic, copy) NSString* sharedSecret;

@end
