//
//  Gamepad.swift
//  ArduinoBluetooth
//
//  Created by Andrew Dixon on 3/8/19.
//  Copyright © 2019 Andrew Dixon. All rights reserved.
//

import Foundation
import GameController
import GameKit

public class GamePad{
    
    public var gamepad : GCGamepad? {
        didSet {
            assignGamepad()
        }
    }
    
    public init(gamepad: GCGamepad) {
        self.gamepad = gamepad
        assignGamepad()
    }
    
    func assignGamepad() {
        print("made it to assignGamepad")
        
        
        gamepad?.valueChangedHandler = { (gamepad, element) in
            if let dpad = element as? GCControllerDirectionPad {
                print("CTRL : \( dpad )")
            } else {
                print("OTHR : \( element )")
            }
        }
    }
    
}
