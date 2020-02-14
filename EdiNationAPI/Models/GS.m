//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "GS.h"

@implementation GS

/**
* TODO: Write general description for this method
*/
@synthesize codeIdentifyingInformationType1;

/**
* TODO: Write general description for this method
*/
@synthesize senderIDCode2;

/**
* TODO: Write general description for this method
*/
@synthesize receiverIDCode3;

/**
* TODO: Write general description for this method
*/
@synthesize date4;

/**
* TODO: Write general description for this method
*/
@synthesize time5;

/**
* TODO: Write general description for this method
*/
@synthesize groupControlNumber6;

/**
* TODO: Write general description for this method
*/
@synthesize transactionTypeCode7;

/**
* TODO: Write general description for this method
*/
@synthesize versionAndRelease8;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"CodeIdentifyingInformationType_1": @"codeIdentifyingInformationType1",
        @"SenderIDCode_2": @"senderIDCode2",
        @"ReceiverIDCode_3": @"receiverIDCode3",
        @"Date_4": @"date4",
        @"Time_5": @"time5",
        @"GroupControlNumber_6": @"groupControlNumber6",
        @"TransactionTypeCode_7": @"transactionTypeCode7",
        @"VersionAndRelease_8": @"versionAndRelease8"  
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