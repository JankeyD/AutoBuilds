//
//  NMUtils.h
//  AutoBuilds
//
//  Created by Roman Lazan on 10/21/13.
//  Copyright (c) 2013 Roman Lazan. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const WowClassTypeWarrior;
extern NSString * const WowClassTypePaladin;
extern NSString * const WowClassTypeHunter;
extern NSString * const WowClassTypeRogue;
extern NSString * const WowClassTypePriest;
extern NSString * const WowClassTypeDeathKnight;
extern NSString * const WowClassTypeShaman;
extern NSString * const WowClassTypeMage;
extern NSString * const WowClassTypeWarlock;
extern NSString * const WowClassTypeMonk;
extern NSString * const WowClassTypeDruid;

// class types
typedef enum {
    Warrior = 1,
    Paladin = 2,
    Hunter = 3,
    Rogue = 4,
    Priest = 5,
    DeathKnight = 6,
    Shaman = 7,
    Mage = 8,
    Warlock = 9,
    Monk = 10,
    Druid = 11,
} CharacterClassType;


@interface NMUtils : NSObject

+(NSString *)classFromCharacterType:(CharacterClassType)type;

@end
