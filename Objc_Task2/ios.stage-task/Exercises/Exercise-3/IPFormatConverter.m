#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if ([numbersArray count] == 0) {
        return @"";
    }
    
    NSMutableArray *ipArray = [numbersArray mutableCopy];
    NSEnumerator *enumerator = [ipArray objectEnumerator];
    NSNumber *value;
    
    for (int i = 0; i < 4; i++) {
        value = [enumerator nextObject];
        
        if (!value) {
            [ipArray addObject:@(0)];
        }
        
        if ([value intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
        
        if ([value intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
    }
    
    NSString *ipAddress = [[NSString alloc] initWithFormat:@"%@.%@.%@.%@",
                           [ipArray objectAtIndex:0],
                           [ipArray objectAtIndex:1],
                           [ipArray objectAtIndex:2],
                           [ipArray objectAtIndex:3]];
    
    return ipAddress;
}

@end
