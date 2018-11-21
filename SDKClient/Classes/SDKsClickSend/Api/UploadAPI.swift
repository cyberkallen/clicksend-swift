//
// UploadAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UploadAPI {
    /**
     Upload File
     
     - parameter convert: (query)  
     - parameter uploadFile: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadsPost(convert: String, uploadFile: UploadFile? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        uploadsPostWithRequestBuilder(convert: convert, uploadFile: uploadFile).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload File
     - POST /uploads
     - Upload File
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter convert: (query)  
     - parameter uploadFile: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func uploadsPostWithRequestBuilder(convert: String, uploadFile: UploadFile? = nil) -> RequestBuilder<String> {
        let path = "/uploads"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uploadFile)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "convert": convert
        ])

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
