//
//  DetailViewController.swift
//  LootLogger
//
//  Created by A A on 25/11/2021.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate{
  
  @IBOutlet var nameField: UITextField!
  @IBOutlet var serialNumberField: UITextField!
  @IBOutlet var valueField: UITextField!
  @IBOutlet var dateLabel: UILabel!
  @IBOutlet weak var changeDateButton: UIButton!
  
  @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
    view.endEditing(true)
  }
  
  
  var item: Item!{
    didSet {
      navigationItem.title = item.name
    }
  }
  
  
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
  
  
  override func viewDidLoad() {
    buttonConfigure()
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    nameField.text = item.name
    serialNumberField.text = item.serialNumber
    valueField.text = numberFormatter.string(from: NSNumber(value: item.valueInDollars))
    dateLabel.text = dateFormatter.string(from: item.dateCreated)
    
    //Bronze Challenge: Displaying a Number Pad
    valueField.keyboardType = UIKeyboardType.numberPad
  }
  
  
  override func viewWillDisappear(_ animated: Bool) {
    
    super.viewWillDisappear(animated)
    
    // Clear first responder
    view.endEditing(true)
    
    // "Save" changes to item
    item.name = nameField.text ?? ""
    item.serialNumber = serialNumberField.text
    if let valueText = valueField.text,
       let value = numberFormatter.number(from: valueText) {
      item.valueInDollars = value.intValue
    } else {
      item.valueInDollars = 0
    }
  }
  
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true }
  
  
  func buttonConfigure(){
    changeDateButton.layer.borderColor = UIColor.black.cgColor
    changeDateButton.layer.borderWidth = 2
    changeDateButton.layer.cornerRadius = 10
  }
  
  
  ////Gold Challange
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  //    var theDate = segue.destination as? DateVC {
  //      dateLabel.text = "\(theDate?.datePicker.date)"
  //    }
  //  }
  
}
