//
//  EnquiryModel.swift
//  evexity
//
//  Created by sandeep misra on 24/01/2016.
//  Copyright © 2016 sandeep misra. All rights reserved.
//

import Foundation
import Alamofire

public class EnquiryModel {
    
    public init(){
    
    }

     public func getAllEnquiries(){
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }

}
