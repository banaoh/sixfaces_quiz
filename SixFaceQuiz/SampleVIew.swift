import UIKit
import RealmSwift

class SampleView: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    var _problem = [QuizAll]()
    var problemCell = [[QuizAll]]()
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // CollectionViewのレイアウトを生成.
        let layout = UICollectionViewFlowLayout()
        
        // Cell一つ一つの大きさ.
        layout.itemSize = CGSizeMake(50, 50)
        
        // Cellのマージン.
        layout.sectionInset = UIEdgeInsetsMake(16, 16, 16, 16)
        
        // セクション毎のヘッダーサイズ.
        layout.headerReferenceSize = CGSizeMake(100,50)
        
        
        myCollectionView.collectionViewLayout = layout
        
        
        // Cellに使われるクラスを登録.
        myCollectionView.registerClass(CustomUICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView.registerClass(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "Section")
        
        
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        myCollectionView.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(myCollectionView)
        
        
        for(var i=0 ; i<_problem.count; i++){
            var nowCharacterNum = 1;
            print(_problem)
            //　キャラクター毎の問題の数え上げ
            if(_problem[i].character == nowCharacterNum){
                problemCell[nowCharacterNum].append(_problem[i])
            }
            else{
                nowCharacterNum++;
            }
        }
    }
        

            

 
//    Sectionの数(キャラクター毎)
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 4
    }
    
//    func collectionView(collectionView:UICollectionView, section:Int) -> String{
//        return sectionTitle[section] as! String
//    }
    

//    Cellが選択された際に呼び出される　(ポップアップで画像と説明"text"を出す)
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        print("Num: \(indexPath.row)")
        print("SectionNum:\(indexPath.section)")
        
    }
    

//    Cellの総数を返す(キャラクター毎の問題数)
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // Section毎にCellの総数を変える.
        switch(section){
        case 0:
            return 5
            
        case 1:
            return 8
            
        case 2:
            return 20
        case 3:
            return 20
            
        default:
            print("error")
            return 0
        }
        
    }
    

//    Sectionに値を設定する(キャラクター名)
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        
        let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "Section", forIndexPath: indexPath) as! UICollectionReusableView
        
        
        var label = UILabel(frame: CGRectMake(0, headerView.frame.height/2, 200, 22))
        
        
        
        headerView.backgroundColor = UIColor.whiteColor()
        headerView.addSubview(label)
        
        switch (indexPath.section){
        case 0:
            label.text = "おそ松"
            return headerView
            
        case 1:
            label.text = "から松"
            return headerView
            
        case 2:
            label.text = "チョロ松"
            return headerView
        case 3:
            label.text = "一松"
            return headerView
            
        default:
            print("error")
            return headerView
        }
    
    }
    

//    Cellに値を設定する
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell : CustomUICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath) as! CustomUICollectionViewCell
        
        // Section毎にCellのプロパティを変える.
        switch(indexPath.section){
        case 0:
            cell.backgroundColor = UIColor.redColor()
            let myImage = UIImage(named: "osomatu_test.jpg")
            cell.imageBox?.image = myImage
            cell.textLabel?.text = "0"
            
        case 1:
            cell.backgroundColor = UIColor.greenColor()
            cell.textLabel?.text = "1"
            
        case 2:
            cell.backgroundColor = UIColor.blueColor()
            cell.textLabel?.text = "2"
            
        case 3:
            cell.backgroundColor = UIColor.blueColor()
            cell.textLabel?.text = "3"
            
        default:
            print("section error")
            cell.backgroundColor = UIColor.whiteColor()
        }
        
        return cell
    }
    
}