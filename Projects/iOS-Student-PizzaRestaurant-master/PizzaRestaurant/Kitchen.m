//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen


- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    return [[Pizza alloc]initWithSize:size andToppings:toppings];
}

- (Pizza *)organizeInput:(NSArray *)input
{
    BOOL upgr = [self.delegate kitchenShouldUpgradeOrder:self];
    PizzaSize chosen;
    
    if (upgr == TRUE)
    {
        if([[input objectAtIndex:0] isEqualToString:@"small"])
        {
            chosen = PizzaSizeLarge;
        }if([[input objectAtIndex:0] isEqualToString:@"medium"])
        {
            chosen = PizzaSizeLarge;
        }if([[input objectAtIndex:0] isEqualToString:@"large"])
        {
            chosen = PizzaSizeLarge;
        }else
        {
            chosen = PizzaSizeLarge;
        }
    }else{
        if([[input objectAtIndex:0] isEqualToString:@"small"])
        {
            chosen = PizzaSizeSmall;
        }if([[input objectAtIndex:0] isEqualToString:@"medium"])
        {
            chosen = PizzaSizeMedium;
        }if([[input objectAtIndex:0] isEqualToString:@"large"])
        {
            chosen = PizzaSizeLarge;
        }else
        {
            chosen = PizzaSizeMedium;
        }
    }
    
    NSArray *topp = [input subarrayWithRange:NSMakeRange(1, [input count]-1)];
    
    BOOL shouldMake = [self.delegate kitchen:self shouldMakePizzaOfSize:chosen andToppings:topp];
    
    if(shouldMake == TRUE)
    {
        BOOL star = [self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)];
        Pizza *new = [self makePizzaWithSize:chosen toppings: topp];
        
        if (star == TRUE)
        {
            [self.delegate kitchenDidMakePizza:new];
        }
        else{
            NSLog(@"Created a Pizza with %@ on it", topp);
        }
        
        return new;
    }
    
    return nil;
}

@end
