//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_TA1
#define APIMATIC_TA1

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol TA1
@end

@interface TA1 : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeControlNumber1;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeDate2;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeTime3;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeAcknowledgmentCode4;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeNoteCode5;


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