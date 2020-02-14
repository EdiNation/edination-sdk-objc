//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "ErrorDetailsException.h"
@implementation ErrorDetailsException

/**
* TODO: Write general description for this method
*/
@synthesize code;

/**
* TODO: Write general description for this method
*/
@synthesize details;


- (ErrorDetailsException*) initWithReason: (NSString*) reason
                                  andContext: (HttpContext*) context
{
    self = [super initWithReason:reason andContext:context];
    return self;
}

- (void) unbox
{
    NSDictionary* data = [APIHelper jsonDeserializeObject: self.context.response.rawBody];
    code = [NSNumber numberWithInteger:[[data objectForKey: @"Code"] integerValue]];
    details = [data objectForKey: @"Details"];
}
@end