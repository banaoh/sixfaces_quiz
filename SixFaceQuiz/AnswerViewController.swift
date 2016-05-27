//
//  AnswerViewController.swift
//  SixFaceQuiz
//
//  Created by 尾花謙伍 on 2016/03/15.
//  Copyright © 2016年 banaoh. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift
import SCLAlertView

import GoogleMobileAds


class AnswerViewController: UIViewController, GADBannerViewDelegate {
    
    var _selectedQuiz = [QuizAll]()
    var numNow = 0
    var numQuiz:Int!
    var numCorrect = 0

    @IBOutlet weak var textArea: UILabel!
    @IBOutlet weak var selectOne: UIButton!
    @IBOutlet weak var selectTwo: UIButton!
    @IBOutlet weak var selectThree: UIButton!
    @IBOutlet weak var selectFour: UIButton!
    
    
    @IBOutlet weak var upperBanner: GADBannerView!
    @IBOutlet weak var bottomBanner: GADBannerView!
    
    
    // AdMob ID を入れてください
    let AdMobID = "ca-app-pub-3530000000000000/0123456789"
    let TEST_DEVICE_ID = "61b0154xxxxxxxxxxxxxxxxxxxxxxxe0"
    let AdMobTest:Bool = true
    let SimulatorTest:Bool = true
    
    
    //画面遷移時に問題を生成するinit関数
    func createQuiz(){
        
        //全ての問題を答えたか答えてない
        if(numNow < numQuiz){
            var buttons:[UIButton] = [selectOne, selectTwo, selectThree, selectFour]
            
            var choices:[String] = [_selectedQuiz[numNow].choise1, _selectedQuiz[numNow].choise2, _selectedQuiz[numNow].choise3, _selectedQuiz[numNow].choise4]
            
            
            textArea.text = _selectedQuiz[numNow].text
            
            for(var i=0; i<4; i++){
                buttons[i].setTitle(choices[i], forState: UIControlState.Normal)
                buttons[i].addTarget(self, action: "answerQuiz:", forControlEvents: .TouchUpInside)
                buttons[i].tag = i+1
                print("------")
            }
        }
        else{
            performSegueWithIdentifier("gotoEnd",sender: nil)
        }
        
    }
    
    //回答したときに呼ばれる正誤及び、ポップアップ関数
    func answerQuiz(sender:UIButton){
        
        print("tapped")
        let SuccessTitle = "正解！！"
        
        let Subtitle = "You've just displayed this awesome Pop Up View"
        
        if(sender.tag == _selectedQuiz[numNow].answer){
            //モーダルビューで画面を生成　広告&次に行く&トップに戻る
            numNow++
            numCorrect++
            let alert = SCLAlertView()
            alert.addButton("Next Quiz!", target:self, selector:Selector("createQuiz"))
            alert.addButton("Top", target:self, selector:Selector("goTop"))
            alert.showCloseButton = false
            alert.showSuccess(SuccessTitle, subTitle: Subtitle)
        }
        else{
            //ヒントと次に行く&トップに戻る
            
            numNow++
            let alert_error = SCLAlertView()
            alert_error.addButton("Next Quiz!", target:self, selector:Selector("createQuiz"))
            alert_error.addButton("Top", target:self, selector:Selector("goTop"))
            
            alert_error.showCloseButton = false
            alert_error.showError("Hold On...", subTitle:"aaaa", closeButtonTitle:"OK")
            
            
            
            //        SCLAlertView().showError(self, title: kErrorTitle, subTitle: kSubtitle)
            
        }
        
    }
    
    //Topへの画面遷移
    func goTop(){
        performSegueWithIdentifier("gotoTop",sender: nil)
    }
    
    
    // バナーの準備
    func loadBanner(var bannar:GADBannerView,let position:Int){
        bannar = GADBannerView(adSize:kGADAdSizeBanner)
        
        if(position == 0){
            bannar.frame.origin = CGPointMake(0, 20)
        }
        else{
            bannar.frame.origin = CGPointMake(0, self.view.frame.size.height - bannar.frame.height)
        }

        
        bannar.frame.size = CGSizeMake(self.view.frame.width, bannar.frame.height)
        bannar.adUnitID = AdMobID
        bannar.delegate = self
        bannar.rootViewController = self
        
        let admobRequest:GADRequest = GADRequest()
        
        if AdMobTest {
            if SimulatorTest {
                admobRequest.testDevices = [kGADSimulatorID]
            }
            else {
                admobRequest.testDevices = [TEST_DEVICE_ID]
            }
            
        }
        
        bannar.loadRequest(admobRequest)
        
        self.view.addSubview(bannar)
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createQuiz()
        print(upperBanner.frame)
        
        loadBanner(upperBanner, position: 0)
        loadBanner(bottomBanner, position: 1)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "gotoEnd") {
            print("ok3")
            let quizView : EndViewController = segue.destinationViewController as! EndViewController
            
            quizView._numCorrect = numCorrect
            quizView._numQuiz = numQuiz
        }
    }
    
    
}