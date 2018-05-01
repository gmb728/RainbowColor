//
//  RainbowViewController.swift
//  RainbowColor
//
//  Created by Chang Sophia on 2018/5/1.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

class RainbowViewController: UIViewController {
var count = Int(arc4random_uniform(6)+0)
    
    
    @IBOutlet weak var glovesImage: UIImageView!
    
    
    @IBOutlet weak var buttonPress: UIButton!
    
    @IBAction func buttonPress(_ sender: Any){

    count = count + 1
        changeGemColor()
    }
    func changeGemColor(){
        let number = count % 7
        if number == 0 {
            glovesImage.backgroundColor = .red
           
        } else if number == 1 {
            glovesImage.backgroundColor = .orange
         
        } else if number == 2 {
            glovesImage.backgroundColor = .yellow
           
        } else if number == 3 {
            glovesImage.backgroundColor = .green
         
        } else if number == 4 {
            glovesImage.backgroundColor = .blue
           
        } else if number == 5 {
            glovesImage.backgroundColor = .white
         
        } else if number == 6 {
            glovesImage.backgroundColor = .purple
          
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
changeGemColor()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
