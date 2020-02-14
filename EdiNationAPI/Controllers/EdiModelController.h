//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "ErrorDetailsException.h"
#import "EdiModel.h"

@interface EdiModelController : BaseController

/**
* Completion block definition for asynchronous call to Upload */
typedef void (^CompletedPostUpload)(BOOL success, HttpContext* context, NSError* error);

/**
* Uploads a model file to a subscription. It must be a valid DOT NET assembly.
* @param    fileName    Required parameter: Upload File
*/
- (void) uploadAsyncWithFileName:(NSURL*) fileName
                completionBlock:(CompletedPostUpload) onCompleted;

/**
* Completion block definition for asynchronous call to GetModels */
typedef void (^CompletedGetModels)(BOOL success, HttpContext* context, NSArray<EdiModel> * response, NSError* error);

/**
* Retrieves all models for a subscription.
* @param    system    Optional parameter: Whether to retrieve EdiNation's or custom uploaded models.
*/
- (void) getModelsAsyncWithSystem:(NSNumber*) system
                completionBlock:(CompletedGetModels) onCompleted;

/**
* Completion block definition for asynchronous call to GetModel */
typedef void (^CompletedGetModel)(BOOL success, HttpContext* context, NSData* response, NSError* error);

/**
* Retrieve a particular model file as a stream.
* @param    mid    Required parameter: The model name.
* @param    system    Optional parameter: Whether to search in EdiNation's or custom uploaded models.
*/
- (void) getModelAsyncWithId:(NSString*) mid
                system:(NSNumber*) system
                completionBlock:(CompletedGetModel) onCompleted;

/**
* Completion block definition for asynchronous call to Delete */
typedef void (^CompletedDelete)(BOOL success, HttpContext* context, NSError* error);

/**
* Deletes a particular model from the custom models.
* @param    mid    Required parameter: The model name.
*/
- (void) deleteAsyncWithId:(NSString*) mid
                completionBlock:(CompletedDelete) onCompleted;

@end