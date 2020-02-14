//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "EdifactGroup.h"

@implementation EdifactGroup

/**
* TODO: Write general description for this method
*/
@synthesize uNG;

/**
* TODO: Write general description for this method
*/
@synthesize transactions;

/**
* TODO: Write general description for this method
*/
@synthesize uNETrailers;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"UNG": @"uNG",
        @"Transactions": @"transactions",
        @"UNETrailers": @"uNETrailers"  
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