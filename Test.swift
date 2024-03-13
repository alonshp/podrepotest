//
//  Test.swift
//  TestFramework
//
//  Created by Alon Shprung on 13/03/2024.
//

import Foundation

class TestClass {
    func check() {
        #if canImport(GiphyUISDK)
        print("ok! GiphyUISDK in")
        #else
        print("not good...")
        #endif
    }
}
