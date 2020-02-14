//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_ISA
#define APIMATIC_ISA

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ISA
@end

@interface ISA : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* authorizationInformationQualifier1;

/**
* TODO: Write general description for this field
*/
@property NSString* authorizationInformation2;

/**
* TODO: Write general description for this field
*/
@property NSString* securityInformationQualifier3;

/**
* TODO: Write general description for this field
*/
@property NSString* securityInformation4;

/**
* TODO: Write general description for this field
*/
@property NSString* senderIDQualifier5;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeSenderID6;

/**
* TODO: Write general description for this field
*/
@property NSString* receiverIDQualifier7;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeReceiverID8;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeDate9;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeTime10;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeControlStandardsIdentifier11;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeControlVersionNumber12;

/**
* TODO: Write general description for this field
*/
@property NSString* interchangeControlNumber13;

/**
* TODO: Write general description for this field
*/
@property NSString* acknowledgementRequested14;

/**
* TODO: Write general description for this field
*/
@property NSString* usageIndicator15;

/**
* TODO: Write general description for this field
*/
@property NSString* componentElementSeparator16;


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