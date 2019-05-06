//
//  DetailViewController.swift
//  Project1
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var position: (position: Int, total: Int)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let selectedImage = selectedImage else {
            print("No image provided")
            return
        }
        guard let position = position else {
            print("No position provided")
            return
        }
        
        title = selectedImage + " - \(position.position)/\(position.total)"
        navigationItem.largeTitleDisplayMode = .never
        
        imageView.image = UIImage(named: selectedImage)
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
