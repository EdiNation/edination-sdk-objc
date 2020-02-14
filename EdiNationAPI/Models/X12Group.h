//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_X12GROUP
#define APIMATIC_X12GROUP

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "GS.h"
#import "GE.h"


//protocol defined for deserialization of JSON
@protocol X12Group
@end

@interface X12Group : JSONModel

/**
* TODO: Write general description for this field
*/
@property GS* gS;

/**
* TODO: Write general description for this field
*/
@property NSArray* transactions;

/**
* TODO: Write general description for this field
*/
@property NSArray<GE> * gETrailers;


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