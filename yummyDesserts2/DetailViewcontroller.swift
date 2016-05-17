//
//  DetailViewcontroller.swift
//  yummyDesserts2
//
//  Created by Amey Dagaria


import UIKit

class DetailViewcontroller: UIViewController {

    @IBOutlet var detailImage: UIImageView!
    
    
    @IBOutlet var detailLabel: UILabel!
    
    
    @IBOutlet var moreInfoLabel: UILabel!
    
    
    var imageDetail = ""
    var descriptionLabel = ""
    var moreInfoDetail = ""
    
    var WordDetail: Word? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func configureView() {
        
        detailImage.image = UIImage(named: imageDetail)
        detailLabel.text = descriptionLabel
        moreInfoLabel.text = moreInfoDetail
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
