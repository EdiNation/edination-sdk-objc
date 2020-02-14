//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "S002.h"

@implementation S002

/**
* TODO: Write general description for this method
*/
@synthesize interchangeSenderIdentification1;

/**
* TODO: Write general description for this method
*/
@synthesize identificationCodeQualifier2;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeSenderInternalIdentification3;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeSenderInternalSubIdentification4;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"InterchangeSenderIdentification_1": @"interchangeSenderIdentification1",
        @"IdentificationCodeQualifier_2": @"identificationCodeQualifier2",
        @"InterchangeSenderInternalIdentification_3": @"interchangeSenderInternalIdentification3",
        @"InterchangeSenderInternalSubIdentification_4": @"interchangeSenderInternalSubIdentification4"  
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