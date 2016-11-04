//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

-(void)deliverPizza:(Pizza *)pizza
{
    NSLog(@"Pizza with %@ has been successfully delivered!", pizza.toppings);
}

@end

