//
//  ClassItemManager.swift
//  CTools
//
//  Created by Ameya Khare on 3/14/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import Foundation

class ClassItemManager {
    var classList = [ClassItem]();
    
    init () {
        var blah = ClassItem(name:"Slavic 150")
        var blah2 = ClassItem(name:"BishCOM 250")
        
        classList.append(blah)
        classList.append(blah2)
    }
    
    // this is where you will do all the initialization bullshit and what not
    // based on class passed in and what not
}