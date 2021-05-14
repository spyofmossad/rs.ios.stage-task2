#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger counter = 0;
    NSArray <NSNumber *> *sortedArray = [[[array sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator] allObjects];
    
    for (int i = 0; i < [sortedArray count]; i++) {
        for (int j = i + 1; j < [sortedArray count]; j++) {
            if ([[sortedArray objectAtIndex:i] intValue] - [[sortedArray objectAtIndex:j] intValue] == [number intValue]) {
                counter++;
            }
        }
    }
    
    return counter;
}

@end
