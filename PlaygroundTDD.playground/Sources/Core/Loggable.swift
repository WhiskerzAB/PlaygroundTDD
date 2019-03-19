//
//  Loggable.swift
//  TDD Example
//
//  Created by Gabriel Peart 08/11/16.
//  Copyright (c) 2016 Whiskerz AB. All rights reserved.
//

public protocol Loggable {
    var verbosity: Verbosity { get set }
    func log(message: String)
}

public struct Logger: Loggable {
    public var verbosity: Verbosity
    
    public init(verbosity: Verbosity) {
        self.verbosity = verbosity
    }
    
    public func log(message: String) {
        switch verbosity {
        case .debug:
            print("Debug: \(message)")
        case .info:
            print("Info: \(message)")
        case .notice:
            print("Notice: \(message)")
        case .warning:
            print("Warning: \(message)")
        case .error:
            print("Error: \(message)")
        case .critical:
            print("Critical: \(message)")
        case .alert:
            print("Alert: \(message)")
        case .emergency:
            print("Emergency: \(message)")
        }
    }
}   
