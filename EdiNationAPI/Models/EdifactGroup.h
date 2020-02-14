//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_EDIFACTGROUP
#define APIMATIC_EDIFACTGROUP

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "UNG.h"
#import "UNE.h"


//protocol defined for deserialization of JSON
@protocol EdifactGroup
@end

@interface EdifactGroup : JSONModel

/**
* TODO: Write general description for this field
*/
@property UNG* uNG;

/**
* TODO: Write general description for this field
*/
@property NSArray* transactions;

/**
* TODO: Write general description for this field
*/
@property NSArray<UNE> * uNETrailers;


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