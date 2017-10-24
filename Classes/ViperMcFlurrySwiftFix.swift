//
//  ViperMcFlurrySwiftFix.swift
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

import UIKit
import ObjectiveC.runtime
import SwiftSelfAware

extension UIViewController {
    
    @objc func moduleInputSwiftFix() -> Any? {
        
        let result = self.moduleInputSwiftFix()
        if result != nil {
            return result
        }
        
        let reflection = Mirror(reflecting: self).children
        var output: Any?
        
        // Find `output` property
        for property in reflection {
            if property.label! == "output" {
                output = property.value
                break
            }
        }
        
        return output
    }
    
    class func applyViperMcFlurrySwiftFix() {

        let originalSelector = NSSelectorFromString("moduleInput")
        let swizzledSelector = NSSelectorFromString("moduleInputSwiftFix")
        
        guard let originalMethod = class_getInstanceMethod(self, originalSelector),
              let swizzledMethod = class_getInstanceMethod(self, swizzledSelector)
            else {
            return
        }
        
        let didAddMethod = class_addMethod(self, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))
        
        if didAddMethod {
            class_replaceMethod(self, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod)
        }
    }
    
}

class ViperMcFlurrySwiftFixInitializer: SelfAware {
    
    static func awake() {
        UIViewController.applyViperMcFlurrySwiftFix()
    }
    
}

