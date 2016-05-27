//
// CustomUICollectionVIewCell.swift
// UIKit055
//


import UIKit

class CustomUICollectionViewCell : UICollectionViewCell{
    
    var textLabel : UILabel?
    var imageBox : UIImageView?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // UILabelを生成.
        
        imageBox = UIImageView(frame: CGRectMake(0, 0, frame.width, frame.height))
        
        imageBox?.layer.cornerRadius = 10
        imageBox?.layer.borderColor = UIColor.blackColor().CGColor
        imageBox?.layer.borderWidth = 1
        imageBox?.layer.masksToBounds = true

        
        textLabel = UILabel(frame: CGRectMake(0, 0, frame.width, frame.height))
        textLabel?.text = "nil"
        textLabel?.textAlignment = NSTextAlignment.Center
        
        // Cellに追加.
        

        self.contentView.addSubview(textLabel!)
        self.contentView.addSubview(imageBox!)
    }
    
}
