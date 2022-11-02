//
//  ViewController.swift
//  Meme Maker
//
//  Created by 7g on 11/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topCaptionSegmentedControl.removeAllSegments()
        
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        for choice in topChoices { topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        

        }
        
        
    

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    let bottomChoices = [CaptionOption(emoji: "😳", caption: "NO WAY!"), CaptionOption(emoji: "😳", caption: "WHAT THE F#%K!")]
    
    let topChoices = [CaptionOption(emoji: "👩🏻‍❤️‍💋‍👨🏾", caption: "SHE CHEATED!?"), CaptionOption(emoji: "😳", caption: "WAIT I WON?!")]
    
    func updateLabels() {
                let topSelectedIndex = topCaptionSegmentedControl.selectedSegmentIndex
                topCaptionLabel.text = topChoices[topSelectedIndex].caption
                let bottomSelectedIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
                bottomCaptionLabel.text = bottomChoices[bottomSelectedIndex].caption
            }
    
    @IBAction func valueChange(_ sender: Any) {
        
        updateLabels()
    }
    
    @IBAction func TopCaptionPanGestureRecognizer(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed { topCaptionLabel.center = sender.location(in: view)
        }
        
    }
    
    @IBAction func BottomCaptionPanGestureRecognizer(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed { bottomCaptionLabel.center = sender.location(in: view)
        }
    }
    
 
}

