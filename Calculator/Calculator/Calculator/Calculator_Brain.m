//
//  Calculator_Brain.m
//  Calculator
//
//  Created by Edmel John Ricahuerta on 2018-05-31.
//  Copyright © 2018 com.seneca.map523. All rights reserved.
//

#import "Calculator_Brain.h"

@implementation Calculator_Brain


-(NSMutableArray *)numbers{
    if(_numbers == nil){
        _numbers = [[NSMutableArray alloc]init];
    }
    return _numbers;
}



-(void) pushItem: (double) number{
    
    [_numbers addObject:[NSNumber numberWithDouble:number]];
}

-(double) calculate:(NSString *)operation{
    
    if([operation isEqualToString:@"+"])
    {
        return  [self popItem] + [self popItem ];
    }
    
   if([operation isEqualToString:@"-"])
    {
        double num1 =[self popItem] ;
        double num2  = [self popItem] ;
        return  num2 - num1;
    }
    
    if([operation isEqualToString:@"*"])
    {
        return  [self popItem] * [self popItem ];
    }
    
    if([operation isEqualToString:@"/"])
    {
        double num1 =[self popItem] ;
        double num2  = [self popItem] ;
        return num2 / num1;
    }
    
    else {
        NSLog(@"Operation Not Found!\n");
    }
    
    return -1;
}

-(double) popItem {
    double ret = [[self.numbers lastObject] doubleValue];
    [self.numbers removeLastObject];
    return ret;
}
@end
