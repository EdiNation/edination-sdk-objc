//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_GS
#define APIMATIC_GS

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol GS
@end

@interface GS : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* codeIdentifyingInformationType1;

/**
* TODO: Write general description for this field
*/
@property NSString* senderIDCode2;

/**
* TODO: Write general description for this field
*/
@property NSString* receiverIDCode3;

/**
* TODO: Write general description for this field
*/
@property NSString* date4;

/**
* TODO: Write general description for this field
*/
@property NSString* time5;

/**
* TODO: Write general description for this field
*/
@property NSString* groupControlNumber6;

/**
* TODO: Write general description for this field
*/
@property NSString* transactionTypeCode7;

/**
* TODO: Write general description for this field
*/
@property NSString* versionAndRelease8;


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