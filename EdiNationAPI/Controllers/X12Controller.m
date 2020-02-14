//
//  EdiNationAPI
//
//  This file was automatically generated for EdiNation by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "X12Controller.h"

@implementation X12Controller

/**
* Reads an X12 file and returns its contents translated to an array of X12Interchange objects.
* @param    fileName    Required parameter: Upload File
* @param    ignoreNullValues    Optional parameter: Whether to ignore all null values in the response. The default is false.
* @param    continueOnError    Optional parameter: Whether to continue reading if a corrupt interchange is encountered. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    model    Optional parameter: The model to use. By default, the API will infer the model based on the transaction and version identifiers.
* @return	Returns the void response from the API call */
- (void) readAsyncWithFileName:(NSURL*) fileName
                ignoreNullValues:(NSNumber*) ignoreNullValues
                continueOnError:(NSNumber*) continueOnError
                charSet:(NSString*) charSet
                model:(NSString*) model
                completionBlock:(CompletedPostRead) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/x12/read"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"ignoreNullValues": (nil != ignoreNullValues) ? ignoreNullValues : @NO,
                    @"continueOnError": (nil != continueOnError) ? continueOnError : @NO,
                    @"charSet": (nil != charSet) ? charSet : @"utf-8",
                    @"model": (nil != model) ? model : [NSNull null]
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
             NSArray<X12Interchange> * _result = (NSArray<X12Interchange>*) [X12Interchange arrayOfModelsFromDictionaries:
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
* Translates an X12Interchange object to a raw X12 interchange and returns it as a stream.
* @param    preserveWhitespace    Optional parameter: Whether to preserve blank data elements so the output contains multiple delimiters instead of omitting any excess delimiters. The default is false.
* @param    charSet    Optional parameter: The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16.
* @param    postfix    Optional parameter: The postfix to be applied at the end of each segment, just after the segment separator. This is usually a carriage return (CR), line feed (LF) or both. By default, there is no postfix.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The X12Interchange object to translate to raw X12.
* @return	Returns the void response from the API call */
- (void) writeAsyncWithPreserveWhitespace:(NSNumber*) preserveWhitespace
                charSet:(NSString*) charSet
                postfix:(NSString*) postfix
                contentType:(NSString*) contentType
                body:(X12Interchange*) body
                completionBlock:(CompletedPostWrite) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/x12/write"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"preserveWhitespace": (nil != preserveWhitespace) ? preserveWhitespace : @NO,
                    @"charSet": (nil != charSet) ? charSet : @"utf-8",
                    @"postfix": (nil != postfix) ? postfix : [NSNull null]
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
* Validates an X12Interchange object according to the X12 standard rules for each version and transaction.
* @param    basicSyntax    Optional parameter: All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The default syntax set is the Extended, hence the default for this parameter is false. By setting this to true, validation will use the Basic syntax set.
* @param    syntaxSet    Optional parameter: In case you need to validate against a syntax set, different than Basic and Extended, populate this filed with all of the allowed symbols, url-escaped.
* @param    skipTrailer    Optional parameter: You are allowed to validate an X12Interchange with missing interchange, functional group or transaction trailers (IEA, GE, SE). This is because these will be automatically applied during the Write oprtaion so you don't have to worry about counting the items. By default it is expected that all trailers are present when you validate the X12Interchange and by default, this is set to false. To skip all trailer validation, set this to true.
* @param    structureOnly    Optional parameter: This is equivalent to HIPAA Snip level 1, where only the structure and control segments are validated. By default, this is set to false, however if you want to not validate things such as data types, number of repeteitions or dates, set this to true.
* @param    contentType    Optional parameter: Example: application/json
* @param    body    Optional parameter: The X12Interchange object to validate.
* @return	Returns the void response from the API call */
- (void) validateAsyncWithBasicSyntax:(NSNumber*) basicSyntax
                syntaxSet:(NSString*) syntaxSet
                skipTrailer:(NSNumber*) skipTrailer
                structureOnly:(NSNumber*) structureOnly
                contentType:(NSString*) contentType
                body:(X12Interchange*) body
                completionBlock:(CompletedPostValidate) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/x12/validate"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"basicSyntax": (nil != basicSyntax) ? basicSyntax : @NO,
                    @"syntaxSet": (nil != syntaxSet) ? syntaxSet : [NSNull null],
                    @"skipTrailer": (nil != skipTrailer) ? skipTrailer : @NO,
                    @"structureOnly": (nil != structureOnly) ? structureOnly : @NO
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
* @return	Returns the void response from the API call */
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
                completionBlock:(CompletedPostAck) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/x12/ack"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"basicSyntax": (nil != basicSyntax) ? basicSyntax : @NO,
                    @"syntaxSet": (nil != syntaxSet) ? syntaxSet : [NSNull null],
                    @"detectDuplicates": (nil != detectDuplicates) ? detectDuplicates : @NO,
                    @"tranRefNumber": (nil != tranRefNumber) ? tranRefNumber : @1,
                    @"interchangeRefNumber": (nil != interchangeRefNumber) ? interchangeRefNumber : @1,
                    @"ackForValidTrans": (nil != ackForValidTrans) ? ackForValidTrans : @NO,
                    @"batchAcks": (nil != batchAcks) ? batchAcks : @YES,
                    @"technicalAck": (nil != technicalAck) ? technicalAck : [NSNull null],
                    @"ack": (nil != ack) ? ack : @"997",
                    @"ak901isP": (nil != ak901isP) ? ak901isP : @NO
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
             NSArray<X12Interchange> * _result = (NSArray<X12Interchange>*) [X12Interchange arrayOfModelsFromDictionaries:
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