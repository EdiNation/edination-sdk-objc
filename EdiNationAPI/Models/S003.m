//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "S003.h"

@implementation S003

/**
* TODO: Write general description for this method
*/
@synthesize interchangeRecipientIdentification1;

/**
* TODO: Write general description for this method
*/
@synthesize identificationCodeQualifier2;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeRecipientInternalIdentification3;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeRecipientInternalSubIdentification4;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"InterchangeRecipientIdentification_1": @"interchangeRecipientIdentification1",
        @"IdentificationCodeQualifier_2": @"identificationCodeQualifier2",
        @"InterchangeRecipientInternalIdentification_3": @"interchangeRecipientInternalIdentification3",
        @"InterchangeRecipientInternalSubIdentification_4": @"interchangeRecipientInternalSubIdentification4"  
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