//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_S002
#define APIMATIC_S002

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol S002
@end

@interface S002 : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeSenderIdentification1;

/**
* TODO: Write general description for this field
*/
@property NSString* identificationCodeQualifier2;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeSenderInternalIdentification3;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeSenderInternalSubIdentification4;


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