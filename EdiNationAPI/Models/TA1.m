//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "TA1.h"

@implementation TA1

/**
* TODO: Write general description for this method
*/
@synthesize interchangeControlNumber1;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeDate2;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeTime3;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeAcknowledgmentCode4;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeNoteCode5;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"InterchangeControlNumber_1": @"interchangeControlNumber1",
        @"InterchangeDate_2": @"interchangeDate2",
        @"InterchangeTime_3": @"interchangeTime3",
        @"InterchangeAcknowledgmentCode_4": @"interchangeAcknowledgmentCode4",
        @"InterchangeNoteCode_5": @"interchangeNoteCode5"  
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