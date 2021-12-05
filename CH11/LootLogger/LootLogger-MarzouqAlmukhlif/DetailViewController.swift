//
//  DetailViewController.swift
//  LootLogger-MarzouqAlmukhlif
//
//  Created by Marzouq Almukhlif on 20/04/1443 AH.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var nameField: UITextField!
  
  @IBOutlet var serialNumberField: UITextField!
  
  @IBOutlet var valueField: UITextField!
  
  @IBOutlet var dateLabel: UILabel!
  
  
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
    valueField.text = numberFormatter.string(from: NSNumber(value: item.valueInDollars))
    dateLabel.text = dateFormatter.string(from: item.dateCreated)
  }
  
  
}
