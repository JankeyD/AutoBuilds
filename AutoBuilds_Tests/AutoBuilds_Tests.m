//
//  AutoBuilds_Tests.m
//  AutoBuilds_Tests
//
//  Created by Roman Lazan on 10/21/13.
//  Copyright (c) 2013 Roman Lazan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NMUtils.h"


@interface AutoBuilds_Tests : XCTestCase

@end

@implementation AutoBuilds_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCharacterClassNameLookup
{
    // XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    
    XCTAssertTrue([@"Paladin" isEqualToString:[NMUtils classFromCharacterType:2]]);
    
    XCTAssertEqualObjects(@"Warrior", [NMUtils classFromCharacterType:1], @"ClassType should be Warrior");

    XCTAssertFalse([@"Mage" isEqualToString:[NMUtils classFromCharacterType:2]]);
}

@end
