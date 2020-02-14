//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_S003
#define APIMATIC_S003

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol S003
@end

@interface S003 : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeRecipientIdentification1;

/**
* TODO: Write general description for this field
*/
@property NSString* identificationCodeQualifier2;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeRecipientInternalIdentification3;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeRecipientInternalSubIdentification4;


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