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
    }

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func updateLabels(_ sender: Any) {
    }
    
    let topChoices = [CaptionOption(emoji: "👩🏻‍❤️‍💋‍👨🏾", caption: "SHE CHEATED!?"), CaptionOption(emoji: "😳", caption: "WAIT I WON?!")]
    
    let bottomChoices = [CaptionOption(emoji: "😳", caption: "NO WAY!"), CaptionOption(emoji: "😳", caption: "WHAT THE F#%K!")]
    
   
    
}

