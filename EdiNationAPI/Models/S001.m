//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "S001.h"

@implementation S001

/**
* TODO: Write general description for this method
*/
@synthesize syntaxIdentifier1;

/**
* TODO: Write general description for this method
*/
@synthesize syntaxVersionNumber2;

/**
* TODO: Write general description for this method
*/
@synthesize serviceCodeListDirectoryVersionNumber3;

/**
* TODO: Write general description for this method
*/
@synthesize characterEncoding4;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"SyntaxIdentifier_1": @"syntaxIdentifier1",
        @"SyntaxVersionNumber_2": @"syntaxVersionNumber2",
        @"ServiceCodeListDirectoryVersionNumber_3": @"serviceCodeListDirectoryVersionNumber3",
        @"CharacterEncoding_4": @"characterEncoding4"  
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