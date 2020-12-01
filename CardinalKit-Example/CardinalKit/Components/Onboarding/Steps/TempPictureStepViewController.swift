//
//  TempPictureStepViewController.swift
//  CardinalKit_Example
//
//  Created by Jordan on 9/13/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import ResearchKit

class TempPictureStep: ORKStep {
    
    static let identifier = "LoginCustomWaitStep"
    
    override func stepViewControllerClass() -> AnyClass {
        return LoginCustomWaitStepViewController.self
    }
    
    override init(identifier: String) {
        super.init(identifier: identifier)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

class TempPictureStepViewController: ORKStepViewController {
    
    var onLoginCallback: NSObjectProtocol?
    
    override init(step: ORKStep?) {
        super.init(step: step)
    }
    
    override init(step: ORKStep, result: ORKResult) {
        super.init(step: step, result: result)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
}

