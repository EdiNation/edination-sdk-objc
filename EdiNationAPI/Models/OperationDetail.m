//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "OperationDetail.h"

@implementation OperationDetail

/**
* TODO: Write general description for this method
*/
@synthesize index;

/**
* TODO: Write general description for this method
*/
@synthesize transactionIndex;

/**
* TODO: Write general description for this method
*/
@synthesize transactionRef;

/**
* TODO: Write general description for this method
*/
@synthesize segmentId;

/**
* TODO: Write general description for this method
*/
@synthesize value;

/**
* TODO: Write general description for this method
*/
@synthesize message;

/**
* TODO: Write general description for this method
*/
@synthesize status;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"Index": @"index",
        @"TransactionIndex": @"transactionIndex",
        @"TransactionRef": @"transactionRef",
        @"SegmentId": @"segmentId",
        @"Value": @"value",
        @"Message": @"message",
        @"Status": @"status"  
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