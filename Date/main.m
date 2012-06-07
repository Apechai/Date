//
//  main.m
//  Date
//
//  Created by Matthew Fong on 6/6/12.
//  Copyright (c) 2012 Goldman Sachs. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DateAppDelegate.h"
#import "Date.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //Demonstrate that we can call a class method
        //even when no objects of the class currently exist.
        NSLog(@"A year has %d months.", [Date yearLength]);
        
        //Call the init method that takes no arguments.
        Date *today = [[Date alloc] init];
        
        //Two ways to do the same thing.  description returns an NSString.
        NSLog(@"Today is %@.", [today description]);
        NSLog(@"Today is %@.\n\n", today);
        
        NSLog(@"Today is day number %d out of %d in month number %d.",
              [today day],			//Call a method that is a getter.
              [today monthLength],	//Call a method that is not a getter.
              [today month]			//Call a method that is a getter.
              );
        
        //Two ways to do the same thing: call a getter.
        NSLog(@"Today is day number %d of the month.", [today day]);
        NSLog(@"Today is day number %d of the month.\n\n", today.day);
        
        //Two ways to do the same thing: call a setter.
        [today setDay: 1];
        today.day = 1;
        
        [today next];			//Move the object 1 day forward.
        NSLog(@"The second day of this month is %@.", today);
        
        //Call the init method that takes three arguments.
        Date *independenceDay =
        [[Date alloc] initWithMonth: 7 day: 4 year: 1776
         ];
        
        NSLog(@"Independence Day was %@.", independenceDay);
        [independenceDay next: [independenceDay monthLength]];
        NSLog(@"America was one month old on %@.", independenceDay);

        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([DateAppDelegate class]));
    }
}
