#import "NSArray+Debug.h"

@implementation NSArray (Debug)

- (NSString*)localizedDescription
{
	const char* cString = [[self description] 
		cStringUsingEncoding:NSASCIIStringEncoding];

	return [NSString stringWithCString:cString 
				  encoding:NSNonLossyASCIIStringEncoding];
}

@end

