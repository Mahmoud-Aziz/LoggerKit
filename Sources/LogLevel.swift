//
//  LogLevel.swift
//  Logger
//
//  Created by Mahmoud Aziz on 04/01/2022.
//

import Foundation

enum LogLevel: String, Codable {
    case info = "INFO ℹ️"
    case stepInfo = "Step INFO ℹ️"
    case warning = "WARNING ⚠️"
    case error = "ERROR ❌"
    case debug = "DEBUG 👨🏻‍🔧"
}
