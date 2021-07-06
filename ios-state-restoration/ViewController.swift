//
//  ViewController.swift
//  ios-state-restoration
//
//  Created by Akshay Gajarlawar on 06/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
        if(textView.isFirstResponder) {
            coder.encode(textView.text, forKey: "EncodedText")
        }
    }
}

