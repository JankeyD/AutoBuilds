//
//  AutoBuildsTesty.m
//  AutoBuildsTesty
//
//  Created by Roman Lazan on 10/28/13.
//  Copyright (c) 2013 Roman Lazan. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "NMUtils.h"

@interface AutoBuildsTesty : SenTestCase

@end

@implementation AutoBuildsTesty

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

-(void)testCharacterClassNameLookup
{
    STAssertEqualObjects(@"Warrior", [NMUtils classFromCharacterType:1], @"ClassType should be Warrior");
    
    STAssertFalse([@"Mage" isEqualToString:[NMUtils classFromCharacterType:2]], nil);
    
    STAssertTrue([@"Paladin" isEqualToString:[NMUtils classFromCharacterType:2]], nil);
}


@end
