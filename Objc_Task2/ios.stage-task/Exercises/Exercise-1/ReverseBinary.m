#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
        
    NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity: 8];
    NSUInteger x = n;
    
    do {
        [arr addObject:[NSString stringWithFormat: @"%lu", x&1]];
    } while (x >>= 1);
    
    while ([arr count] < 8) {
        [arr addObject:@"0"];
    }
    
    NSString *reversedString = [[arr valueForKey:@"description"] componentsJoinedByString:@""];
    long reversedValue = strtol([reversedString UTF8String], NULL, 2);
    
    return reversedValue;
}
