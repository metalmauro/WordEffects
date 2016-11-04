//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Manager.h"

@protocol DeliveryDelegate <NSObject>
-(void)deliverPizza:(Pizza *)pizza;
@end


@interface DeliveryService : NSObject <ManageDelegate>

@property id<DeliveryDelegate> delegate;
@property NSMutableArray *deliveredZzas;

-(NSArray *)showDeliveredPizzas;

-(void)deliverPizza:(Pizza *)pizza;

@end
