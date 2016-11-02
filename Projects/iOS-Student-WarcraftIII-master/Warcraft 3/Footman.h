//
//  Footman.h
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//
#import "Unit.h"

@interface Footman : Unit

-(instancetype)init;


-(void)damage:(int)dmg;
-(void)attack:(Unit *)u withDamage:(int)atk;

@end
