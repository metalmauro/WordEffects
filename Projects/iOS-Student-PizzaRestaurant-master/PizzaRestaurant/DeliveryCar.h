//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//
#import "DeliveryService.h"
#import <Foundation/Foundation.h>

@interface DeliveryCar : NSObject <DeliveryDelegate>

-(void)deliverPizza:(Pizza *)pizza;

@end
