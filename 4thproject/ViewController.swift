//
//  ViewController.swift
//  4thproject
//
//  Created by James.Cotter on 3/26/19.
//  Copyright © 2019 James Cotter. All rights reserved.
//

import UIKit
import SafariServices
import AVFoundation
var theirName: String?

class ViewController: UIViewController {
    @IBOutlet weak var searchTermTextField: UITextField!
    var urlIntermediary = "http://www.google.com/search?q="
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        let sound = Bundle.main.path(forResource: "05 Beat Cook Up 5", ofType: "mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
    }
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        urlIntermediary += String(searchTermTextField.text ?? "blah")
        let myurl = URL(string: urlIntermediary)
        let searchView = SFSafariViewController(url: myurl!)
        present(searchView, animated: true)
    }
    
    @IBAction func alertMe(_ sender: Any) {
        let alert = UIAlertController(title: "ALERT", message: "turn musuic on/off ", preferredStyle: UIAlertController.Style.alert)
        
        
        alert.addAction(UIAlertAction(title: "No!", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "yes", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        audioPlayer.play()    }
    


}
