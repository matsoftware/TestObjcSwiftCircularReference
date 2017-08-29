//
//  ObjcMainClass.m
//  TestObjcSwiftCircularReference
//
//  Created by Mattia Campolese on 29/08/2017.
//  Copyright © 2017 Easyfuture LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjCMainClass.h"
#import "ComponentProtocol.h"

@implementation ObjCMainClass

- (NSNumber *)publicFunction {
    return @([self.component testFunction]);
}

@end
