//
//  DetailViewController.swift
//  Project1
//
//  Created by ecinar on 24.06.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var numberOfImages: Int?
    var selectedImagePath: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(selectedImagePath!) of \(numberOfImages!)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
