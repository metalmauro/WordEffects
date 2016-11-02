//
//  Barracks.h
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//
#import "Footman.h"
#import "Peasant.h"
#import <Foundation/Foundation.h>

@interface Barracks : NSObject

-(instancetype)init;

@property (assign) int gold;
@property (assign) int food;

-(Peasant *)trainPeasant;
-(BOOL)canTrainPeasant;

-(Footman *)trainFootman;
-(BOOL)canTrainFootman;


@end
