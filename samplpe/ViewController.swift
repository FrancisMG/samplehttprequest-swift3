//
//  ViewController.swift
//  samplpe
//
//  Created by Francis Gonzales on 05/12/2016.
//  Copyright © 2016 Francis Gonzales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageUrl = URL(string:"https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg")!
        URLSession.shared
        let task = URLSession.shared.dataTask(with: imageUrl){ (data, response, error) in
            print("task finished")
            if error == nil {
                let downloadImage = UIImage(data: data!)
                
                self.imageView.image = downloadImage
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

