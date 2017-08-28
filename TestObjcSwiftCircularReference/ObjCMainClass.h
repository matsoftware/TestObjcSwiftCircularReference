//
//  ObjCMainClass.h
//  TestObjcSwiftCircularReference
//
//  Created by Mattia Campolese on 24/08/2017.
//  Copyright © 2017 Easyfuture LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ComponentProtocol;

@interface ObjCMainClass : NSObject

@property (nonatomic, strong) id<ComponentProtocol> component;

- (NSNumber *)publicFunction;

@end
