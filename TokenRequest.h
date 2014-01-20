//
//  TokenRequest.h
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface TokenRequest : MTLModel<MTLJSONSerializing>

@property(nonatomic, copy) NSString* userId;
@property(nonatomic, copy) NSString* sharedSecret;
@property(nonatomic, copy) NSString* apiKey;
@property(nonatomic, copy) NSString* price;
@property(nonatomic, copy) NSString* recipientId;

@end
