//
//  LoginRequest.h
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface LoginRequest : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString* email;
@property (nonatomic, copy) NSString* password;
@property (nonatomic, copy) NSString* encryptedPin;
@property (nonatomic, copy) NSString* keyboard;

@end
