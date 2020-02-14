//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_UNB
#define APIMATIC_UNB

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "S001.h"
#import "S002.h"
#import "S003.h"
#import "S004.h"
#import "S005.h"


//protocol defined for deserialization of JSON
@protocol UNB
@end

@interface UNB : JSONModel

/**
* TODO: Write general description for this field
*/
@property S001* sYNTAXIDENTIFIER1;

/**
* TODO: Write general description for this field
*/
@property S002* iNTERCHANGESENDER2;

/**
* TODO: Write general description for this field
*/
@property S003* iNTERCHANGERECIPIENT3;

/**
* TODO: Write general description for this field
*/
@property S004* dATEANDTIMEOFPREPARATION4;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeControlReference5;

/**
* TODO: Write general description for this field
*/
@property S005* rECIPIENTSREFERENCEPASSWORDDETAILS6;

/**
* TODO: Write general description for this field
*/
@property NSString* applicationReference7;

/**
* TODO: Write general description for this field
*/
@property NSString* processingPriorityCode8;

/**
* TODO: Write general description for this field
*/
@property NSString* acknowledgementRequest9;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeAgreementIdentifier10;

/**
* TODO: Write general description for this field
*/
@property NSString* testIndicator11;


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