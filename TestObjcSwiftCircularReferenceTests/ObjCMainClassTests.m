//
//  ObjCMainClassTests.m
//  TestObjcSwiftCircularReference
//
//  Created by Mattia Campolese on 24/08/2017.
//  Copyright © 2017 Easyfuture LTD. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ObjCMainClass.h"
#import "TestObjcSwiftCircularReferenceTests-Swift.h"

@interface ObjCMainClassTests : XCTestCase

@property (nonatomic, strong) StubSwiftComponent *stubSwiftComponent;
@property (nonatomic, strong) ObjCMainClass *subject;

@end

@implementation ObjCMainClassTests

- (void)setUp {
    [super setUp];
    self.stubSwiftComponent = [StubSwiftComponent new];
    self.subject = [ObjCMainClass new];
    self.subject.swiftComponent = self.stubSwiftComponent;
}

- (void)tearDown {
    self.subject = nil;
    [super tearDown];
}

- (void)test_publicFunction_shouldReturnTheExpectedValue {
    
    XCTAssertEqual([self.subject publicFunction], @(42));
    
}


@end
