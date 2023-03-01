//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by Faruk CANSIZ on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    var ankara = true
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
        
    }
    
    @objc func changeImage() {
        
        if ankara == false {
            imageView.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
        } else {
            imageView.image = UIImage(named: "istanbul")
            label.text = "İstanbul"
            ankara = false
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    

}

