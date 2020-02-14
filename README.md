# Getting started

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)

Open the project workspace using the (EdiNationAPI.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the EdiNationAPI library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'EdiNationAPI', :path => 'Vendor/EdiNationAPI'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the EdiNationAPI.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=EdiNation%20API-ObjC&workspaceName=EdiNationAPI&projectName=EdiNationAPI&rootNamespace=EdiNationAPI)


## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| ocpApimSubscriptionKey | API key to authenticate requests |



Configuration variables can be set as following.
```Objc
// Configuration parameters and credentials
Configuration_OcpApimSubscriptionKey = "Configuration_OcpApimSubscriptionKey"; // API key to authenticate requests

```

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [EdifactController](#edifact_controller)
* [EdiModelController](#edi_model_controller)
* [X12Controller](#x12_controller)

## <a name="edifact_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EdifactController") EdifactController

### Get singleton instance
```objc
Edifact* edifact = [[Edifact alloc]init] ;
```

### <a name="read_async_with_file_name"></a>![Method: ](https://apidocs.io/img/method.png ".EdifactController.readAsyncWithFileName") readAsyncWithFileName

> Reads an EDIFACT file and returns its contents translated to an array of EdifactInterchange objects.


```objc
function readAsyncWithFileName:(NSURL*) fileName
                ignoreNullValues:(NSNumber*) ignoreNullValues
                continueOnError:(NSNumber*) continueOnError
                charSet:(NSString*) charSet
                model:(NSString*) model
                eancomS3:(NSNumber*) eancomS3
                completionBlock:(CompletedPostRead) onCompleted(fileName ignoreNullValues : ignoreNullValues continueOnError : continueOnError charSet : charSet model : model eancomS3 : eancomS3)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fileName |  ``` Required ```  | Upload File |
| ignoreNullValues |  ``` Optional ```  ``` DefaultValue ```  | Whether to ignore all null values in the response. The default is false. |
| continueOnError |  ``` Optional ```  ``` DefaultValue ```  | Whether to continue reading if a corrupt interchange is encountered. The default is false. |
| charSet |  ``` Optional ```  ``` DefaultValue ```  | The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16. |
| model |  ``` Optional ```  | The model to use. By default, the API will infer the model based on the transaction and version identifiers. |
| eancomS3 |  ``` Optional ```  ``` DefaultValue ```  | The default syntax for EANCOM transactions. By default all EANCOM transactions will be translated and validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used. |





#### Example Usage

```objc
    // Parameters for the API call
    NSURL* fileName = [NSURL URLWithString: @"pathtofile"];
    NSNumber* ignoreNullValues = true;
    NSNumber* continueOnError = true;
    NSString* charSet = @"charSet";
    NSString* model = @"model";
    NSNumber* eancomS3 = true;

    [self.edifact readAsyncWithFileName: fileName ignoreNullValues : ignoreNullValues continueOnError : continueOnError charSet : charSet model : model eancomS3 : eancomS3  completionBlock:^(BOOL success, HttpContext* context, NSArray<EdifactInterchange> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="write_async_with_preserve_whitespace"></a>![Method: ](https://apidocs.io/img/method.png ".EdifactController.writeAsyncWithPreserveWhitespace") writeAsyncWithPreserveWhitespace

> Translates an EdifactInterchange object to a raw EDIFACT interchange and returns it as a stream.


```objc
function writeAsyncWithPreserveWhitespace:(NSNumber*) preserveWhitespace
                charSet:(NSString*) charSet
                postfix:(NSString*) postfix
                sameRepetionAndDataElement:(NSNumber*) sameRepetionAndDataElement
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostWrite) onCompleted(preserveWhitespace charSet : charSet postfix : postfix sameRepetionAndDataElement : sameRepetionAndDataElement eancomS3 : eancomS3 contentType : contentType body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| preserveWhitespace |  ``` Optional ```  ``` DefaultValue ```  | Whether to preserve blank data elements so the output contains multiple delimiters instead of omitting any excess delimiters. The default is false. |
| charSet |  ``` Optional ```  ``` DefaultValue ```  | The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16. |
| postfix |  ``` Optional ```  | The postfix to be applied at the end of each segment, just after the segment separator. This is usually a carriage return (CR), line feed (LF) or both. By default, there is no postfix. |
| sameRepetionAndDataElement |  ``` Optional ```  ``` DefaultValue ```  | Sometimes the same delimiter is used to denote data element separator and repetition separator as in IATA transactions. By default, this is false. |
| eancomS3 |  ``` Optional ```  ``` DefaultValue ```  | The default syntax for EANCOM transactions. By default all EANCOM transactions will be translated and validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used. |
| contentType |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| body |  ``` Optional ```  | The EdifactInterchange object to translate to raw EDIFACT. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* preserveWhitespace = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* charSet = @"utf-8";
    NSString* postfix = @"postfix";
    NSNumber* sameRepetionAndDataElement = [NSNumber numberWithBool: [@"False" boolValue]];
    NSNumber* eancomS3 = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* contentType = @"Content-Type";
    EdifactInterchange* body = [[EdifactInterchange alloc]init];

    [self.edifact writeAsyncWithPreserveWhitespace: preserveWhitespace charSet : charSet postfix : postfix sameRepetionAndDataElement : sameRepetionAndDataElement eancomS3 : eancomS3 contentType : contentType body : body  completionBlock:^(BOOL success, HttpContext* context, NSData* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="validate_async_with_syntax_set"></a>![Method: ](https://apidocs.io/img/method.png ".EdifactController.validateAsyncWithSyntaxSet") validateAsyncWithSyntaxSet

> Validates an EdifactInterchange object according to the EDIFACT standard rules for each version and transaction.


```objc
function validateAsyncWithSyntaxSet:(NSString*) syntaxSet
                skipTrailer:(NSNumber*) skipTrailer
                structureOnly:(NSNumber*) structureOnly
                decimalPoint:(NSString*) decimalPoint
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostValidate) onCompleted(syntaxSet skipTrailer : skipTrailer structureOnly : structureOnly decimalPoint : decimalPoint eancomS3 : eancomS3 contentType : contentType body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| syntaxSet |  ``` Optional ```  | In case you need to validate against a syntax set, different than UNOA and UNOB, populate this filed with all of the allowed symbols, url-escaped. All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The supported syntax sets are UNOA and UNOB. The validator infers the correct syntax set from EdifactInterchange.UNB.SYNTAXIDENTIFIER_1.SyntaxIdentifier_1. The symbols added to this field will override the corresponding sets in both UNOA and UNOB. |
| skipTrailer |  ``` Optional ```  ``` DefaultValue ```  | You are allowed to validate an EdifactInterchange with missing interchange, functional group or transaction trailers (UNZ, UNE, UNT). This is because these will be automatically applied during the Write oprtaion so you don't have to worry about counting the items. By default it is expected that all trailers are present when you validate the EdifactInterchange and by default, this is set to false. To skip all trailer validation, set this to true. |
| structureOnly |  ``` Optional ```  ``` DefaultValue ```  | This is equivalent to HIPAA Snip level 1, where only the structure and control segments are validated. By default, this is set to false, however if you want to not validate things such as data types, number of repeteitions or dates, set this to true. |
| decimalPoint |  ``` Optional ```  ``` DefaultValue ```  | This could be either point . (default) or comma ,. |
| eancomS3 |  ``` Optional ```  ``` DefaultValue ```  | The default syntax for EANCOM transactions. By default all EANCOM transactions will be validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used. |
| contentType |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| body |  ``` Optional ```  | The EdifactInterchange object to validate. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* syntaxSet = @"syntaxSet";
    NSNumber* skipTrailer = [NSNumber numberWithBool: [@"False" boolValue]];
    NSNumber* structureOnly = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* decimalPoint = @".";
    NSNumber* eancomS3 = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* contentType = @"Content-Type";
    EdifactInterchange* body = [[EdifactInterchange alloc]init];

    [self.edifact validateAsyncWithSyntaxSet: syntaxSet skipTrailer : skipTrailer structureOnly : structureOnly decimalPoint : decimalPoint eancomS3 : eancomS3 contentType : contentType body : body  completionBlock:^(BOOL success, HttpContext* context, OperationResult* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="ack_async_with_syntax_set"></a>![Method: ](https://apidocs.io/img/method.png ".EdifactController.ackAsyncWithSyntaxSet") ackAsyncWithSyntaxSet

> Generates functional and/or technical CONTRL acknowledment(s) for the requested EdifactInterchange.


```objc
function ackAsyncWithSyntaxSet:(NSString*) syntaxSet
                detectDuplicates:(NSNumber*) detectDuplicates
                tranRefNumber:(NSNumber*) tranRefNumber
                interchangeRefNumber:(NSNumber*) interchangeRefNumber
                ackForValidTrans:(NSNumber*) ackForValidTrans
                batchAcks:(NSNumber*) batchAcks
                technicalAck:(NSString*) technicalAck
                eancomS3:(NSNumber*) eancomS3
                contentType:(NSString*) contentType
                body:(EdifactInterchange*) body
                completionBlock:(CompletedPostAck) onCompleted(syntaxSet detectDuplicates : detectDuplicates tranRefNumber : tranRefNumber interchangeRefNumber : interchangeRefNumber ackForValidTrans : ackForValidTrans batchAcks : batchAcks technicalAck : technicalAck eancomS3 : eancomS3 contentType : contentType body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| syntaxSet |  ``` Optional ```  | In case you need to validate against a syntax set, different than UNOA and UNOB, populate this filed with all of the allowed symbols, url-escaped. All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The supported syntax sets are UNOA and UNOB. The validator infers the correct syntax set from EdifactInterchange.UNB.SYNTAXIDENTIFIER_1.SyntaxIdentifier_1. The symbols added to this field will override the corresponding sets in both UNOA and UNOB. |
| detectDuplicates |  ``` Optional ```  ``` DefaultValue ```  | If you need to detect duplicates as in functional groups or transactions with the same reference number, set this flag to true. The default is false. |
| tranRefNumber |  ``` Optional ```  ``` DefaultValue ```  | The default is 1. Set this to whatever the CONTRL UNH.MessageReferenceNumber_01 needs to be. |
| interchangeRefNumber |  ``` Optional ```  ``` DefaultValue ```  | The default is 1. Set this to whatever the CONTRL EdifactInterchange.UNB.InterchangeControlReference_5 needs to be. |
| ackForValidTrans |  ``` Optional ```  ``` DefaultValue ```  | The default is false. Set this to true if you need UCM loops included for all valid transaction as well. By default UCM loops are generated only for invalid transactions. |
| batchAcks |  ``` Optional ```  ``` DefaultValue ```  | The default is true. Set this to false if you need to generate separate EdifactInterchange for each acknowledgment. By default all acknowledgments are batched in the same EdifactInterchange. |
| technicalAck |  ``` Optional ```  | The default technical acknowledgment CONTRL is generated according to EdifactInterchange.UNB.AcknowledgementRequest_9. You can either enforce it to always generate technical CONTRLs or supress it to never generate any technical CONTRLs. This will override the flag in EdifactInterchange.UNB.AcknowledgementRequest_9. The available values are: default, enforce, suppress. |
| eancomS3 |  ``` Optional ```  ``` DefaultValue ```  | The default syntax for EANCOM transactions. By default all EANCOM transactions will be validated according to the rules of Syntax 4. Set this flag to true if you need Syntax 3 to be used. |
| contentType |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| body |  ``` Optional ```  | The EdifactInterchange object to acknowledge. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* syntaxSet = @"syntaxSet";
    NSNumber* detectDuplicates = [NSNumber numberWithBool: [@"False" boolValue]];
    NSNumber* tranRefNumber = [NSNumber numberWithInteger:[@"1" integerValue]];
    NSNumber* interchangeRefNumber = [NSNumber numberWithInteger:[@"1" integerValue]];
    NSNumber* ackForValidTrans = [NSNumber numberWithBool: [@"False" boolValue]];
    NSNumber* batchAcks = [NSNumber numberWithBool: [@"True" boolValue]];
    NSString* technicalAck = @"technicalAck";
    NSNumber* eancomS3 = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* contentType = @"Content-Type";
    EdifactInterchange* body = [[EdifactInterchange alloc]init];

    [self.edifact ackAsyncWithSyntaxSet: syntaxSet detectDuplicates : detectDuplicates tranRefNumber : tranRefNumber interchangeRefNumber : interchangeRefNumber ackForValidTrans : ackForValidTrans batchAcks : batchAcks technicalAck : technicalAck eancomS3 : eancomS3 contentType : contentType body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<EdifactInterchange> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



[Back to List of Controllers](#list_of_controllers)

## <a name="edi_model_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EdiModelController") EdiModelController

### Get singleton instance
```objc
EdiModel* ediModel = [[EdiModel alloc]init] ;
```

### <a name="upload_async_with_file_name"></a>![Method: ](https://apidocs.io/img/method.png ".EdiModelController.uploadAsyncWithFileName") uploadAsyncWithFileName

> Uploads a model file to a subscription. It must be a valid DOT NET assembly.


```objc
function uploadAsyncWithFileName:(NSURL*) fileName
                completionBlock:(CompletedPostUpload) onCompleted(fileName)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fileName |  ``` Required ```  | Upload File |





#### Example Usage

```objc
    // Parameters for the API call
    NSURL* fileName = [NSURL URLWithString: @"pathtofile"];

    [self.ediModel uploadAsyncWithFileName: fileName  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="get_models_async_with_system"></a>![Method: ](https://apidocs.io/img/method.png ".EdiModelController.getModelsAsyncWithSystem") getModelsAsyncWithSystem

> Retrieves all models for a subscription.


```objc
function getModelsAsyncWithSystem:(NSNumber*) system
                completionBlock:(CompletedGetModels) onCompleted(system)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| system |  ``` Optional ```  ``` DefaultValue ```  | Whether to retrieve EdiNation's or custom uploaded models. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* system = [NSNumber numberWithBool: [@"True" boolValue]];

    [self.ediModel getModelsAsyncWithSystem: system  completionBlock:^(BOOL success, HttpContext* context, NSArray<EdiModel> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="get_model_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".EdiModelController.getModelAsyncWithId") getModelAsyncWithId

> Retrieve a particular model file as a stream.


```objc
function getModelAsyncWithId:(NSString*) mid
                system:(NSNumber*) system
                completionBlock:(CompletedGetModel) onCompleted(mid system : system)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | The model name. |
| system |  ``` Optional ```  ``` DefaultValue ```  | Whether to search in EdiNation's or custom uploaded models. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mid = @"id";
    NSNumber* system = true;

    [self.ediModel getModelAsyncWithId: mid system : system  completionBlock:^(BOOL success, HttpContext* context, NSData* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="delete_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".EdiModelController.deleteAsyncWithId") deleteAsyncWithId

> Deletes a particular model from the custom models.


```objc
function deleteAsyncWithId:(NSString*) mid
                completionBlock:(CompletedDelete) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | The model name. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mid = @"id";

    [self.ediModel deleteAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



[Back to List of Controllers](#list_of_controllers)

## <a name="x12_controller"></a>![Class: ](https://apidocs.io/img/class.png ".X12Controller") X12Controller

### Get singleton instance
```objc
X12* x12 = [[X12 alloc]init] ;
```

### <a name="read_async_with_file_name"></a>![Method: ](https://apidocs.io/img/method.png ".X12Controller.readAsyncWithFileName") readAsyncWithFileName

> Reads an X12 file and returns its contents translated to an array of X12Interchange objects.


```objc
function readAsyncWithFileName:(NSURL*) fileName
                ignoreNullValues:(NSNumber*) ignoreNullValues
                continueOnError:(NSNumber*) continueOnError
                charSet:(NSString*) charSet
                model:(NSString*) model
                completionBlock:(CompletedPostRead) onCompleted(fileName ignoreNullValues : ignoreNullValues continueOnError : continueOnError charSet : charSet model : model)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fileName |  ``` Required ```  | Upload File |
| ignoreNullValues |  ``` Optional ```  ``` DefaultValue ```  | Whether to ignore all null values in the response. The default is false. |
| continueOnError |  ``` Optional ```  ``` DefaultValue ```  | Whether to continue reading if a corrupt interchange is encountered. The default is false. |
| charSet |  ``` Optional ```  ``` DefaultValue ```  | The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16. |
| model |  ``` Optional ```  | The model to use. By default, the API will infer the model based on the transaction and version identifiers. |





#### Example Usage

```objc
    // Parameters for the API call
    NSURL* fileName = [NSURL URLWithString: @"pathtofile"];
    NSNumber* ignoreNullValues = true;
    NSNumber* continueOnError = true;
    NSString* charSet = @"charSet";
    NSString* model = @"model";

    [self.x12 readAsyncWithFileName: fileName ignoreNullValues : ignoreNullValues continueOnError : continueOnError charSet : charSet model : model  completionBlock:^(BOOL success, HttpContext* context, NSArray<X12Interchange> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="write_async_with_preserve_whitespace"></a>![Method: ](https://apidocs.io/img/method.png ".X12Controller.writeAsyncWithPreserveWhitespace") writeAsyncWithPreserveWhitespace

> Translates an X12Interchange object to a raw X12 interchange and returns it as a stream.


```objc
function writeAsyncWithPreserveWhitespace:(NSNumber*) preserveWhitespace
                charSet:(NSString*) charSet
                postfix:(NSString*) postfix
                contentType:(NSString*) contentType
                body:(X12Interchange*) body
                completionBlock:(CompletedPostWrite) onCompleted(preserveWhitespace charSet : charSet postfix : postfix contentType : contentType body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| preserveWhitespace |  ``` Optional ```  ``` DefaultValue ```  | Whether to preserve blank data elements so the output contains multiple delimiters instead of omitting any excess delimiters. The default is false. |
| charSet |  ``` Optional ```  ``` DefaultValue ```  | The encoding of the file contents. The default is utf-8. The available values are: unicodeFFFE, utf-32, utf-32BE, us-ascii, iso-8859-1, utf-7, utf-8, utf-16. |
| postfix |  ``` Optional ```  | The postfix to be applied at the end of each segment, just after the segment separator. This is usually a carriage return (CR), line feed (LF) or both. By default, there is no postfix. |
| contentType |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| body |  ``` Optional ```  | The X12Interchange object to translate to raw X12. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* preserveWhitespace = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* charSet = @"utf-8";
    NSString* postfix = @"postfix";
    NSString* contentType = @"Content-Type";
    X12Interchange* body = [[X12Interchange alloc]init];

    [self.x12 writeAsyncWithPreserveWhitespace: preserveWhitespace charSet : charSet postfix : postfix contentType : contentType body : body  completionBlock:^(BOOL success, HttpContext* context, NSData* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="validate_async_with_basic_syntax"></a>![Method: ](https://apidocs.io/img/method.png ".X12Controller.validateAsyncWithBasicSyntax") validateAsyncWithBasicSyntax

> Validates an X12Interchange object according to the X12 standard rules for each version and transaction.


```objc
function validateAsyncWithBasicSyntax:(NSNumber*) basicSyntax
                syntaxSet:(NSString*) syntaxSet
                skipTrailer:(NSNumber*) skipTrailer
                structureOnly:(NSNumber*) structureOnly
                contentType:(NSString*) contentType
                body:(X12Interchange*) body
                completionBlock:(CompletedPostValidate) onCompleted(basicSyntax syntaxSet : syntaxSet skipTrailer : skipTrailer structureOnly : structureOnly contentType : contentType body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| basicSyntax |  ``` Optional ```  ``` DefaultValue ```  | All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The default syntax set is the Extended, hence the default for this parameter is false. By setting this to true, validation will use the Basic syntax set. |
| syntaxSet |  ``` Optional ```  | In case you need to validate against a syntax set, different than Basic and Extended, populate this filed with all of the allowed symbols, url-escaped. |
| skipTrailer |  ``` Optional ```  ``` DefaultValue ```  | You are allowed to validate an X12Interchange with missing interchange, functional group or transaction trailers (IEA, GE, SE). This is because these will be automatically applied during the Write oprtaion so you don't have to worry about counting the items. By default it is expected that all trailers are present when you validate the X12Interchange and by default, this is set to false. To skip all trailer validation, set this to true. |
| structureOnly |  ``` Optional ```  ``` DefaultValue ```  | This is equivalent to HIPAA Snip level 1, where only the structure and control segments are validated. By default, this is set to false, however if you want to not validate things such as data types, number of repeteitions or dates, set this to true. |
| contentType |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| body |  ``` Optional ```  | The X12Interchange object to validate. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* basicSyntax = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* syntaxSet = @"syntaxSet";
    NSNumber* skipTrailer = [NSNumber numberWithBool: [@"False" boolValue]];
    NSNumber* structureOnly = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* contentType = @"Content-Type";
    X12Interchange* body = [[X12Interchange alloc]init];

    [self.x12 validateAsyncWithBasicSyntax: basicSyntax syntaxSet : syntaxSet skipTrailer : skipTrailer structureOnly : structureOnly contentType : contentType body : body  completionBlock:^(BOOL success, HttpContext* context, OperationResult* response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



### <a name="ack_async_with_basic_syntax"></a>![Method: ](https://apidocs.io/img/method.png ".X12Controller.ackAsyncWithBasicSyntax") ackAsyncWithBasicSyntax

> Generates functional/implementation and/or technical acknowledment(s) for the requested X12Interchange.


```objc
function ackAsyncWithBasicSyntax:(NSNumber*) basicSyntax
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
                completionBlock:(CompletedPostAck) onCompleted(basicSyntax syntaxSet : syntaxSet detectDuplicates : detectDuplicates tranRefNumber : tranRefNumber interchangeRefNumber : interchangeRefNumber ackForValidTrans : ackForValidTrans batchAcks : batchAcks technicalAck : technicalAck ack : ack ak901isP : ak901isP contentType : contentType body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| basicSyntax |  ``` Optional ```  ``` DefaultValue ```  | All data elements with alpha (A) or alphanumeric (AN) data types are validated against a syntax set of allowed characters. The default syntax set is the Extended, hence the default for this parameter is false. By setting this to true, validation will use the Basic syntax set. |
| syntaxSet |  ``` Optional ```  | In case you need to validate against a syntax set, different than Basic and Extended, populate this filed with all of the allowed symbols, url-escaped. |
| detectDuplicates |  ``` Optional ```  ``` DefaultValue ```  | If you need to detect duplicates as in functional groups or transactions with the same reference number, set this flag to true. The default is false. |
| tranRefNumber |  ``` Optional ```  ``` DefaultValue ```  | The default is 1. Set this to whatever the 997 or 999 X12Interchange.ST.TransactionSetControlNumber_02 needs to be. In case there are multiple acknowledgments (for multiple functional groups), this will be starting reference number and every subsequent acknowledgment will have the previous reference number incremented with 1. |
| interchangeRefNumber |  ``` Optional ```  ``` DefaultValue ```  | The default is 1. Set this to whatever the 997 or 999 X12Interchange.ISA.InterchangeControlNumber_13 needs to be. |
| ackForValidTrans |  ``` Optional ```  ``` DefaultValue ```  | The default is false. Set this to true if you need AK2 loops included for all valid transaction as well. By default AK2 loops are generated only for invalid transactions. |
| batchAcks |  ``` Optional ```  ``` DefaultValue ```  | The default is true. Set this to false if you need to generate separate X12Interchange for each acknowledgment. By default all acknowledgments are batched in the same X12Interchange. |
| technicalAck |  ``` Optional ```  | The default technical acknowledgment TA1 is generated according to X12Interchange.ISA.AcknowledgementRequested_14. You can either enforce it to always generate TA1s or supress it to never generate any TA1s. This will override the flag in X12Interchange.ISA.AcknowledgementRequested_14. The available values are: default, enforce, suppress. |
| ack |  ``` Optional ```  ``` DefaultValue ```  | The default value is 997. The type of acknowledgment being generated. Set this to 999 if you need to generate an implementation instead of functional acknowledgment. The available values are: 997, 999. |
| ak901isP |  ``` Optional ```  ``` DefaultValue ```  | The value of the AK9's first element. By default it is "E". Set this to true if you want this value to be "P" instead. |
| contentType |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| body |  ``` Optional ```  | The X12Interchange object to acknowledge. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* basicSyntax = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* syntaxSet = @"syntaxSet";
    NSNumber* detectDuplicates = [NSNumber numberWithBool: [@"False" boolValue]];
    NSNumber* tranRefNumber = [NSNumber numberWithInteger:[@"1" integerValue]];
    NSNumber* interchangeRefNumber = [NSNumber numberWithInteger:[@"1" integerValue]];
    NSNumber* ackForValidTrans = [NSNumber numberWithBool: [@"False" boolValue]];
    NSNumber* batchAcks = [NSNumber numberWithBool: [@"True" boolValue]];
    NSString* technicalAck = @"technicalAck";
    NSString* ack = @"997";
    NSNumber* ak901isP = [NSNumber numberWithBool: [@"False" boolValue]];
    NSString* contentType = @"Content-Type";
    X12Interchange* body = [[X12Interchange alloc]init];

    [self.x12 ackAsyncWithBasicSyntax: basicSyntax syntaxSet : syntaxSet detectDuplicates : detectDuplicates tranRefNumber : tranRefNumber interchangeRefNumber : interchangeRefNumber ackForValidTrans : ackForValidTrans batchAcks : batchAcks technicalAck : technicalAck ack : ack ak901isP : ak901isP contentType : contentType body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<X12Interchange> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 500 | Server Error |



[Back to List of Controllers](#list_of_controllers)



