//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_X12INTERCHANGE
#define APIMATIC_X12INTERCHANGE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "ISA.h"
#import "TA1.h"
#import "X12Group.h"
#import "IEA.h"
#import "OperationResult.h"


//protocol defined for deserialization of JSON
@protocol X12Interchange
@end

@interface X12Interchange : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* segmentDelimiter;

/**
* TODO: Write general description for this field
*/
@property NSString* dataElementDelimiter;

/**
* TODO: Write general description for this field
*/
@property ISA* iSA;

/**
* TODO: Write general description for this field
*/
@property TA1* tA1;

/**
* TODO: Write general description for this field
*/
@property NSArray<X12Group> * groups;

/**
* TODO: Write general description for this field
*/
@property NSArray<IEA> * iEATrailers;

/**
* TODO: Write general description for this field
*/
@property OperationResult* result;


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