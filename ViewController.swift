//
//  ViewController.swift
//  khan4310_a1
//
//  Created by Kashif Khan on 2021-01-25.
//

import UIKit

class ViewController: UIViewController {
let questions = ["What is your Name?", "What are we currently doing?", "Who is the best basketball player currently?"]
    var questionIndex = 0;
    var  j = 0;
    var answer0 = "kashif"
    var answer1 = "iPhone Programming"
    var answer2 = "Lebron James"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let selfieImage = UIImage(named: "MyPic.jpg");
    let iphoneImage = UIImage(named: "iPhone.jpg");
    let basketballImage = UIImage(named: "LeBron.jpg")
    @IBAction func showQuestion(_ sender: Any) {
        print("show question button clicked");
        j+=1
        if j == 3 {
            j = 0
        }
        if  j == 0{
            questiontxt.text = questions[0]
            imageView.image = selfieImage
            
        }else if j == 1{
            questiontxt.text = questions[1]
            imageView.image = iphoneImage
        } else if j == 2 {
            questiontxt.text = questions[2]
            imageView.image = basketballImage
        }
        answertxt.text = "???"
            
    }
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var questiontxt: UILabel!
    
    
    
    @IBOutlet weak var answertxt: UILabel!
    @IBAction func showanswerbuttonclicked(_ sender: Any) {
        print("show answer button clicked");
        if j == 0{
            answertxt.text = answer0
        } else if j == 1 {
            answertxt.text = answer1
        } else if j == 2 {
            answertxt.text = answer2
        }
        
     
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        print("reset button clicked");
        j = -1
        showQuestion((Any).self)
        
    }
    
}

