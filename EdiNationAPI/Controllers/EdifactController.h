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
#import "EdifactInterchange.h"
#import "ErrorDetailsException.h"
#import "OperationResult.h"

@interface EdifactController : BaseController

/**
* Completion block definition for asynchronous call to Read */
typedef void (^CompletedPostRead)(BOOL success, HttpContext* context, NSArray<EdifactInterchange> * response, NSError* error);

/**
* Reads an EDIFACT file and returns its contents translated to an array of EdifactInterchange objects.
* @param    fileName    Required parameter: Upload File
* @param    ignoreNullValues    Optional parameter: Whether to ignore all null values in the response. The default is false.
* @param    continueOnError    Optional parameter: Whether to continue reading if a corrupt interchange is encountered. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    model    Optional parameter: The model to use. By default, the API will infer the model based on the transaction and version identifiers.
* @param    eancomS3    Optional parameter: The default syntax for EANCOM transactions. By default all EANCOM transactions will be translated and validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used.
*/
- (void) readAsyncWithFileName:(NSURL*) fileName
                ignoreNullValues:(NSNumber*) ignoreNullValues
                continueOnError:(NSNumber*) continueOnError
                charSet:(NSString*) charSet
                model:(NSString*) model
                eancomS3:(NSNumber*) eancomS3
                completionBlock:(CompletedPostRead) onCompleted;

/**
* Completion block definition for asynchronous call to Write */
typedef void (^CompletedPostWrite)(BOOL success, HttpContext* context, NSData* response, NSError* error);

/**
* Translates an EdifactInterchange object to a raw EDIFACT interchange and returns it as a stream.
* @param    preserveWhitespace    Optional parameter: Whether to preserve blank data elements so the output contains multiple delimiters instead of omitting any excess delimiters. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    postfix    Optional parameter: The postfix to be applied at the end of each segment, just after the segment separator. This is usually a carriage return (CR), line feed (LF) or both. By default, there is no postfix.
* @param    sameRepetionAndDataElement    Optional parameter: Sometimes the same delimiter is used to denote data element separator and repetition separator as in IATA transactions. By default, this is false.
* @param    eancomS3    Optional parameter: The default syntax for EANCOM transactions. By default all EANCOM transactions will be translated and validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The EdifactInterchange object to translate to raw EDIFACT.
*/
- (void) writeAsyncWithPreserveWhitespace:(NSNumber*) preserveWhitespace
                charSet:(NSString*) charSet
                postfix:(NSString*) postfix
                sameRepetionAndDataElement:(NSNumber*) sameRepetionAndDataElement
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostWrite) onCompleted;

/**
* Completion block definition for asynchronous call to Validate */
typedef void (^CompletedPostValidate)(BOOL success, HttpContext* context, OperationResult* response, NSError* error);

/**
* Validates an EdifactInterchange object according to the EDIFACT standard rules for each version and transaction.
* @param    syntaxSet    Optional parameter: In case you need to validate against a syntax set, different than UNOA and UNOB, populate this filed with all of the allowed symbols, url-escaped.              All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The supported syntax sets are UNOA and UNOB. The validator infers the correct syntax set from EdifactInterchange.UNB.SYNTAXIDENTIFIER_1.SyntaxIdentifier_1. The symbols added to this field will override the corresponding sets in both UNOA and UNOB.
* @param    skipTrailer    Optional parameter: You are allowed to validate an EdifactInterchange with missing interchange, functional group or transaction trailers (UNZ, UNE, UNT). This is because these will be automatically applied during the Write oprtaion so you don't have to worry about counting the items. By default it is expected that all trailers are present when you validate the EdifactInterchange and by default, this is set to false. To skip all trailer validation, set this to true.
* @param    structureOnly    Optional parameter: This is equivalent to HIPAA Snip level 1, where only the structure and control segments are validated. By default, this is set to false, however if you want to not validate things such as data types, number of repeteitions or dates, set this to true.
* @param    decimalPoint    Optional parameter: This could be either point . (default) or comma ,.
* @param    eancomS3    Optional parameter: The default syntax for EANCOM transactions. By default all EANCOM transactions will be validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The EdifactInterchange object to validate.
*/
- (void) validateAsyncWithSyntaxSet:(NSString*) syntaxSet
                skipTrailer:(NSNumber*) skipTrailer
                structureOnly:(NSNumber*) structureOnly
                decimalPoint:(NSString*) decimalPoint
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostValidate) onCompleted;

/**
* Completion block definition for asynchronous call to Ack */
typedef void (^CompletedPostAck)(BOOL success, HttpContext* context, NSArray<EdifactInterchange> * response, NSError* error);

/**
* Generates functional and/or technical CONTRL acknowledment(s) for the requested EdifactInterchange.
* @param    syntaxSet    Optional parameter: In case you need to validate against a syntax set, different than UNOA and UNOB, populate this filed with all of the allowed symbols, url-escaped. All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The supported syntax sets are UNOA and UNOB. The validator infers the correct syntax set from EdifactInterchange.UNB.SYNTAXIDENTIFIER_1.SyntaxIdentifier_1. The symbols added to this field will override the corresponding sets in both UNOA and UNOB.
* @param    detectDuplicates    Optional parameter: If you need to detect duplicates as in functional groups or transactions with the same reference number, set this flag to true. The default is false.
* @param    tranRefNumber    Optional parameter: The default is 1. Set this to whatever the CONTRL UNH.MessageReferenceNumber_01 needs to be.
* @param    interchangeRefNumber    Optional parameter: The default is 1. Set this to whatever the CONTRL EdifactInterchange.UNB.InterchangeControlReference_5 needs to be.
* @param    ackForValidTrans    Optional parameter: The default is false. Set this to true if you need UCM loops included for all valid transaction as well. By default UCM loops are generated only for invalid transactions.
* @param    batchAcks    Optional parameter: The default is true. Set this to false if you need to generate separate EdifactInterchange for each acknowledgment. By default all acknowledgments are batched in the same EdifactInterchange.
* @param    technicalAck    Optional parameter: The default technical acknowledgment CONTRL is generated according to EdifactInterchange.UNB.AcknowledgementRequest_9. You can either enforce it to always generate technical CONTRLs or supress it to never generate any technical CONTRLs. This will override the flag in EdifactInterchange.UNB.AcknowledgementRequest_9.              The available values are: default, enforce, suppress.
* @param    eancomS3    Optional parameter: The default syntax for EANCOM transactions. By default all EANCOM transactions will be validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The EdifactInterchange object to acknowledge.
*/
- (void) ackAsyncWithSyntaxSet:(NSString*) syntaxSet
                detectDuplicates:(NSNumber*) detectDuplicates
                tranRefNumber:(NSNumber*) tranRefNumber
                interchangeRefNumber:(NSNumber*) interchangeRefNumber
                ackForValidTrans:(NSNumber*) ackForValidTrans
                batchAcks:(NSNumber*) batchAcks
                technicalAck:(NSString*) technicalAck
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostAck) onCompleted;

@end