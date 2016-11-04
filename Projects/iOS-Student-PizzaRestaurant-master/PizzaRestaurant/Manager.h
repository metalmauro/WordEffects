//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//
#include <stdlib.h>
#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"

@class Manager;

@protocol ManageDelegate <NSObject>

-(void)deliverPizza:(Pizza *)pizza;

@end

@interface Manager : NSObject <KitchenDelegate>

@property id<ManageDelegate> delegate;

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end
