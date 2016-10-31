//
//  main.m
//  Word Effects
//
//  Created by Matthew Mauro on 2016-10-31.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
//The app will take in two pieces of data from the user:
//
//a number, to indicate which operation to do
//a string, to operate on
//Wrap the whole app in an infinite while loop, so users can do multiple operations.
//
//Be sure to print out the menu of options at the start of each loop of the app.
//
//As you go through the steps of this assignment, be sure to commit regularly, and push your code to GitHub

#import <stdio.h>
#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (TRUE) {
            char inputChars[255];
            
            printf("Input as String: ");
            fgets(inputChars, 255, stdin);
            
            strtok(inputChars, "\n");
            
            
            printf("Your string is %s \n", inputChars);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            NSString *upperString = [inputString uppercaseString];
            NSString *lower = [inputString lowercaseString];
            
            NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
            f.numberStyle = NSNumberFormatterDecimalStyle;
            NSNumber *myNumber = [f numberFromString: inputString];
            
            NSMutableString *canada = [[NSMutableString alloc]initWithString:inputString];
            
            
            NSString *lastChar = [inputString substringFromIndex:[inputString length]-1];
            
            NSString *noSpaces = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            
            printf("What would you like to do to your string? \n");
            printf("1. Upper Case \n");
            printf("2. Lower Case \n");
            printf("3. Numberize \n");
            printf("4. Canadianize \n");
            printf("5. Respond \n");
            printf("6. Despace \n");
            
            int choice;
            scanf("%d", &choice);
            
            printf("You've chosen: %c /n", choice);
//            NSString *chsen = [NSString stringWithUTF8String:&choice];
//            int chosen = [chsen intValue];
            
            switch(choice)
            {
                case 1:
                    NSLog(@"Upper cased string is: %@ \n", upperString);
                    break;
                case 2:
                    NSLog(@"Lower cased string is: %@ \n", lower);
                    break;
                case 3:
                    if(myNumber == NULL){
                        NSLog(@"your string wasn't suited to be a number \n");
                    }
                    NSLog(@"%@ was changed to an NSNumber \n", myNumber);
                    break;
                case 4:
                    [canada appendString:@", eh \n"];
                    NSLog(@"%@", canada);
                    break;
                case 5:
                    if([lastChar  isEqual: @"?"]){
                        NSLog(@"I DONT KNOW!! \n");
                    }if([lastChar isEqual: @"!"]){
                        NSLog(@"Woah, calm down \n");
                    }else{
                        NSLog(@"you didn't end that sentence properly for a response \n");
                    }
                    break;
                case 6:
                    NSLog(@"your string without spaces is: %@\n\n", noSpaces);
                    break;
            }
        }
    }
    
    return 0;
}
