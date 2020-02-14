//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "X12Interchange.h"

@implementation X12Interchange

/**
* TODO: Write general description for this method
*/
@synthesize segmentDelimiter;

/**
* TODO: Write general description for this method
*/
@synthesize dataElementDelimiter;

/**
* TODO: Write general description for this method
*/
@synthesize iSA;

/**
* TODO: Write general description for this method
*/
@synthesize tA1;

/**
* TODO: Write general description for this method
*/
@synthesize groups;

/**
* TODO: Write general description for this method
*/
@synthesize iEATrailers;

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
        @"SegmentDelimiter": @"segmentDelimiter",
        @"DataElementDelimiter": @"dataElementDelimiter",
        @"ISA": @"iSA",
        @"TA1": @"tA1",
        @"Groups": @"groups",
        @"IEATrailers": @"iEATrailers",
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