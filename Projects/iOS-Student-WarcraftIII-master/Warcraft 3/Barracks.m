//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gold = 1000;
        _food = 80;
    }
    return self;
}

-(Footman *)trainFootman
{
    if([self canTrainFootman] == FALSE)
    {
        return nil;
    }
    self.gold -= 135;
    self.food -= 2;
    return [[Footman alloc]init] ;
}

-(BOOL)canTrainFootman
{
    if(self.gold >= 135 && self.food >= 2)
    {
        return TRUE;
    }
    return FALSE;
}


-(Peasant *)trainPeasant
{
    if([self canTrainPeasant] == FALSE)
    {
        return nil;
    }
    self.gold -= 90;
    self.food -= 5;
    return [[Peasant alloc]init] ;
}

-(BOOL)canTrainPeasant
{
    if(self.gold >= 90 && self.food >= 5)
    {
        return TRUE;
    }
    return FALSE;
}


@end
