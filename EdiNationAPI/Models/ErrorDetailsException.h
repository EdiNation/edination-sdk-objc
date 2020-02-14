//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import <Foundation/Foundation.h>
#import "APIError.h"
#import "HttpContext.h"



@interface ErrorDetailsException : APIError
 
 /**
* TODO: Write general description for this field
*/
@property NSNumber* code;

/**
* TODO: Write general description for this field
*/
@property NSArray* details;

- (ErrorDetailsException*) initWithReason: (NSString*) reason
                                  andContext: (HttpContext*) context;

@end