//
//  LoggerManager.swift
//  MakeenFull
//
//  Created by Ahmed Ashraf on 11/06/2022.
//  Copyright © 2022 Alqemam. All rights reserved.
//

import Foundation
import netfox

class LoggerManager {
    static let shared: LoggerManager = .init()
    
    private init() { }
    
    func configure() {
        if EnvironmentManager.shared.isEnableLog {
            NFX.sharedInstance().start()
        }
    }
    
    func log(logLevel: LogLevel = .info,
             output: @autoclosure () -> String = String(),
             separator: String = printSeparator,
             terminator: String = printTernimator,
             function: String = #function,
             file: String = #file,
             line: Int = #line,
             column: Int = #column) {
        
        let level = prefixLevel(logLevel: logLevel)
        
#if DEBUG
        Swift.print(
            """
        \(level)
        [
            function: \(function)
            file: \((file as NSString).lastPathComponent)
            line: \(line)
            column: \(column)
            Message: \(output())
        ]
        """
        )
#endif
    }
    
    // MARK: - Private Helpers
    private func prefixLevel(logLevel: LogLevel) -> String {
        return logLevel.rawValue
    }
    
    private func date() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: Date())
    }
}
