//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "UNB.h"

@implementation UNB

/**
* TODO: Write general description for this method
*/
@synthesize sYNTAXIDENTIFIER1;

/**
* TODO: Write general description for this method
*/
@synthesize iNTERCHANGESENDER2;

/**
* TODO: Write general description for this method
*/
@synthesize iNTERCHANGERECIPIENT3;

/**
* TODO: Write general description for this method
*/
@synthesize dATEANDTIMEOFPREPARATION4;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeControlReference5;

/**
* TODO: Write general description for this method
*/
@synthesize rECIPIENTSREFERENCEPASSWORDDETAILS6;

/**
* TODO: Write general description for this method
*/
@synthesize applicationReference7;

/**
* TODO: Write general description for this method
*/
@synthesize processingPriorityCode8;

/**
* TODO: Write general description for this method
*/
@synthesize acknowledgementRequest9;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeAgreementIdentifier10;

/**
* TODO: Write general description for this method
*/
@synthesize testIndicator11;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"SYNTAXIDENTIFIER_1": @"sYNTAXIDENTIFIER1",
        @"INTERCHANGESENDER_2": @"iNTERCHANGESENDER2",
        @"INTERCHANGERECIPIENT_3": @"iNTERCHANGERECIPIENT3",
        @"DATEANDTIMEOFPREPARATION_4": @"dATEANDTIMEOFPREPARATION4",
        @"InterchangeControlReference_5": @"interchangeControlReference5",
        @"RECIPIENTSREFERENCEPASSWORDDETAILS_6": @"rECIPIENTSREFERENCEPASSWORDDETAILS6",
        @"ApplicationReference_7": @"applicationReference7",
        @"ProcessingPriorityCode_8": @"processingPriorityCode8",
        @"AcknowledgementRequest_9": @"acknowledgementRequest9",
        @"InterchangeAgreementIdentifier_10": @"interchangeAgreementIdentifier10",
        @"TestIndicator_11": @"testIndicator11"  
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