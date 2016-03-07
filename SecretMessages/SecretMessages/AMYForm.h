//
//  AMYForm.h
//  SecretMessages
//
//  Created by Amy Joscelyn on 3/6/16.
//  Copyright © 2016 Amy Joscelyn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMYForm : NSObject

@property (nonatomic, strong) NSString *firstMessage;
@property (nonatomic, strong) NSString *secondMessage;

@property (nonatomic, strong) NSString *emoji1;
@property (nonatomic, strong) NSString *emoji2;
@property (nonatomic, strong) NSString *emoji3;

@property (nonatomic, strong) NSString *firstBackgroundColor;
@property (nonatomic, strong) NSString *secondBackgroundColor;

@property (nonatomic, strong) NSString *firstMessageTextColor;
@property (nonatomic, strong) NSString *secondMessageTextColor;

+ (instancetype)sharedFormDataStore;

@end
