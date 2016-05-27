//
//  EndViewController.swift
//  SixFaceQuiz
//
//  Created by 尾花謙伍 on 2016/03/18.
//  Copyright © 2016年 banaoh. All rights reserved.
//

import Foundation
import UIKit

class EndViewController: UIViewController{
    
    var _numCorrect:Int!
    var _numQuiz:Int!
    
    
    
    @IBOutlet weak var numRate: UILabel!
    var graphView:PieGraphView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var rate = (_numCorrect/_numQuiz)*100
        print(rate)
        
        numRate.text = "\(rate)%"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}