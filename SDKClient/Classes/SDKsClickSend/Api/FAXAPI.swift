//
// FAXAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FAXAPI {
    /**
     Get all delivery receipts
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxReceiptsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxReceiptsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all delivery receipts
     - GET /fax/receipts
     - Get all delivery receipts
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func faxReceiptsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/fax/receipts"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add a delivery receipt
     
     - parameter url: (body) Url model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxReceiptsPost(url: Url, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxReceiptsPostWithRequestBuilder(url: url).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a delivery receipt
     - POST /fax/receipts
     - Add a delivery receipt
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter url: (body) Url model 

     - returns: RequestBuilder<String> 
     */
    open class func faxReceiptsPostWithRequestBuilder(url: Url) -> RequestBuilder<String> {
        let path = "/fax/receipts"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: url)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Mark delivery receipts as read
     
     - parameter dateBefore: (body) DateBefore model (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxReceiptsReadPut(dateBefore: DateBefore? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxReceiptsReadPutWithRequestBuilder(dateBefore: dateBefore).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark delivery receipts as read
     - PUT /fax/receipts-read
     - Mark delivery receipts as read
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter dateBefore: (body) DateBefore model (optional)

     - returns: RequestBuilder<String> 
     */
    open class func faxReceiptsReadPutWithRequestBuilder(dateBefore: DateBefore? = nil) -> RequestBuilder<String> {
        let path = "/fax/receipts-read"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dateBefore)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}