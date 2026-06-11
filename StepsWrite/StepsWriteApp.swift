//
//  StepsWriteApp.swift
//  StepsWrite
//
//  Created by Bassem (NextGLabs) on 21/03/2021.
//
import SwiftUI
import HealthKit

@main
struct StepsWriteApp: App {
    
    let healthStore = HealthStore()
    
    init() {
        healthStore.requestAuthorization { success, error in
            if success {
                print("HealthKit authorization granted")
            } else {
                print("HealthKit authorization denied: \(String(describing: error))")
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
