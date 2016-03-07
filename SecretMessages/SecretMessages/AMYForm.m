//
//  AMYForm.m
//  SecretMessages
//
//  Created by Amy Joscelyn on 3/6/16.
//  Copyright © 2016 Amy Joscelyn. All rights reserved.
//

#import "AMYForm.h"

@implementation AMYForm

+ (instancetype)sharedFormDataStore
{
    static AMYForm *_sharedFormDataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedFormDataStore = [[AMYForm alloc] init];
    });
    return _sharedFormDataStore;
}

@end
