
import UIKit

class ChangeDateViewController: UIViewController {
  
  @IBOutlet var datePicker: UIDatePicker!
  
  var item : Item!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    datePicker.datePickerMode = .dateAndTime
    datePicker.date = item.dateCreated
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    item.dateCreated = datePicker.date
  }

}

