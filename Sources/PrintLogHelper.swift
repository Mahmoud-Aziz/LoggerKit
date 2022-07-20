//
//  Base.swift
//  PrintLogHelper
//
//  Created by Mahmoud Aziz on 04/01/2022.
//

import Foundation

// MARK: - Public Helpers
let printSeparator = " "
let printTernimator = "\n"

/// Customized Print function for logging
func print<T>(_ input: T...,
              logLevel: LogLevel = .info,
              separator: String = printSeparator,
              terminator: String = printTernimator,
              function: String = #function,
              file: String = #file,
              line: Int = #line,
              column: Int = #column) {
    
    let output = input.map { "\($0)" }.joined(separator: separator)
    LoggerManager.shared.log(
        logLevel: logLevel,
        output: output,
        separator: separator,
        terminator: terminator,
        function: function,
        file: file,
        line: line,
        column: column
    )
}

func print<T>(_ input: T?...,
              logLevel: LogLevel = .info,
              separator: String = printSeparator,
              terminator: String = printTernimator,
              function: String = #function,
              file: String = #file,
              line: Int = #line,
              column: Int = #column) {
    let output = input.map { item in
        if let item = item { return "\(item)" } else { return "(nil)" }
    }.joined(separator: separator)
    LoggerManager.shared.log(
        logLevel: logLevel,
        output: output,
        separator: separator,
        terminator: terminator,
        function: function,
        file: file,
        line: line,
        column: column
    )
}

func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    let output = items.map { "\($0)" }.joined(separator: separator)
    LoggerManager.shared.log(
        logLevel: .info,
        output: output,
        separator: separator,
        terminator: terminator,
        function: #function,
        file: #file,
        line: #line,
        column: #column
    )
}
