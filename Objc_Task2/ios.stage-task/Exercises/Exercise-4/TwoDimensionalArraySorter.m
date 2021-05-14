#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    if (!array) {
        return @[];
    }
    
    NSMutableArray *stringBuffer = [NSMutableArray new];
    NSMutableArray *numbersBuffer = [NSMutableArray new];
    
    for (int i = 0; i < [array count]; i++) {
        
        if (![array[i] isKindOfClass:[NSArray class]]) {
            return @[];
        }
        
        for (int j = 0; j < [array[i] count]; j++) {
            if ([array[i][j] isKindOfClass:[NSString class]]) {
                [stringBuffer addObject: array[i][j]];
            } else {
                [numbersBuffer addObject:array[i][j]];
            }
            
        }
    }
    
    [stringBuffer sortUsingSelector:@selector(compare:)];
    [numbersBuffer sortUsingSelector:@selector(compare:)];
    
    if ([stringBuffer count] == 0) {
        return numbersBuffer;
    }
    
    if ([numbersBuffer count] == 0) {
        return stringBuffer;
    }
    
    return [[NSArray alloc] initWithObjects:numbersBuffer, stringBuffer, nil];
}

@end
