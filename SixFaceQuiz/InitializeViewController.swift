import UIKit
import Realm
import RealmSwift


class InitializeViewController: UIViewController{

    var selectedQuiz = [QuizAll]()
    
    var countText = 0
    var timer:NSTimer = NSTimer()
    

    
    var textArray = [
        "Six",
        "Face",
        "Quiz",
        "Six Face Quiz"
    ]

    var i = 0

    var text:String {
        get {
            if i >= textArray.count {
                i = 0
            }
            return textArray[i++]
        }
    }

    @IBOutlet weak var label: LTMorphingLabel!
   
    /*
    @IBAction func getDB(sender: UIButton) {
        selectQuiz()
        performSegueWithIdentifier("segue",sender: nil)
        
//      print(selectedQuiz)
    }
*/
    

    @IBAction func changeText(sender: AnyObject) {
        label.text = text
    }
    
    
    @IBAction func segmentChanged(sender: UISegmentedControl) {
        self.label.morphingEffect = .Evaporate
        self.changeText(sender);
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

//        let defaults = NSUserDefaults.standardUserDefaults()

        
        /*
        if defaults.boolForKey("firstLaunch") {
            Status.text = "起動済み"
        }
        else{
            defaults.setBool(true, forKey: "firstLaunch")
            Status.text = "初回起動"
            initDataBase()
        }
        */
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func changeText(){
        
        if(countText < 4){
            print(label.text)
//            label.morphingEffect = .Evaporate
//            label.text = textArray[countText++]
        }
        else{
            performSegueWithIdentifier("topView", sender: nil)
        }
    }


    func selectQuiz(){
        let realm = try! Realm()
        
        let dataContent = realm.objects(QuizAll)
        
        for(var i=0; i<4; i++){
            let num:Int = Int(arc4random_uniform(7))
            selectedQuiz.append(dataContent[num])
        }
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
                    "text": exa.problems[num].2,
                    "choise1": exa.problems[num].3,
                    "choise2": exa.problems[num].4,
                    "answer": exa.problems[num].5,
                ])
            }
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "segue") {
            print("ok3")
            //let quizView : QuizViewController = segue.destinationViewController as! QuizViewController
            
            //quizView._selectedQuiz = selectedQuiz
        }
    }
}