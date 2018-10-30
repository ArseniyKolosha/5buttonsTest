//
//  ViewController.swift
//  5buttonsTest
//
//  Created by Ars on 10/29/18.
//  Copyright © 2018 ArsenIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var shopButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var acceleratedButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeImage()
        
    }
    @IBAction func menuButtonAction(_ sender: AlphaTouchableButton) {
        showButtonNumber(number: "1")
    }
    @IBAction func shopButtonAction(_ sender: AlphaTouchableButton) {
        showButtonNumber(number: "2")
    }
    @IBAction func pauseButtonAction(_ sender: AlphaTouchableButton) {
        showButtonNumber(number: "3")
    }
    @IBAction func playButtonAction(_ sender: AlphaTouchableButton) {
        showButtonNumber(number: "4")
    }
    @IBAction func accelerateButtonAction(_ sender: AlphaTouchableButton) {
        showButtonNumber(number: "5")
    }
    
    func changeImage() {
        let menuImage = UIImage(named: "menu")
        let menuImageClicked = UIImage(named: "menu_clicked")
        menuButton.setImage(menuImage, for:.normal);
        menuButton.setImage(menuImageClicked, for:.highlighted)
       
        let shopImage = UIImage(named: "shop")
        let shopImageClicked = UIImage(named: "shop_clicked")
        shopButton.setImage(shopImage, for:.normal);
        shopButton.setImage(shopImageClicked, for:.highlighted)
        
        let pauseImage = UIImage(named: "pause")
        let pauseImageClicked = UIImage(named: "pause_clicked")
        pauseButton.setImage(pauseImage, for:.normal);
        pauseButton.setImage(pauseImageClicked, for:.highlighted)
        
        let playImage = UIImage(named: "play")
        let playImageClicked = UIImage(named: "play_clicked")
        playButton.setImage(playImage, for:.normal);
        playButton.setImage(playImageClicked, for:.highlighted)
        
        let accelerateImage = UIImage(named: "accelerated")
        let accelerateImageClicked = UIImage(named: "accelerated_clicked")
        acceleratedButton.setImage(accelerateImage, for:.normal);
        acceleratedButton.setImage(accelerateImageClicked, for:.highlighted)
        
    }
    
    func showButtonNumber(number: String) {
        let ac = UIAlertController(title: "Button number is:", message: number, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
        }
        ac.addAction(okAction)
        self.present(ac, animated: true)
    }
    

}

