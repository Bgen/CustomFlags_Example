//
//  AppEnvironmetn.swift
//  CustomFlags_Example
//
//  Created by Burcu Geneci on 09/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import Foundation

struct ServiceBaseURLs {
    
    static let ServiceBaseURL = "http://local.myapplication.com:8080"
    static let ServiceBaseURL_DEV = "http://dev.myapplication.com:8080"
    static let ServiceBaseURL_TEST = "http://test.myapplication.com:8080"
    static let ServiceBaseURL_UAT = "http://uat.myapplication.com:8080"
    static let ServiceBaseURL_PROD = "http://prod.myapplication.com:8080"
}

public class AppEnvironment: NSObject {
    
    class func baseServiceURL() -> String {
        
        var serviceURL: String?
        
        #if DEBUG
            serviceURL = ServiceBaseURLs.ServiceBaseURL_TEST
        #elseif RELEASE
            serviceURL = ServiceBaseURLs.ServiceBaseURL_TEST
        #elseif DEV
            serviceURL = ServiceBaseURLs.ServiceBaseURL_DEV
        #elseif TEST
            serviceURL = ServiceBaseURLs.ServiceBaseURL_TEST
        #elseif UAT
            serviceURL = ServiceBaseURLs.ServiceBaseURL_UAT
        #elseif PROD
            serviceURL = ServiceBaseURLs.ServiceBaseURL_PROD
        #endif
        
        assert(serviceURL != nil, "Base Service URL not set")
        return serviceURL!
    }
    
}