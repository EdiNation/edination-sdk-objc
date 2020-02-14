//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_UNG
#define APIMATIC_UNG

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "S006.h"
#import "S007.h"
#import "S004.h"
#import "S008.h"


//protocol defined for deserialization of JSON
@protocol UNG
@end

@interface UNG : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* messageGroupIdentification1;

/**
* TODO: Write general description for this field
*/
@property S006* aPPLICATIONSENDERIDENTIFICATION2;

/**
* TODO: Write general description for this field
*/
@property S007* aPPLICATIONRECIPIENTIDENTIFICATION3;

/**
* TODO: Write general description for this field
*/
@property S004* dATEANDTIMEOFPREPARATION4;

/**
* TODO: Write general description for this field
*/
@property NSString* groupReferenceNumber5;

/**
* TODO: Write general description for this field
*/
@property NSString* controllingAgency6;

/**
* TODO: Write general description for this field
*/
@property S008* mESSAGEVERSION7;

/**
* TODO: Write general description for this field
*/
@property NSString* applicationPassword8;


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