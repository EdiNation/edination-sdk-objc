//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_EDIFACTINTERCHANGE
#define APIMATIC_EDIFACTINTERCHANGE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "UNA.h"
#import "UNB.h"
#import "EdifactGroup.h"
#import "UNZ.h"
#import "OperationResult.h"


//protocol defined for deserialization of JSON
@protocol EdifactInterchange
@end

@interface EdifactInterchange : JSONModel

/**
* TODO: Write general description for this field
*/
@property UNA* uNA;

/**
* TODO: Write general description for this field
*/
@property UNB* uNB;

/**
* TODO: Write general description for this field
*/
@property NSArray<EdifactGroup> * groups;

/**
* TODO: Write general description for this field
*/
@property NSArray<UNZ> * uNZTrailers;

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