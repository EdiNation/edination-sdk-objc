//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "OperationResult.h"

@implementation OperationResult

/**
* TODO: Write general description for this method
*/
@synthesize lastIndex;

/**
* TODO: Write general description for this method
*/
@synthesize details;

/**
* TODO: Write general description for this method
*/
@synthesize status;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"LastIndex": @"lastIndex",
        @"Details": @"details",
        @"Status": @"status"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end