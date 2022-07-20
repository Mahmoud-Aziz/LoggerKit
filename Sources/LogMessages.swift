//
//  LogMessages.swift
//  MakeenFull
//
//  Created by Ahmed Ashraf on 10/06/2022.
//  Copyright © 2022 Alqemam. All rights reserved.
//

import Foundation

enum LogMessages: String {
    case errorGettingActivCodePeriod = "Couldn't get verificationCodePeriod from CPSettings"
    case errorGettingSendActivCodeMethod = "sendCodeMethod Not Found"
    case errorGettingFirstTimeLoginState = "Couldn't figure if user isFirstTimeLogin"
    case errorGettingActivCodeFromTextField = "Couldn't get activation code from TextField"
    case errorGettingUserIdFromGlobals = "Couldn't get user ID from GlobalVariables"
    case errorGettingNextAction = "Couldn't get next action"
    case errorGettingCheckUserDataFromGlobals = "Couldn't get checkUserData from GlobalVariables"
    case errorGettingThemeVersion = "Couldn't get the remote theme version"
    case errorGettingRemoteAppVersion = "Couldn't get the remote app version"
    case errorSavingServiceURL = "Unable to save service URL"
    case errorGettingURL = "URL not found"
    case errorSSLCancelAuthChallenge = "SSL pinning cancel Authentication Challenge"
    case errorGettingSurveyID = "Error getting survey ID from getSurvey response"
    case errorGettingOpeningScreenText = "Error getting opening screen text"
    case errorGettingOpeningScreenImage = "Error getting opening screen image"
    case errorGettingOpeningScreenVideo = "Error getting opening screen video"
    case errorGettingDataToWriteToFile = "Error getting data to write to file"
    case errorGettingVideoUrlFromFileManager = "Error getting video from file manager"
    case errorGettingVideoUrlToPlay = "Error getting video Url to play"
    case errorGettingUserNewPassword = "Error getting user new password"
    case errorGettingAbsentUserID = "Error getting absent user ID from selected cell"
    case errorGettingOpeningScreenActionData = "errorGettingOpeningScreenActionDataFromOpeningScreenResponse"
    case errorGeneratingThumbnail = "Error Generating Thumbnail from video"
    case errorGettingUserToken = "Error Getting UserToken"
}
