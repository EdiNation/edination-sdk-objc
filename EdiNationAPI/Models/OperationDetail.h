//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_OPERATIONDETAIL
#define APIMATIC_OPERATIONDETAIL

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol OperationDetail
@end

@interface OperationDetail : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSNumber* index;

/**
* TODO: Write general description for this field
*/
@property NSNumber* transactionIndex;

/**
* TODO: Write general description for this field
*/
@property NSString* transactionRef;

/**
* TODO: Write general description for this field
*/
@property NSString* segmentId;

/**
* TODO: Write general description for this field
*/
@property NSString* value;

/**
* TODO: Write general description for this field
*/
@property NSString* message;

/**
* TODO: Write general description for this field
*/
@property NSString* status;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif