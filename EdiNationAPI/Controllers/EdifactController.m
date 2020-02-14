//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "EdifactController.h"

@implementation EdifactController

/**
* Reads an EDIFACT file and returns its contents translated to an array of EdifactInterchange objects.
* @param    fileName    Required parameter: Upload File
* @param    ignoreNullValues    Optional parameter: Whether to ignore all null values in the response. The default is false.
* @param    continueOnError    Optional parameter: Whether to continue reading if a corrupt interchange is encountered. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    model    Optional parameter: The model to use. By default, the API will infer the model based on the transaction and version identifiers.
* @param    eancomS3    Optional parameter: The default syntax for EANCOM transactions. By default all EANCOM transactions will be translated and validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used.
* @return	Returns the void response from the API call */
- (void) readAsyncWithFileName:(NSURL*) fileName
                ignoreNullValues:(NSNumber*) ignoreNullValues
                continueOnError:(NSNumber*) continueOnError
                charSet:(NSString*) charSet
                model:(NSString*) model
                eancomS3:(NSNumber*) eancomS3
                completionBlock:(CompletedPostRead) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/edifact/read"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"ignoreNullValues": (nil != ignoreNullValues) ? ignoreNullValues : @NO,
                    @"continueOnError": (nil != continueOnError) ? continueOnError : @NO,
                    @"charSet": (nil != charSet) ? charSet : @"utf-8",
                    @"model": (nil != model) ? model : [NSNull null],
                    @"eancomS3": (nil != eancomS3) ? eancomS3 : @NO
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"fileName": fileName
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Ocp-Apim-Subscription-Key": Configuration_OcpApimSubscriptionKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Bad Request"
                                               andContext:_context];
         else if (_response.statusCode == 500)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Server Error"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             NSArray<EdifactInterchange> * _result = (NSArray<EdifactInterchange>*) [EdifactInterchange arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: _strResult] error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Translates an EdifactInterchange object to a raw EDIFACT interchange and returns it as a stream.
