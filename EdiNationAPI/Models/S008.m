//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "S008.h"

@implementation S008

/**
* TODO: Write general description for this method
*/
@synthesize messageVersionNumber1;

/**
* TODO: Write general description for this method
*/
@synthesize messageReleaseNumber2;

/**
* TODO: Write general description for this method
*/
@synthesize associationAssignedCode3;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"MessageVersionNumber_1": @"messageVersionNumber1",
        @"MessageReleaseNumber_2": @"messageReleaseNumber2",
        @"AssociationAssignedCode_3": @"associationAssignedCode3"  
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