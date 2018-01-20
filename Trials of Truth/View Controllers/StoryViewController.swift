//
//  StoryViewController.swift
//  Trials of Truth
//
//  Created by Drew Rios on 12/7/17.
//  Copyright © 2017 Relativistic. All rights reserved.
//

import UIKit

protocol StoryViewControllerDelegate {
    func dismissedStoryVC()
}

class StoryViewController: UIViewController {
    
    var delegate: StoryViewControllerDelegate?

    @IBOutlet weak var storyLabel: UILabel!
        
    var story: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        storyLabel.text = story
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedStoryView(_ sender: Any) {
        self.dismiss(animated: true) {
            self.delegate?.dismissedStoryVC()
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
