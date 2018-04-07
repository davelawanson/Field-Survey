//
//  FieldObservationsDataVC.swift
//  Field Survey
//
//  Created by David Lawanson on 4/6/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {
    
    var fieldObservation: Observation?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var observationIconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Observation"
        
        observationIconImageView.image = fieldObservation?.classification.image
        titleLabel.text = fieldObservation?.title
        descriptionTextView.text = fieldObservation?.description
        
        if let date = fieldObservation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
