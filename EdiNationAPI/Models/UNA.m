//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "UNA.h"

@implementation UNA

/**
* TODO: Write general description for this method
*/
@synthesize componentDataElement;

/**
* TODO: Write general description for this method
*/
@synthesize dataElement;

/**
* TODO: Write general description for this method
*/
@synthesize decimalNotation;

/**
* TODO: Write general description for this method
*/
@synthesize releaseIndicator;

/**
* TODO: Write general description for this method
*/
@synthesize reserved;

/**
* TODO: Write general description for this method
*/
@synthesize segment;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"ComponentDataElement": @"componentDataElement",
        @"DataElement": @"dataElement",
        @"DecimalNotation": @"decimalNotation",
        @"ReleaseIndicator": @"releaseIndicator",
        @"Reserved": @"reserved",
        @"Segment": @"segment"  
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