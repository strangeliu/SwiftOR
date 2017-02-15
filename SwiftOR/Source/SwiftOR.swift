//
//  SwiftOR.swift
//  SwiftOR
//
//  Created by 刘健 on 2017/2/10.
//  Copyright © 2017年 com.grace.swiftOR. All rights reserved.
//

import Foundation

public protocol DefaultValue {
    
    static var defaultValue: Self {get}
    
}

extension Optional {
    
    public func or(_ value: Wrapped) -> Wrapped {
        switch self {
        case .none:
            return value
        case .some(let originValue):
            return originValue
        }
    }
    
}

extension Optional where Wrapped: DefaultValue {
    
    public var orDefault: Wrapped {
        return or(Wrapped.defaultValue)
    }
    
}


