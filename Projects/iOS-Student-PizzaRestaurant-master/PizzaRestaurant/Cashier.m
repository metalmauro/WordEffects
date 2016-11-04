//
//  Cashier.m
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Cashier.h"

@implementation Cashier

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    NSInteger cou = [toppings count];
    
    for (int i = 0; i < cou; i++)
    {
        if([[toppings objectAtIndex:i] isEqualToString:@"anchovies"])
        {
            NSLog(@"Sorry, we can't make a Pizza with anchovies on it");
            return FALSE;
        }
    }
    return TRUE;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    int x = arc4random_uniform(3);
    if(x == 2)
    {
        return TRUE;
    }
    return FALSE;
}


@end
