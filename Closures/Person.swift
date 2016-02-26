//
//  Person.swift
//  Closures
//
//  Created by JEREMY KATES on 2/25/16.
//  Copyright © 2016 Agile Commerce. All rights reserved.
//

import Foundation


struct Person {
    
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        print("\(self.firstName) is being Initialized")
    }
    
    //Asynchronous function that takes closure callback argument
    func hardProcessingWithString(input: String, completion: (result: String) -> Void) {
    
        //DO work here and when finished callback
        print(input)
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            for i in 1...10000 {
            print(i)
            
            }
            //Print Thread Description to show off main thread
            print("Async Thread \(NSThread.currentThread())")
        completion(result: "Data would be passed back here")
        }
        
    }
    
}
