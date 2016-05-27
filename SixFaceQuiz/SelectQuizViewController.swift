
import Foundation
import UIKit
import RealmSwift

import GoogleMobileAds

class SelectQuizViewController: UIViewController,GADBannerViewDelegate{
    
    
    @IBOutlet weak var upperBanner: GADBannerView!
    @IBOutlet weak var bottomBanner: GADBannerView!
    
    
    var selectedQuiz = [QuizAll]()
    var numProblem = 5
    var countText = 0
    
    // AdMob ID を入れてください
    let AdMobID = "ca-app-pub-3530000000000000/0123456789"
    let TEST_DEVICE_ID = "61b0154xxxxxxxxxxxxxxxxxxxxxxxe0"
    let AdMobTest:Bool = true
    let SimulatorTest:Bool = true
    
    
    
    // ボタンアクション
    @IBAction func easyQuiz(sender: UIButton) {
        let num = 1
        selectQuizFromDB(num)
    }
    
    
    @IBAction func mediumQuiz(sender: UIButton) {
        let num = 2
        selectQuizFromDB(num)
    }
    
    
    @IBAction func difficultQuiz(sender: UIButton) {
        let num = 3
        selectQuizFromDB(num)
    }
    

    @IBAction func selectQuiz(sender: UIButton) {
        performSegueWithIdentifier("gotoSelect",sender: nil)
    }
    
    
    
    // DBから問題を取得
    func selectQuizFromDB( num:Int ){
        let realm = try! Realm()
        let dataContent = realm.objects(QuizAll).filter("level = \(num)")
        
        if(dataContent.count < numProblem){
            numProblem = dataContent.count
        }
        
        for(var i=0; i < numProblem; i++){
            let random_num:Int = Int(arc4random_uniform(UInt32(numProblem)))
            selectedQuiz.append(dataContent[random_num])
        }
        performSegueWithIdentifier("gotoAnswer",sender: nil)
    }
    
    
    
    // バナーの準備
    func loadBanner(var bannar:GADBannerView,let position:Int){
        bannar = GADBannerView(adSize:kGADAdSizeBanner)
        
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
    
    
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "gotoAnswer") {
            let quizView : AnswerViewController = segue.destinationViewController as! AnswerViewController
            
            quizView._selectedQuiz = selectedQuiz
            quizView.numQuiz = numProblem
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        loadBanner(upperBanner, position: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}