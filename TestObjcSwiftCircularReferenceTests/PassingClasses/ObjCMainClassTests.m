//
//  ObjCMainClassTests.m
//  TestObjcSwiftCircularReference
//
//  Created by Mattia Campolese on 24/08/2017.
//  Copyright © 2017 Easyfuture LTD. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ObjCMainClass.h"
#import "StubObjcComponent.h"

@interface ObjCMainClassTests : XCTestCase

@property (nonatomic, strong) StubObjcComponent *stubObjcComponent;
@property (nonatomic, strong) ObjCMainClass *subject;

@end

@implementation ObjCMainClassTests

- (void)setUp {
    [super setUp];
    self.stubObjcComponent = [StubObjcComponent new];
    self.subject = [ObjCMainClass new];
    self.subject.component = self.stubObjcComponent;
}

- (void)tearDown {
    self.stubObjcComponent = nil;
    self.subject = nil;
    [super tearDown];
}

- (void)test_publicFunction_shouldReturnTheExpectedValue {
    
    XCTAssertEqual([[self.subject publicFunction] integerValue], 42);
    
}


@end
