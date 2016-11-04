//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Kitchen;

typedef NS_ENUM(NSInteger, PizzaSize)
{
    PizzaSizeSmall = 1,
    PizzaSizeMedium,
    PizzaSizeLarge,
};


@interface Pizza : NSObject

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;

@property PizzaSize *size;
@property NSArray *toppings;

@end
