//
//  AutomationExampleTests.m
//  AutomationExampleTests
//
//  Created by amayoral on 4/30/15.
//  Copyright (c) 2015 Comcast. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface AutomationExampleTests : XCTestCase

@property (nonatomic) ViewController *vcTest;

@end

/**
 * If you want to test private methods, you need to expose it here.
 */
@interface ViewController (Test)

- (NSString *)sayHeyWithSpaces:(NSString *)stringName;

@end

@implementation AutomationExampleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.vcTest = [[ViewController alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStringWithSpaces {
    
    NSString *originalString = @"myusername";
    NSString *resultString = [self.vcTest sayHeyWithSpaces:originalString];
    NSString *expectedResult =  @"m y u s e r n a m e";
    XCTAssertEqualObjects(resultString, expectedResult, @"the username did not match with the spaces required.");
    
}
/*
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
*/

@end
