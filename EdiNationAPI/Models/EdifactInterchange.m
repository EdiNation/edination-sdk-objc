//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "EdifactInterchange.h"

@implementation EdifactInterchange

/**
* TODO: Write general description for this method
*/
@synthesize uNA;

/**
* TODO: Write general description for this method
*/
@synthesize uNB;

/**
* TODO: Write general description for this method
*/
@synthesize groups;

/**
* TODO: Write general description for this method
*/
@synthesize uNZTrailers;

/**
* TODO: Write general description for this method
*/
@synthesize result;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"UNA": @"uNA",
        @"UNB": @"uNB",
        @"Groups": @"groups",
        @"UNZTrailers": @"uNZTrailers",
        @"Result": @"result"  
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