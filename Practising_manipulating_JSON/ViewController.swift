//
//  ViewController.swift
//  Practising_manipulating_JSON
//
//  Created by Ross on 16/08/2017.
//  Copyright © 2017 Braaaaap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func jsonToString(json: Menu){
            do {
                let data1 =  try JSONSerialization.data(withJSONObject: json, options: JSONSerialization.WritingOptions.prettyPrinted) // first of all convert json to the data
                let convertedString = String(data: data1, encoding: String.Encoding.utf8) // the data will be converted to the string
                print(convertedString) // <-- here is ur string
                
            } catch let myJSONError {
                print(myJSONError)
            }
            
        }
        
    }

}
