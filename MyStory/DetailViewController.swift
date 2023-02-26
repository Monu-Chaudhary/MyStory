//
//  DetailViewController.swift
//  MyStory
//
//  Created by Monu Chaudhary on 2/25/23.
//

import UIKit

class DetailViewController: UIViewController {

    var context: ShivaShakti?
    

    @IBOutlet weak var descriptionlabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let context = context {
            print(context.title)
            print(context.description)
        }
        
        if let context = context {
            titleLabel.text = context.title
            detailImageView.image = context.image
            descriptionlabel.text = context.description
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
