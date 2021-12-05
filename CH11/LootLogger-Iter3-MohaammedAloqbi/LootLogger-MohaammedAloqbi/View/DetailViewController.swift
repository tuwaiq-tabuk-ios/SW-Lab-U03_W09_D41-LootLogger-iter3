//
//  DetailViewController.swift
//  LootLogger-MohaammedAloqbi
//
//  Created by Mohammed on 20/04/1443 AH.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!


    @IBOutlet weak var serialNumberField: UITextField!
    

    @IBOutlet weak var valueField: UITextField!
    

    @IBOutlet weak var dateLabel: UILabel!
    

    
    
    var item: Item!
    
    let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
    
    
       override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
          
          nameField.text = item.name
          serialNumberField.text = item.serialNumber
      // valueField.text = "\(item.valueInDollars)"
        //replace with this
       valueField.text = numberFormatter.string(from: NSNumber(value: item.valueInDollars))
         // dateLabel.text = "\(item.dateCreated)"
           //replace with this
        dateLabel.text = dateFormatter.string(from: item.dateCreated )
   }
   }

    

