//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _size = &size;
        _toppings = toppings;
        
    }
    return self;
}

@end
