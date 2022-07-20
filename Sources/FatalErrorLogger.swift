//
//  FatalErrorLogger.swift
//  MakeenFull
//
//  Created by Mahmoud Aziz on 20/05/2022.
//  Copyright © 2022 Alqemam. All rights reserved.
//

import Foundation

public func fatalError(_ message: @autoclosure () -> String = String(), file: StaticString = #file, line: UInt = #line) -> Never {
    fatalError(message(), function: #function)
}

public func fatalError(
    _ message: String,
    function: String = #function,
    file: String = #file,
    line: Int = #line,
    column: Int = #column
) -> Never {
    LoggerManager.shared.log(logLevel: .error,
                      output: message,
                      function: function,
                      file: file,
                      line: line,
                      column: column)
    return Swift.fatalError(message)
}
