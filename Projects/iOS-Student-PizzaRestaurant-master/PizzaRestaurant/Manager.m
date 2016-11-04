//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    NSInteger cou = [toppings count];
    
    for (int i = 0; i < cou; i++)
    {
        if([[toppings objectAtIndex:i] isEqualToString:@"anchovies"])
        {
            NSLog(@"I'm so sorry, we don't have anchovies right now \n your Pizza will take longer as we'll have to go out and get some more \n");
            return TRUE;
        }
    }
    return TRUE;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    int x = arc4random_uniform(3);
    if(x == 2)
    {
        NSLog(@"Your Pizza was upgraded! Here's a large, no extra charge \n");
        return TRUE;
    }
    return FALSE;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    if (pizza != nil)
    {
        
        NSLog(@"Here's a Pizza with %@ on it, fresh out the oven.", pizza.toppings);
        NSLog(@"\n ENJOY! Please come again!!");
        [self.delegate deliverPizza:pizza];
    }
}


@end
