//
//  main.m
//  CleanUpTheWords


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"(--9Hello----World...--)";
        
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        NSCharacterSet *lettersCharacterSet = [NSCharacterSet letterCharacterSet];
        
        BOOL lastCharWasSpace = YES;
        
        NSInteger i = 0;
        for (i = 0; i < line.length; i++)  {
           char charAtIndex = [line characterAtIndex:i];
            
            if ([lettersCharacterSet characterIsMember:charAtIndex]) {
                NSString *charLowercaseString = [[NSString stringWithFormat:@"%c", charAtIndex] lowercaseString];
                [solutionString appendString:charLowercaseString];
                lastCharWasSpace = NO;
            }
            else if (!lastCharWasSpace) {
                NSString *spaceString = @" ";
                [solutionString appendString:spaceString];
                lastCharWasSpace = YES;
            }
        }
        NSLog(@"solutionString:%@", solutionString);
    }
    return 0;
}
