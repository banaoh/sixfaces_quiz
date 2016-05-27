//
//  ViewController.swift
//  SixFaceQuiz
//
//  Created by 尾花謙伍 on 2016/02/13.
//  Copyright © 2016年 banaoh. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class ViewController: UIViewController {
	
	private var myButton: UIButton!
    var result: [[String]] = [] //csvファイルの結果
  
    @IBAction func gotoC(sender: UIButton) {
        performSegueWithIdentifier("goCollection",sender: nil)
    }
    

//    csvファイルを読み込んで問題とする
    func loadProblem(){
        if let csvPath = NSBundle.mainBundle().pathForResource("problem", ofType: "csv") {
            var str: [[String]] = []
            do {
                let csvString =  try NSString(contentsOfFile: csvPath, encoding: NSShiftJISStringEncoding) as String
                csvString.enumerateLines{ line, stop in
                    // 行の途中に","が含まれていたら、配列の要素として切り抜く
                    let str2: [String] = line.componentsSeparatedByString(",")
                    str.append(str2)
                    
                    print(str)
                }
            }
                catch let error as NSError {
                    print(error.localizedDescription)
                    print("error")
                }
        }
        print("loadcsv()")
    }
    
    
    func initDataBase(){
        let realm = try! Realm()
        let exa = Problem()
        
        for num in 0 ..< exa.problems.count {
            try! realm.write{
                realm.create(QuizAll.self, value: [
                    
                    "id": num+1,
                    "character": exa.problems[num].0,
                    "level": exa.problems[num].1,
                    "t_or_i": exa.problems[num].2,
                    "text": exa.problems[num].3,
                    "choise1": exa.problems[num].4,
                    "choise2": exa.problems[num].5,
                    "choise3": exa.problems[num].6,
                    "choise4": exa.problems[num].7,
                    "answer": exa.problems[num].8,
                    "note": exa.problems[num].9
                    ])
            }
        }
    }
    
    override func viewDidLoad() {
		super.viewDidLoad()
        
        loadProblem()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if defaults.boolForKey("firstLaunch") {
            print("起動済み")
        }
        else{
            defaults.setBool(true, forKey: "firstLaunch")
            print("初回起動")
            initDataBase()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "goCollection"){
            var realm = try! Realm()
            let problem = realm.objects(QuizAll)
            
            let collectionView : SampleView = segue.destinationViewController as! SampleView
            
            collectionView._problem = Array(problem)
        }
    }


    override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
    }


}

