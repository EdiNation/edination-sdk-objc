//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "S005.h"

@implementation S005

/**
* TODO: Write general description for this method
*/
@synthesize recipientReferencePassword1;

/**
* TODO: Write general description for this method
*/
@synthesize recipientReferencePasswordQualifier2;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"RecipientReferencePassword_1": @"recipientReferencePassword1",
        @"RecipientReferencePasswordQualifier_2": @"recipientReferencePasswordQualifier2"  
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