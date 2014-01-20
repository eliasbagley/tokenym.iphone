//
//  User.h
//  Tokenym
//
//  Created by Elias Bagley on 1/19/14.
//  Copyright (c) 2014 Elias Bagley. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface User : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString* email;
@property (nonatomic, copy) NSString* apiKey;

@end
