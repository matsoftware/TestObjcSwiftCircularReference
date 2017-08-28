//
//  ObjCMainClass.m
//  TestObjcSwiftCircularReference
//
//  Created by Mattia Campolese on 24/08/2017.
//  Copyright © 2017 Easyfuture LTD. All rights reserved.
//

#import "ObjCMainClass.h"
#import "TestObjcSwiftCircularReference-Swift.h"

@implementation ObjCMainClass

- (NSNumber *)publicFunction {
    return @([self.component testFunction]);
}

@end
