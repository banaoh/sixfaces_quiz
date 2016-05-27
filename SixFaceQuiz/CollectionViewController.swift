//
//  CollectionViewController.swift
//  SixFaceQuiz
//
//  Created by 尾花謙伍 on 2016/03/22.
//  Copyright © 2016年 banaoh. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var myCollectionView : UICollectionView!
    let realm = try! Realm().objects(QuizAll).sorted("id", ascending: true)
    var sections:Int!

    
    func  createCV(){
        // CollectionViewのレイアウトを生成.
        let layout = UICollectionViewFlowLayout()
        
        // Cell一つ一つの大きさ.
        layout.itemSize = CGSizeMake(50, 50)
        
        // Cellのマージン.
        layout.sectionInset = UIEdgeInsetsMake(16, 16, 32, 16)
        
        // セクション毎のヘッダーサイズ.
        layout.headerReferenceSize = CGSizeMake(100,30)
        
        // セクション毎のヘッダーサイズ.
        layout.headerReferenceSize = CGSizeMake(100,50)
        
        // CollectionViewを生成.
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        
        // Cellに使われるクラスを登録.
        myCollectionView.registerClass(CustomUICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        
        //ヘッダーの登録
        myCollectionView.registerClass(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "Section")
        
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        self.view.addSubview(myCollectionView)
    }
    
    
    
    /*
    Cellが選択された際に呼び出される
    */
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        print("Num: \(indexPath.row)")
        print("Value:\(collectionView)")
        
    }
    
    
    
    
    /*
    Sectionの数
    */
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return sections
    }
    
    
    
    /*
    Cellの総数を返す
    */
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print(section)
        // Section毎にCellの総数を変える.
        switch(section){
        case 1:
            return 4
        
        case 2:
            return 4

            
        case 3:
            return 4
        case 0:
            return 4

/*
            
            case 1:
            return realm.filter("character = '1'").count
            
            case 2:
            return realm.filter("character = '2'").count
            
            
            case 3:
            return realm.filter("character = '3'").count
            
            case 4:
            return realm.filter("character = '4'").count

*/
            
            
        default:
            print("error")
            return 0
        }
        
    }
    
    /*
    Sectionに値を設定する
    */
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "Section", forIndexPath: indexPath) as! UICollectionReusableView
        
        headerView.backgroundColor = UIColor.whiteColor()
        
        return headerView
    }
    

    
    
    /*
    Cellに値を設定する
    */
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell : CustomUICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath) as! CustomUICollectionViewCell
        
        // Section毎にCellのプロパティを変える.
        switch(indexPath.section){
        case 0:
            cell.backgroundColor = UIColor.redColor()
            cell.textLabel?.text = "0"
            
        case 1:
            cell.backgroundColor = UIColor.greenColor()
            cell.textLabel?.text = "1"
            
        case 2:
            cell.backgroundColor = UIColor.blueColor()
            cell.textLabel?.text = "2"
            
        default:
            print("section error")
            cell.backgroundColor = UIColor.whiteColor()
        }
        
        return cell
    
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        sections = realm.max("character")
        print(sections)
        
        createCV()
        
        
    }


    
    
}


