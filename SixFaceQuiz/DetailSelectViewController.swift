
import UIKit
import RealmSwift

class DetailSelectViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{


		@IBOutlet weak var characterVal: UIPickerView!
		
		private var myUIPicker: UIPickerView!
		
		// 表示する値の配列.
		private let myValues: NSArray = ["おそ松","から松","チョロ松","一松","十四松","トド松"]
		
		
		override func viewDidLoad() {
		super.viewDidLoad()
		
		// Delegateを設定する.
		characterVal.delegate = self
		
		// DataSourceを設定する.
		characterVal.dataSource = self
    }
    
    
    //    pickerに表示する列数を返すデータソースメソッド.(実装必須)
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return 1
    }
    
    //    pickerに表示する行数を返すデータソースメソッド.(実装必須)
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return myValues.count
    }
    
    //    pickerに表示する値を返すデリゲートメソッド.
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return myValues[row] as? String
    }
    
    
    //    pickerが選択された際に呼ばれるデリゲートメソッド.
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		print("row: \(row)")
		print("value: \(myValues[row])")
    }
    
    
    @IBAction func startQuiz(sender: UIButton) {
		let myViewController: UIViewController = ViewController()
		
		// Viewの移動.
		self.presentViewController(myViewController, animated: true, completion: nil)
    }
    
    
    /*
    ボタンイベント.
    */
    internal func onClickMyButton(sender: UIButton){
		
		// 遷移するViewを定義.
		let myViewController: UIViewController = ViewController()
		
		// Viewの移動.
		self.presentViewController(myViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
    }

}