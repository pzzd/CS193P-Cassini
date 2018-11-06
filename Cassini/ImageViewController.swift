//
//  ImageViewController.swift
//  Cassini
//
//  Created by Rose Pezzuti Dyer on 11/6/18.
//  Copyright © 2018 Rose Pezzuti Dyer. All rights reserved.
//

/*
 There are two ways to add in a scroll view.
 
 1. In Main.storyboard, select image view, then Editor > embed in > Scroll View.
 use constraints to tie image view to edges of content area so that the content area is the right size

 */

import UIKit

class ImageViewController: UIViewController {

    var imageUrl: URL? {
        didSet {
            imageView.image = nil
            
            // if a view is on screen it will have a window var
            // code will execute if view is on screen
            if view.window != nil {
                fetchImage()
            }
        }
    }
    
    // at this point we know view is on screen
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if imageView.image == nil {
            fetchImage()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    private func fetchImage(){
        if let url = imageUrl{
            // urlContents is Data? (Data object or nil)
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                imageView.image = UIImage(data: imageData)
            }
        }
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        if imageUrl == nil {
            imageUrl = DemoURLs.stanford
        }
    }
}
