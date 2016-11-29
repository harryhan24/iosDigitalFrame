//
//  ViewController.swift
//  digitalFrame
//
//  Created by DongSu Han on 2016. 11. 29..
//  Copyright © 2016년 DongSuHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toggleButton:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //각각 이미지 변수를 넣어줍니다.
        let cuteImages = [UIImage(named:"1.jpg")!,
                          UIImage(named:"2.jpg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpg")!,
                          UIImage(named:"6.jpg")!,
                          UIImage(named:"7.jpg")!,
                          UIImage(named:"8.jpg")!,
                          UIImage(named:"9.jpg")!,
                          UIImage(named:"10.jpg")!,
                          UIImage(named:"11.jpg")!,
                          UIImage(named:"13.jpg")!,
                          UIImage(named:"14.jpg")!,
                          UIImage(named:"15.jpg")!
                          ]
        
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15.0
    }
    
    @IBAction func toggleAction(_ sender:AnyObject){
    
        //이미지 애니메이션 시작함
        
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        }else{
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()

        }
    }
    
    @IBAction func changeSpeedAction(_ sender:AnyObject){
        //값을 다시받음.
        imgView.animationDuration = Double(speedSlider.value)
        //바로 시작
        imgView.startAnimating()
        toggleButton.setTitle("STOP", for: UIControlState.normal)
        speedLabel.text = "\(speedSlider.value)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

