//
//  LogLevelHelpers.swift
//  MakeenFull
//
//  Created by Ahmed Ashraf on 10/06/2022.
//  Copyright © 2022 Alqemam. All rights reserved.
//

import Foundation

func logWarning(
    _ input: LogMessages?...,
    separator: String = printSeparator,
    terminator: String = printTernimator,
    function: String = #function,
    file: String = #file,
    line: Int = #line,
    column: Int = #column
) {
    let output = input.map { item in
        if let item = item { return "\(item)" } else { return "(nil)" }
    }
        .joined(separator: separator)
    
    LoggerManager.shared.log(
        logLevel: .warning,
        output: output,
        separator: separator,
        terminator: terminator,
        function: function,
        file: file,
        line: line,
        column: column
    )
}

func logError(
    _ input: LogMessages?...,
    separator: String = printSeparator,
    terminator: String = printTernimator,
    function: String = #function,
    file: String = #file,
    line: Int = #line,
    column: Int = #column
) {
    let output = input.map { item in
        if let item = item { return "\(item)" } else { return "(nil)" }
    }
        .joined(separator: separator)
    
    LoggerManager.shared.log(
        logLevel: .error,
        output: output,
        separator: separator,
        terminator: terminator,
        function: function,
        file: file,
        line: line,
        column: column
    )
}
