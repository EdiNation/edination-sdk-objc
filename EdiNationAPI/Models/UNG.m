//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "UNG.h"

@implementation UNG

/**
* TODO: Write general description for this method
*/
@synthesize messageGroupIdentification1;

/**
* TODO: Write general description for this method
*/
@synthesize aPPLICATIONSENDERIDENTIFICATION2;

/**
* TODO: Write general description for this method
*/
@synthesize aPPLICATIONRECIPIENTIDENTIFICATION3;

/**
* TODO: Write general description for this method
*/
@synthesize dATEANDTIMEOFPREPARATION4;

/**
* TODO: Write general description for this method
*/
@synthesize groupReferenceNumber5;

/**
* TODO: Write general description for this method
*/
@synthesize controllingAgency6;

/**
* TODO: Write general description for this method
*/
@synthesize mESSAGEVERSION7;

/**
* TODO: Write general description for this method
*/
@synthesize applicationPassword8;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"MessageGroupIdentification_1": @"messageGroupIdentification1",
        @"APPLICATIONSENDERIDENTIFICATION_2": @"aPPLICATIONSENDERIDENTIFICATION2",
        @"APPLICATIONRECIPIENTIDENTIFICATION_3": @"aPPLICATIONRECIPIENTIDENTIFICATION3",
        @"DATEANDTIMEOFPREPARATION_4": @"dATEANDTIMEOFPREPARATION4",
        @"GroupReferenceNumber_5": @"groupReferenceNumber5",
        @"ControllingAgency_6": @"controllingAgency6",
        @"MESSAGEVERSION_7": @"mESSAGEVERSION7",
        @"ApplicationPassword_8": @"applicationPassword8"  
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