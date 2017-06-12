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