* @param    preserveWhitespace    Optional parameter: Whether to preserve blank data elements so the output contains multiple delimiters instead of omitting any excess delimiters. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    postfix    Optional parameter: The postfix to be applied at the end of each segment, just after the segment separator. This is usually a carriage return (CR), line feed (LF) or both. By default, there is no postfix.
* @param    sameRepetionAndDataElement    Optional parameter: Sometimes the same delimiter is used to denote data element separator and repetition separator as in IATA transactions. By default, this is false.
* @param    eancomS3    Optional parameter: The default syntax for EANCOM transactions. By default all EANCOM transactions will be translated and validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The EdifactInterchange object to translate to raw EDIFACT.
* @return	Returns the void response from the API call */
- (void) writeAsyncWithPreserveWhitespace:(NSNumber*) preserveWhitespace
                charSet:(NSString*) charSet
                postfix:(NSString*) postfix
                sameRepetionAndDataElement:(NSNumber*) sameRepetionAndDataElement
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostWrite) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/edifact/write"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"preserveWhitespace": (nil != preserveWhitespace) ? preserveWhitespace : @NO,
                    @"charSet": (nil != charSet) ? charSet : @"utf-8",
                    @"postfix": (nil != postfix) ? postfix : [NSNull null],
                    @"sameRepetionAndDataElement": (nil != sameRepetionAndDataElement) ? sameRepetionAndDataElement : @NO,
                    @"eancomS3": (nil != eancomS3) ? eancomS3 : @NO
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"content-type": @"application/json; charset=utf-8",
        @"Ocp-Apim-Subscription-Key": Configuration_OcpApimSubscriptionKey,
        @"Content-Type": (nil != contentType) ? contentType : @"application/json"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response 
    HttpRequest* _request = [[self clientInstance] postBody: ^(HttpBodyRequest* _request)
    {
        [_request setBody: [[APIHelper jsonSerialize: body] dataUsingEncoding:NSUTF8StringEncoding]]; //set request body
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsBinary: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Bad Request"
                                               andContext:_context];
         else if (_response.statusCode == 500)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Server Error"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSData* _result = [_response rawBody];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Validates an EdifactInterchange object according to the EDIFACT standard rules for each version and transaction.
* @param    syntaxSet    Optional parameter: In case you need to validate against a syntax set, different than UNOA and UNOB, populate this filed with all of the allowed symbols, url-escaped.              All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The supported syntax sets are UNOA and UNOB. The validator infers the correct syntax set from EdifactInterchange.UNB.SYNTAXIDENTIFIER_1.SyntaxIdentifier_1. The symbols added to this field will override the corresponding sets in both UNOA and UNOB.
* @param    skipTrailer    Optional parameter: You are allowed to validate an EdifactInterchange with missing interchange, functional group or transaction trailers (UNZ, UNE, UNT). This is because these will be automatically applied during the Write oprtaion so you don't have to worry about counting the items. By default it is expected that all trailers are present when you validate the EdifactInterchange and by default, this is set to false. To skip all trailer validation, set this to true.
* @param    structureOnly    Optional parameter: This is equivalent to HIPAA Snip level 1, where only the structure and control segments are validated. By default, this is set to false, however if you want to not validate things such as data types, number of repeteitions or dates, set this to true.
* @param    decimalPoint    Optional parameter: This could be either point . (default) or comma ,.
* @param    eancomS3    Optional parameter: The default syntax for EANCOM transactions. By default all EANCOM transactions will be validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The EdifactInterchange object to validate.
* @return	Returns the void response from the API call */
- (void) validateAsyncWithSyntaxSet:(NSString*) syntaxSet
                skipTrailer:(NSNumber*) skipTrailer
                structureOnly:(NSNumber*) structureOnly
                decimalPoint:(NSString*) decimalPoint
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostValidate) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/edifact/validate"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"syntaxSet": (nil != syntaxSet) ? syntaxSet : [NSNull null],
                    @"skipTrailer": (nil != skipTrailer) ? skipTrailer : @NO,
                    @"structureOnly": (nil != structureOnly) ? structureOnly : @NO,
                    @"decimalPoint": (nil != decimalPoint) ? decimalPoint : @".",
                    @"eancomS3": (nil != eancomS3) ? eancomS3 : @NO
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"content-type": @"application/json; charset=utf-8",
        @"Ocp-Apim-Subscription-Key": Configuration_OcpApimSubscriptionKey,
        @"Content-Type": (nil != contentType) ? contentType : @"application/json"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response 
    HttpRequest* _request = [[self clientInstance] postBody: ^(HttpBodyRequest* _request)
    {
        [_request setBody: [[APIHelper jsonSerialize: body] dataUsingEncoding:NSUTF8StringEncoding]]; //set request body
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Bad Request"
                                               andContext:_context];
         else if (_response.statusCode == 500)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Server Error"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             OperationResult* _result = (OperationResult*) [APIHelper jsonDeserialize: _strResult
                toClass: OperationResult.class];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

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
* @return	Returns the void response from the API call */
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
                completionBlock:(CompletedPostAck) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/edifact/ack"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"syntaxSet": (nil != syntaxSet) ? syntaxSet : [NSNull null],
                    @"detectDuplicates": (nil != detectDuplicates) ? detectDuplicates : @NO,
                    @"tranRefNumber": (nil != tranRefNumber) ? tranRefNumber : @1,
                    @"interchangeRefNumber": (nil != interchangeRefNumber) ? interchangeRefNumber : @1,
                    @"ackForValidTrans": (nil != ackForValidTrans) ? ackForValidTrans : @NO,
                    @"batchAcks": (nil != batchAcks) ? batchAcks : @YES,
                    @"technicalAck": (nil != technicalAck) ? technicalAck : [NSNull null],
                    @"eancomS3": (nil != eancomS3) ? eancomS3 : @NO
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"content-type": @"application/json; charset=utf-8",
        @"Ocp-Apim-Subscription-Key": Configuration_OcpApimSubscriptionKey,
        @"Content-Type": (nil != contentType) ? contentType : @"application/json"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response 
    HttpRequest* _request = [[self clientInstance] postBody: ^(HttpBodyRequest* _request)
    {
        [_request setBody: [[APIHelper jsonSerialize: body] dataUsingEncoding:NSUTF8StringEncoding]]; //set request body
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Bad Request"
                                               andContext:_context];
         else if (_response.statusCode == 500)
             _statusError = [[ErrorDetailsException alloc] initWithReason: @"Server Error"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             NSArray<EdifactInterchange> * _result = (NSArray<EdifactInterchange>*) [EdifactInterchange arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: _strResult] error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end