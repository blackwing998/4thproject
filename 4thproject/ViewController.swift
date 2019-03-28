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
var audioPlayer = AVAudioPlayer()
class ViewController: UIViewController {
    @IBOutlet weak var searchTermTextField: UITextField!
    var urlIntermediary = "http://www.google.com/search?q="
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func searchButtonPressed(_ sender: Any) {
        urlIntermediary += String(searchTermTextField.text ?? "blah")
        let myurl = URL(string: urlIntermediary)
        let searchView = SFSafariViewController(url: myurl!)
        present(searchView, animated: true)
    }
    

    class ViewController: UIViewController {
            
            @IBOutlet weak var userName: UITextField!
            
            override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
            }
            
            @IBAction func grabThatText(_ sender: Any) {
                theirName = userName.text!
                //print(theirName)
            }
            
        }
        
        class ViewControllerTwo: ViewController {
            
            @IBAction func alertMe(_ sender: Any) {
                let alert = UIAlertController(title: "ALERT", message: "something happened \(theirName!)", preferredStyle: UIAlertController.Style.alert)
                
                
                alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
                alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                
            }
            
            @IBAction func alertTwo(_ sender: Any) {
                let alertTwooo = UIAlertController(title: "DING DONG", message: "Your opinion is wrong", preferredStyle: UIAlertController.Style.alert)
                alertTwooo.addAction(UIAlertAction(title: "YAY", style: UIAlertAction.Style.default, handler: nil))
                self.present(alertTwooo, animated: false, completion: nil)
                
            }
            
            
        }

    class Viewcontroller: UIViewController{
        override func viewDidLoad() {
            super.viewDidLoad()
            let sound = Bundle.main.path(forResource: "05BeatCookUp5", ofType: "mp3")
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
            catch{
                print(error)
            }
        }
    }
        
    @IBAction func soundButton(_ sender: Any) {
        audioPlayer.play()
    }
}


