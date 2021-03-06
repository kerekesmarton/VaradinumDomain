//
//  Additions
//
//  Copyright © 2018 mkerekes. All rights reserved.
//

import Foundation

public extension ProcessInfo {
    var isUITesting: Bool {
        if let testing = environment["isTesting"], testing == "true" {
            return true
        } else {
            return false
        }
    }
    
    var shouldShowWelcome: Bool {
        if let testing = environment["shouldShowWelcome"], testing == "true" {
            return true
        }
        else {
            return false
        }
    }
    
    var ts: String? {
        return environment["ts"]
    }
    
    var publicKey: String? {
        return environment["publicKey"]
    }
    
    var privateKey: String? {
        return environment["privateKey"]
    }
    
}
