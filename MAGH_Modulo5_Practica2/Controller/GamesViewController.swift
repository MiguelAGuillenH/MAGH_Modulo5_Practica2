//
//  GamesViewController.swift
//  MAGH_Modulo5_Practica2
//
//  Created by MAGH on 11/03/24.
//

import UIKit

class GamesViewController: UIViewController {
    
    let gamePoster = Array(0...7)
    
    @IBOutlet weak var gamePosterImage: UIImageView!
    @IBOutlet weak var gamePosterPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        gamePosterPageControl.numberOfPages = gamePoster.count
        gamePosterPageControl.currentPage = 0
        gamePosterImage.image = UIImage(named: String(gamePoster.first!))
        
        for index in stride(from: 0, to: gamePoster.count, by: 1){
            gamePosterPageControl.setCurrentPageIndicatorImage(
                UIImage(named: "gow_logo")?.preparingThumbnail(of: CGSize(width: 20, height: 20))
                ,forPage: index
            )
        }
        gamePosterPageControl.currentPageIndicatorTintColor = UIColor(named: "GOWRed")
    }
    
    @IBAction func leftSwipeDone(_ sender: UISwipeGestureRecognizer) {
        gamePosterPageControl.currentPage = (gamePosterPageControl.currentPage + 1) % gamePosterPageControl.numberOfPages
        gamePosterImage.image = UIImage(named: String(gamePoster[gamePosterPageControl.currentPage]))
    }
    
    @IBAction func rightSwipeDone(_ sender: UISwipeGestureRecognizer) {
        if (gamePosterPageControl.currentPage == 0) {
            gamePosterPageControl.currentPage = gamePosterPageControl.numberOfPages - 1
        }else{
            gamePosterPageControl.currentPage = gamePosterPageControl.currentPage - 1
        }
        gamePosterImage.image = UIImage(named: String(gamePoster[gamePosterPageControl.currentPage]))
    }
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
        gamePosterImage.image = UIImage(named: String(gamePoster[gamePosterPageControl.currentPage]))
    }
    
}
