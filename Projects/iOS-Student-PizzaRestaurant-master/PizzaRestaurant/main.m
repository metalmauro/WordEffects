//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cashier.h"
#import "Kitchen.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
//        Cashier *cash = [Cashier new];
        Manager *mana = [Manager new];
        DeliveryService *del = [DeliveryService new];
        mana.delegate = del;
        DeliveryCar *delC = [DeliveryCar new];
        del.delegate = delC;
        
        
//        restaurantKitchen.delegate = cash;
        restaurantKitchen.delegate = mana;
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            
            
            // And then send some message to the kitchen...
            Pizza *new = [restaurantKitchen organizeInput:commandWords];
            NSLog(@"%@",[del showDeliveredPizzas]);
        }
    }
    return 0;
}

