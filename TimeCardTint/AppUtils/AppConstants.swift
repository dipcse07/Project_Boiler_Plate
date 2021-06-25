//
//  AppConstants.swift
//
//  Created by Monim Kaiser on 12/5/21.
//

import Foundation
import UIKit



var ONBOARD_PAGE_INDEX = 0
let GENDER = ["Male", "Female"]
var USER_PROFILE_IMAGE = UIImage(named: "icon_profile_pic_default")

var DIATE_ARRAY = ["No red meat","Vegetarian","Pescatarian","Vegan","Ketogenic","Paleo","Body Builder"]
var GOALS_ARRAY = ["No red meat","Vegetarian","Pescatarian","Vegan","Ketogenic","Paleo","Body Builder", "Build Muscle","Weight Loss","Low Carb","No Sugar","Eco-friendly","Ethical Rating"]
var DIATE_QUICK_ADD_ARRAY = ["Paleolithic diet", "Blood type diet", "Dukan diet", "Zone diet", "South beach diet","Mediterranean diet"]
var GOAL_QUICK_ADD_ARRAY = ["No trans fat", "Increase water intake", "Low sodium diet", "Minimal plasc waste", "Atkins diet", "Mediterranean diet"]
var RESTRICTION_QUICK_ADD_ARRAY = ["Peanut allergy", "Tree nut allergy", "Gluten free", "Lactose Intolerant", "Soy allergy", "Shellfish allergy"]


/*
 For Login
 */
struct LoginTexts {
    static let USER_NAME = "Username"
    static let PASSWORD = "Password"
    static let EMAIL_ADDRESS = "Email Address"
    static let CONFIRM_PASSWORD = "Confirm Password"
    
    static let SIGNUP_FACEBOOK = "Sign up with Facebook"
    static let SIGNUP_APPLE = "Sign up with Apple"
    static let LOGIN_FACEBOOK = "Log in with Facebook"
    static let LOGIN_APPLE = "Log in with Apple"
    
    static let LOGIN = "Log In"
    static let SIGN_UP = "Sign Up"
}

struct StoryBoard {
    static let MAIN = "Main"
    static let ONBOARDING = "OnBoarding"
    static let HOME = "Home"
    static let POST = "Post"
}

struct Identifiers {
    static let OnBoardInitialVC = "OnBoardInitialVC"
    static let OnBoardPageVC = "OnBoardPageVC"
    static let loginViewController = "LoginViewControllerID"
    static let DiateViewController = "DiateViewController"
    static let SignUpViewController = "SignUpViewController"
    static let QuickAddsViewController = "QuickAddsViewController"
    static let ProfileInfoFinishedViewController = "ProfileInfoFinishedViewController"
    
    // MARK: Home
    static let NavigationViewController = "NavigationViewControllerID"
    static let HomeViewController = "HomeViewControllerID"
    static let SearchViewController = "SearchViewControllerID"
    static let ScannerViewController = "ScannerViewControllerID"
    static let CommunityViewController = "CommunityViewControllerID"
    static let ProfileViewController = "ProfileViewControllerID"
    static let LegalViewController = "T_CViewController"
    static let EditProfileViewController = "EditProfileViewControllerID"
    
    
    //MARK:- SEGUE_NAVIGATION_IDENTYFIERS
    static let UserAboutToDiate = "userAboutToDiate"
    static let DiateToGoalVC = "DiateToGoalsViewController"
    static let GoalsToProfileFinished = "GoalsToProfileFinished"
    
    //MARK:- TABLEVIEW CELL IDENTIFIERS
    static let DiateAndGoalsTableViewCell = "DiateAndGoalsTableViewCell"
    static let QuickAddsTableViewCell = "QuickAddsTableViewCell"
    static let EthicalRatingTableViewCell = "EthicalRatingTableViewCell"
    static let AddFieldsTableViewCell =  "AddFieldsTableViewCell"
    static let RestrictDescriptionTableViewCell =  "RestrictDescriptionTableViewCell"
    
    
    //MARK:- CollectionView Cell Identifiers
    static let PostListCell = "PostListCell"
    
    // MARK: POST
    static let PostBlogViewController = "PostBlogViewControllerID"
}

struct Endpoints {
    
    static let BASE_URL: String = "http://ec2-3-141-195-128.us-east-2.compute.amazonaws.com/"
    static let SIGN_UP = BASE_URL + "auth/signUp?"
    static let LOGIN: String = BASE_URL + "auth"
    static let FORGOT_PASSWORD = BASE_URL + "auth/forgotPassword"
    static let UPDATE_USER_INFO = BASE_URL + "auth/userData"
    static let POSTS = BASE_URL + "post"
}

struct Messages {
    static let NO_INTERNET_MESSAGE = "Please enable inernet to continue"
    static let FAILED_NETWORK_CALL = "Something went wrong. Please try again."
    
    // Post Messages
    static let NO_TITLE_FOUND = "Please enter title"
    static let NO_AUTHOUR_NAME_FOUND = "Please enter author name"
    static let NO_STORY_FOUND = "Please enter your post"
    static let NO_IMAGE_FOUND = "Please upload an image"
}

struct Colors {
    static let AppthemeColor = "AppthemeColor"
    static let AlertColor =  "alertColor"
}

struct DefaultKeys {
    static let isLoggedIn = "isLoggedIn"
    static let TOKEN = "authToken"
    static let USER_ID = "userID"
    static let USER_FIRST_NAME = "firstName"
    static let USER_LAST_NAME = "firstName"
    static let NAME = "name"
    static let USER_EMAIL = "email"
    
}
struct APIkey {
    static let authToken = "Authorization"
}

//NOTIFICATION CONSTANTS
let NOTIF_ONBOARD_PAGE_INDEX_DID_CHANGE =  Notification.Name("onBoardPageIndexDidChange")


//GloBAls



