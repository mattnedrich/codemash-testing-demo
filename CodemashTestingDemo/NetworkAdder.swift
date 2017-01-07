//
//  AsyncAdder.swift
//  CodemashTestingDemo
//
//  Created by Matt on 12/30/16.
//  Copyright © 2016 None. All rights reserved.
//

import Foundation

class NetworkAdder {
    func add(userProvidedNumber: Int, resultCalback: @escaping(Int) -> Void) {
        self.getNumberFromNetwork(networkCallback: { networkNumber in
            let sum = userProvidedNumber + networkNumber
            resultCalback(sum)
        })
    }
    
    func getNumberFromNetwork(networkCallback: @escaping(Int) -> Void) {
        let numberFromNetwork = 6 // todo: make network call
        networkCallback(numberFromNetwork)
    }
}
