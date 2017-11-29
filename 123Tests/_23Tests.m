//
//  _23Tests.m
//  123Tests
//
//  Created by 雷博文 on 2017/11/16.
//  Copyright © 2017年 雷博文. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface _23Tests : XCTestCase

@end

@implementation _23Tests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    ViewController *VC = [[ViewController alloc] init];
    int a = [VC ceshishuzi];
    int b = 6;
    XCTAssertEqual(a, b,"buduiaaaaaaaaaa");
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
