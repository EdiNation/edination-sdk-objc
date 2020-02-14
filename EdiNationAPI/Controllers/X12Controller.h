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
#import "X12Interchange.h"
#import "ErrorDetailsException.h"
#import "OperationResult.h"

@interface X12Controller : BaseController

/**
* Completion block definition for asynchronous call to Read */
typedef void (^CompletedPostRead)(BOOL success, HttpContext* context, NSArray<X12Interchange> * response, NSError* error);

/**
* Reads an X12 file and returns its contents translated to an array of X12Interchange objects.
* @param    fileName    Required parameter: Upload File
* @param    ignoreNullValues    Optional parameter: Whether to ignore all null values in the response. The default is false.
* @param    continueOnError    Optional parameter: Whether to continue reading if a corrupt interchange is encountered. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    model    Optional parameter: The model to use. By default, the API will infer the model based on the transaction and version identifiers.
*/
- (void) readAsyncWithFileName:(NSURL*) fileName
                ignoreNullValues:(NSNumber*) ignoreNullValues
                continueOnError:(NSNumber*) continueOnError
                charSet:(NSString*) charSet
                model:(NSString*) model
                completionBlock:(CompletedPostRead) onCompleted;

/**
* Completion block definition for asynchronous call to Write */
typedef void (^CompletedPostWrite)(BOOL success, HttpContext* context, NSData* response, NSError* error);

/**
* Translates an X12Interchange object to a raw X12 interchange and returns it as a stream.
* @param    preserveWhitespace    Optional parameter: Whether to preserve blank data elements so the output contains multiple delimiters instead of omitting any excess delimiters. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    postfix    Optional parameter: The postfix to be applied at the end of each segment, just after the segment separator. This is usually a carriage return (CR), line feed (LF) or both. By default, there is no postfix.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The X12Interchange object to translate to raw X12.
*/
- (void) writeAsyncWithPreserveWhitespace:(NSNumber*) preserveWhitespace
                charSet:(NSString*) charSet
                postfix:(NSString*) postfix
                contentType:(NSString*) contentType
                body:(X12Interchange*) body
                completionBlock:(CompletedPostWrite) onCompleted;

/**
* Completion block definition for asynchronous call to Validate */
typedef void (^CompletedPostValidate)(BOOL success, HttpContext* context, OperationResult* response, NSError* error);

/**
* Validates an X12Interchange object according to the X12 standard rules for each version and transaction.
* @param    basicSyntax    Optional parameter: All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The default syntax set is the Extended, hence the default for this parameter is false. By setting this to true, validation will use the Basic syntax set.
* @param    syntaxSet    Optional parameter: In case you need to validate against a syntax set, different than Basic and Extended, populate this filed with all of the allowed symbols, url-escaped.
* @param    skipTrailer    Optional parameter: You are allowed to validate an X12Interchange with missing interchange, functional group or transaction trailers (IEA, GE, SE). This is because these will be automatically applied during the Write oprtaion so you don't have to worry about counting the items. By default it is expected that all trailers are present when you validate the X12Interchange and by default, this is set to false. To skip all trailer validation, set this to true.
* @param    structureOnly    Optional parameter: This is equivalent to HIPAA Snip level 1, where only the structure and control segments are validated. By default, this is set to false, however if you want to not validate things such as data types, number of repeteitions or dates, set this to true.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The X12Interchange object to validate.
*/
- (void) validateAsyncWithBasicSyntax:(NSNumber*) basicSyntax
                syntaxSet:(NSString*) syntaxSet
                skipTrailer:(NSNumber*) skipTrailer
                structureOnly:(NSNumber*) structureOnly
                contentType:(NSString*) contentType
                body:(X12Interchange*) body
                completionBlock:(CompletedPostValidate) onCompleted;

/**
* Completion block definition for asynchronous call to Ack */
typedef void (^CompletedPostAck)(BOOL success, HttpContext* context, NSArray<X12Interchange> * response, NSError* error);

/**
* Generates functional/implementation and/or technical acknowledment(s) for the requested X12Interchange.
* @param    basicSyntax    Optional parameter: All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The default syntax set is the Extended, hence the default for this parameter is false. By setting this to true, validation will use the Basic syntax set.
* @param    syntaxSet    Optional parameter: In case you need to validate against a syntax set, different than Basic and Extended, populate this filed with all of the allowed symbols, url-escaped.
* @param    detectDuplicates    Optional parameter: If you need to detect duplicates as in functional groups or transactions with the same reference number, set this flag to true. The default is false.
* @param    tranRefNumber    Optional parameter: The default is 1. Set this to whatever the 997 or 999 X12Interchange.ST.TransactionSetControlNumber_02 needs to be. In case there are multiple acknowledgments (for multiple functional groups), this will be starting reference number and every subsequent acknowledgment will have the previous reference number incremented with 1.
* @param    interchangeRefNumber    Optional parameter: The default is 1. Set this to whatever the 997 or 999 X12Interchange.ISA.InterchangeControlNumber_13 needs to be.
* @param    ackForValidTrans    Optional parameter: The default is false. Set this to true if you need AK2 loops included for all valid transaction as well. By default AK2 loops are generated only for invalid transactions.
* @param    batchAcks    Optional parameter: The default is true. Set this to false if you need to generate separate X12Interchange for each acknowledgment. By default all acknowledgments are batched in the same X12Interchange.
* @param    technicalAck    Optional parameter: The default technical acknowledgment TA1 is generated according to X12Interchange.ISA.AcknowledgementRequested_14. You can either enforce it to always generate TA1s or supress it to never generate any TA1s. This will override the flag in X12Interchange.ISA.AcknowledgementRequested_14.              The available values are: default, enforce, suppress.
* @param    ack    Optional parameter: The default value is 997. The type of acknowledgment being generated. Set this to 999 if you need to generate an implementation instead of functional acknowledgment. The available values are: 997, 999.
* @param    ak901isP    Optional parameter: The value of the AK9's first element. By default it is "E". Set this to true if you want this value to be "P" instead.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The X12Interchange object to acknowledge.
*/
- (void) ackAsyncWithBasicSyntax:(NSNumber*) basicSyntax
                syntaxSet:(NSString*) syntaxSet
                detectDuplicates:(NSNumber*) detectDuplicates
                tranRefNumber:(NSNumber*) tranRefNumber
                interchangeRefNumber:(NSNumber*) interchangeRefNumber
                ackForValidTrans:(NSNumber*) ackForValidTrans
                batchAcks:(NSNumber*) batchAcks
                technicalAck:(NSString*) technicalAck
                ack:(NSString*) ack
                ak901isP:(NSNumber*) ak901isP
                contentType:(NSString*) contentType
                body:(X12Interchange*) body
                completionBlock:(CompletedPostAck) onCompleted;

@end