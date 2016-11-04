//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveredZzas = [NSMutableArray new];
    }
    return self;
}

-(NSString *)convertToString:(PizzaSize) size
{
    NSString *result;
    switch (size)
    {
        case PizzaSizeSmall:
            result = @"Small";
        case PizzaSizeMedium:
            result = @"Medium";
        case PizzaSizeLarge:
            result = @"Large";
    }
    return result;
}

-(NSArray *)showDeliveredPizzas
{
    int i = 1;
    NSMutableArray *delivered = [NSMutableArray new];
    NSMutableString *zzas = [NSMutableString new];
    for (Pizza *o in self.deliveredZzas)
    {
        [zzas appendFormat:@"\n %@ Pizza with %@", [[NSNumber numberWithInt:i]stringValue], o.toppings];
        [delivered addObject:zzas];
        i++;
    }
    return delivered;
}

-(void)deliverPizza:(Pizza *)pizza
{
    
    NSLog(@"Pizza was handed to driver \n");
    [self.deliveredZzas addObject:pizza];
    [self.delegate deliverPizza:pizza];
}

@end
