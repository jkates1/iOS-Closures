//
//  ViewController.swift
//  Closures
//
//  Created by JEREMY KATES on 2/25/16.
//  Copyright © 2016 Agile Commerce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Allocate Mock Person Object
        let thisPerson = Person(firstName: "John", lastName: "Lester")
        //Closure that returns and waits for callback function
        thisPerson.hardProcessingWithString("Do work that is likely to take awhile", completion: { result in
            //Thread will be off the main Queue.... if updating UI get back on the main thread
            print(result)
        })
        print("This method is called before the above closure receives callback data")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

