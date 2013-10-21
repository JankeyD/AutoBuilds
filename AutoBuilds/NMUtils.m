//
//  NMUtils.m
//  AutoBuilds
//
//  Created by Roman Lazan on 10/21/13.
//  Copyright (c) 2013 Roman Lazan. All rights reserved.
//

#import "NMUtils.h"

@implementation NMUtils

NSString * const WowClassTypeWarrior        = @"Warrior";
NSString * const WowClassTypePaladin        = @"Paladin";
NSString * const WowClassTypeHunter         = @"Hunter";
NSString * const WowClassTypeRogue          = @"Rogue";
NSString * const WowClassTypePriest         = @"Priest";
NSString * const WowClassTypeDeathKnight    = @"Death Knight";
NSString * const WowClassTypeShaman         = @"Shaman";
NSString * const WowClassTypeMage           = @"Mage";
NSString * const WowClassTypeWarlock        = @"Warlock";
NSString * const WowClassTypeMonk           = @"Monk";
NSString * const WowClassTypeDruid          = @"Druid";

+(NSString *)classFromCharacterType:(CharacterClassType)type
{
    NSString *classTypeName;
    switch (type) {
        case Warrior:
            classTypeName = WowClassTypeWarrior;
            break;
        case Paladin:
            classTypeName = WowClassTypePaladin;
            break;
        case Hunter:
            classTypeName = WowClassTypeHunter;
            break;
        case Rogue:
            classTypeName = WowClassTypeRogue;
            break;
        case Priest:
            classTypeName = WowClassTypePriest;
            break;
        case DeathKnight:
            classTypeName = WowClassTypeDeathKnight;
            break;
        case Shaman:
            classTypeName = WowClassTypeShaman;
            break;
        case Mage:
            classTypeName = WowClassTypeMage;
            break;
        case Warlock:
            classTypeName = WowClassTypeWarlock;
            break;
        case Monk:
            classTypeName = WowClassTypeMonk;
            break;
        case Druid:
            classTypeName = WowClassTypeDruid;
            break;
        default:
            classTypeName = @"";
            break;
    }
    
    return classTypeName;
}


@end
