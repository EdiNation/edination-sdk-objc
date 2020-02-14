//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_OPERATIONRESULT
#define APIMATIC_OPERATIONRESULT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "OperationDetail.h"


//protocol defined for deserialization of JSON
@protocol OperationResult
@end

@interface OperationResult : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSNumber* lastIndex;

/**
* TODO: Write general description for this field
*/
@property NSArray<OperationDetail> * details;

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