//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "ISA.h"

@implementation ISA

/**
* TODO: Write general description for this method
*/
@synthesize authorizationInformationQualifier1;

/**
* TODO: Write general description for this method
*/
@synthesize authorizationInformation2;

/**
* TODO: Write general description for this method
*/
@synthesize securityInformationQualifier3;

/**
* TODO: Write general description for this method
*/
@synthesize securityInformation4;

/**
* TODO: Write general description for this method
*/
@synthesize senderIDQualifier5;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeSenderID6;

/**
* TODO: Write general description for this method
*/
@synthesize receiverIDQualifier7;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeReceiverID8;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeDate9;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeTime10;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeControlStandardsIdentifier11;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeControlVersionNumber12;

/**
* TODO: Write general description for this method
*/
@synthesize interchangeControlNumber13;

/**
* TODO: Write general description for this method
*/
@synthesize acknowledgementRequested14;

/**
* TODO: Write general description for this method
*/
@synthesize usageIndicator15;

/**
* TODO: Write general description for this method
*/
@synthesize componentElementSeparator16;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"AuthorizationInformationQualifier_1": @"authorizationInformationQualifier1",
        @"AuthorizationInformation_2": @"authorizationInformation2",
        @"SecurityInformationQualifier_3": @"securityInformationQualifier3",
        @"SecurityInformation_4": @"securityInformation4",
        @"SenderIDQualifier_5": @"senderIDQualifier5",
        @"InterchangeSenderID_6": @"interchangeSenderID6",
        @"ReceiverIDQualifier_7": @"receiverIDQualifier7",
        @"InterchangeReceiverID_8": @"interchangeReceiverID8",
        @"InterchangeDate_9": @"interchangeDate9",
        @"InterchangeTime_10": @"interchangeTime10",
        @"InterchangeControlStandardsIdentifier_11": @"interchangeControlStandardsIdentifier11",
        @"InterchangeControlVersionNumber_12": @"interchangeControlVersionNumber12",
        @"InterchangeControlNumber_13": @"interchangeControlNumber13",
        @"AcknowledgementRequested_14": @"acknowledgementRequested14",
        @"UsageIndicator_15": @"usageIndicator15",
        @"ComponentElementSeparator_16": @"componentElementSeparator16"  
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