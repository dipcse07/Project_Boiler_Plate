//
//  ApiHandler.swift
//
//  Created by Monim Kaiser on 20/5/21.
//

import Foundation
import SystemConfiguration
import Alamofire
import PKHUD
import ObjectMapper

@objc class ApiHandler: NSObject {
    var headers:HTTPHeaders?
    
    @objc static let sharedInstance = ApiHandler()
    
//    var loggedInInfo:LoginData? {
//        didSet {
//            if let token = loggedInInfo?.token {
//                headers = [APIkey.authToken: "bearer \(token)" ]
//                UserDefaults.standard.set(token, forKey: DefaultKeys.TOKEN)
//            }
//            if let first_name = loggedInInfo?.customer?.first_name, let last_name = loggedInInfo?.customer?.last_name {
//                let name = first_name + " " + last_name
//                UserDefaults.standard.set(name, forKey: DefaultKeys.NAME)
//            }
//            if let email = loggedInInfo?.customer?.email {
//                UserDefaults.standard.set(email, forKey: DefaultKeys.USER_EMAIL)
//            }
//            UserDefaults.standard.synchronize()
//        }
//    }
//
//    // Generate Headers
//    private func getHeader() -> HTTPHeaders {
//        let authorization = "" // "Bearer \(userInfo?.object(forKey: AUTH_TOKEN) ?? " ")"
//        return [
//            "Accept": "application/json",
//            "Content-Type": "application/json",
//            "Authorization": authorization]
//    }
//
//    // Login request
//    func performLogin(withUserName userName:String, password:String, completion:@escaping (Bool, LoginData?, String?) -> ()) {
//        let params = ["email_address":userName, "password":password] as [String : Any]
//        print(params)
//        ///*,"grant_type":"password"*/,"Device":DeviceInfo.type, "DeviceName":DeviceInfo.model,"DeviceId":DeviceInfo.identifier]
//        AF.request(
//            Endpoints.LOGIN,
//            method: .post,
//            parameters: params,
//            encoding: URLEncoding.httpBody,
//            headers: nil) .responseJSON { (response) in
//                // print(response.result)
//                if response.response?.statusCode == 200 {
//                    switch response.result {
//                    case .success(let value):
//                        print(value)
//                        let result = value as! [String: Any]
//                        if let data = Mapper<LoginData>().map(JSONObject: result["data"] as? [String : Any]) {
//                            print(data.customer!)
//                            completion(true, data, nil)
//                            return
//                        }
//                        completion(true, nil, nil)
//                    case .failure(let error):
//                        if let errorData = Mapper<ApiErrorModel>().map(JSONObject: error) {
//                            completion(false, nil, errorData.messages?.error)
//                        }
//                    // completion(false, nil, nil)
//                    }
//
//                } else {
//                    if let errorData = Mapper<ApiErrorModel>().map(JSONObject: response.value) {
//                        completion(false, nil, errorData.messages?.error)
//                    }
//                }
//
//                //completion(false, nil, nil)
//            }
//    }
//
//
//    func performSignUp (withUserEmail email:String, password:String, confirmPassword:String, completion:@escaping (Bool, SignUp?, String?) -> ()) {
//        let params = ["email_address":email, "password":password, "confirm_password":confirmPassword  ]
//        print(params)
//        ///*,"grant_type":"password"*/,"Device":DeviceInfo.type, "DeviceName":DeviceInfo.model,"DeviceId":DeviceInfo.identifier]
//        AF.request(
//            Endpoints.SIGN_UP,
//            method: .post,
//            parameters: params,
//            encoding: URLEncoding.httpBody,
//            headers: nil) .responseJSON { (response) in
//                if response.response?.statusCode == 200 {
//                    switch response.result {
//                    case .success(let value):
//                        // print(value)
//                        let result = value as! [String: Any]
//                        print(result)
//                        if let data = Mapper<SignUp>().map(JSONObject: result) {
//                            print(data)
//                            //  print(data.customer!)
//                            completion(true, data, nil)
//                            return
//                        }
//                    case .failure(let error):
//                        completion(false, nil, nil)
//                    }
//                }else {
//                    if let errorData = Mapper<ApiErrorModel>().map(JSONObject: response.value) {
//                        completion(false, nil, errorData.messages?.error)
//                    }
//
//                }
//            }
//
//    }
//
//    func performForgotPassword(userEmail: String, completion:@escaping (Bool, String?) -> ()){
//        let forgotUrl = "http://ec2-3-141-195-128.us-east-2.compute.amazonaws.com/"
//        let params = ["email_address": userEmail, "verify_url": forgotUrl]
//
//        AF.request(
//            Endpoints.FORGOT_PASSWORD,
//            method: .post,
//            parameters: params,
//            encoding: URLEncoding.httpBody,
//            headers: nil) .responseJSON { (response) in
//                if response.response?.statusCode == 200 {
//                    switch response.result {
//                    case .success(let value):
//                        // print(value)
//                        let result = value as! [String: Any]
//                        print(result)
//                        if let data = Mapper<ForgotPassword>().map(JSONObject: result) {
//                            if data.type == "success"{
//                                completion(true, nil)
//                                return
//                            }
//                            //  print(data.customer!)
//
//                        }
//                    case .failure(let error):
//                        completion(false, nil)
//                    }
//                }
//                else {
//                    if let errorData = Mapper<ApiErrorModel>().map(JSONObject: response.value) {
//                        completion(false, errorData.messages?.error)
//                    }
//                }
//            }
//    }
//
//
//    func getAllPosts(completion:@escaping (Bool, Posts?, String?) -> ()){
//        AF.request(
//            Endpoints.POSTS,
//            method: .get,
//            parameters: nil,
//            encoding: URLEncoding.httpBody,
//            headers: nil) .responseJSON { (response) in
//                if response.response?.statusCode == 200 {
//                    switch response.result {
//                    case .success(let value):
//                        // print(value)
//                        let result = value as! [String: Any]
//                        //                        print(result)
//                        if let data = Mapper<Posts>().map(JSONObject: result) {
//                            completion(true, data, nil)
//                            return
//                        }
//
//                    case .failure(let error):
//                        completion(false,nil, nil)
//                    }
//                }
//                else {
//                    if let errorData = Mapper<ApiErrorModel>().map(JSONObject: response.value) {
//                        completion(false,nil, errorData.messages?.error)
//                    }
//                }
//            }
//    }
//
//
//    func submitPost(title: String, filePath: URL, author_first_name: String, author_last_name: String, body: String, completion:@escaping (Bool) -> ()) {
//        var parameters:[String: Any]?
//
//        parameters = ["title": title,
//                      "author_first_name": author_first_name,
//                      "author_last_name": author_last_name,
//                      "body": body]
//
//        AF.upload(multipartFormData: {(multipartFormData) in
//            if let parameters = parameters {
//                for (key, value) in parameters {
//                    let data = "\(value)".data(using: .utf8)
//                    multipartFormData.append(data!, withName: key)
//                }
//            }
//            multipartFormData.append(filePath, withName: "image_url")//image_url
//
//        }, to: Endpoints.POSTS).responseJSON { (response) in
//            print(response)
//            //Do what ever you want to do with response
//            if let error = response.error {
//                print(error)
//            }
//            guard let data = response.value else {
//                return
//            }
//            print(data)
//        }
//    }
//
//    func updateProfile(filePath: URL, first_name: String, last_name: String, completion:@escaping (Bool) -> ()) {
//        var parameters:[String: Any]?
//
//        parameters = [
//            "first_name": first_name,
//            "last_name": last_name,]
//
//        AF.upload(multipartFormData: {(multipartFormData) in
//            if let parameters = parameters {
//                for (key, value) in parameters {
//                    let data = "\(value)".data(using: .utf8)
//                    multipartFormData.append(data!, withName: key)
//                }
//            }
//            multipartFormData.append(filePath, withName: "profile_picture")
//
//        }, to: Endpoints.POSTS).responseJSON { (response) in
//            print(response)
//            //Do what ever you want to do with response
//            if let error = response.error {
//                print(error)
//            }
//            guard let data = response.value else {
//                return
//            }
//            print(data)
//        }
//    }
//
//    func performTest ( completion:@escaping (Bool, SignUp?) -> ()) {
//        let params = [ "email_address":"mahmud@gmail.com", "new_password":"12345678", "confirm_new_password":"12345678"]
//        print(params)
//        let url = "http://ec2-3-141-195-128.us-east-2.compute.amazonaws.com/auth/resetPassword"
//        ///*,"grant_type":"password"*/,"Device":DeviceInfo.type, "DeviceName":DeviceInfo.model,"DeviceId":DeviceInfo.identifier]
//        AF.request(
//            url,
//            method: .post,
//            parameters: params,
//            encoding: URLEncoding.httpBody,
//            headers: nil) .responseJSON { (response) in
//                print(response.result)
//                Utilities.sharedInstance.alert(message: "\(response.result)", isLong: true)
//                completion(true, nil)
//
//            }
//    }
//
//    func initialUpdateProfile(data:UpdateUserInfoDataModel, completion:@escaping (Bool) -> ()) {
//
//        var parameters:[String: Any]?
//        let first_name = data.first_name ?? ""
//        let  last_name = data.last_name ?? ""
//        let  gender = data.gender ?? ""
//        let  age = data.age ?? ""
//        let  height = data.height ?? ""
//        let  weight = data.weight ?? ""
//        let ethical_rating = data.ethical_rating ?? ""
//        let diet_restriction = data.diet_restriction ?? ""
//        let email_address = data.email_address ?? ""
//        let image_url = data.profile_Image_url ?? ""
//        let dietList = data.diateryList ?? []
//        let goalList = data.goalList ?? []
//
//
//        let filePath = URL(string: image_url)!
//        parameters = [
//
//            "first_name": first_name,
//            "last_name": last_name,
//            "gender": gender,
//            "age": age,
//            "height": height,
//            "weight": weight,
//            "ethical_rating": ethical_rating,
//            "diet_restriction": diet_restriction,
//            "email_address": email_address,
//            "diet_plan_list": dietList,
//            "dietary_goals": goalList
//
//        ]
//
//        AF.upload(multipartFormData: {(multipartFormData) in
//            if let parameters = parameters {
//                for (key, value) in parameters {
//                    let data = "\(value)".data(using: .utf8)
//                    multipartFormData.append(data!, withName: key)
//                }
//            }
//            multipartFormData.append(filePath, withName: "profile_picture")
//
//        }, to: Endpoints.UPDATE_USER_INFO).responseJSON { (response) in
//            print(response)
//            //Do what ever you want to do with response
//            if let error = response.error {
//                print(error)
//                completion(false)
//            }
//            guard let data = response.value else {
//                return
//            }
//            print(data)
//            completion(true)
//        }
//    }
//
}
